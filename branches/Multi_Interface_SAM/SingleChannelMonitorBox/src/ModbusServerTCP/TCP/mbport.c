/*
 * mbport.c
 *
 * Created: 9/30/2022 3:49:05 PM
 *  Author: a00538665
 */ 

#include "mb.h"
#include "mbport.h"
#include "mbframe.h"

/* FreeRTOS includes. */
#include "FreeRTOS.h"
#include "task.h"
#include "semphr.h"

/* FreeRTOS+TCP includes. */
#include "FreeRTOS_IP.h"
#include "FreeRTOS_Sockets.h"

#include "HexModule.h"

USHORT   usRegInputStart = REG_INPUT_START;
USHORT   usRegInputBuf[REG_INPUT_NREGS];
USHORT   usRegHoldingStart = REG_HOLDING_START;
USHORT   usRegHoldingBuf[REG_HOLDING_NREGS];
TaskHandle_t xMBTaskHandle = NULL;
TaskHandle_t socketInstanceHandle = NULL;
TaskHandle_t socketListenerHandle = NULL;
static QueueHandle_t xMailbox;
static QueueHandle_t receiveMessageQueue;
static QueueHandle_t transmitResponseQueue;
static QueueHandle_t socketCommandQueue;
static eMBEventType eMailBoxEvent;

static Socket_t xListeningSocket = NULL; //These are the client listener and connection instance sockets.

SemaphoreHandle_t xSemaphore = NULL;

static bool delete = false;
static bool delete_complete = false;
													

#define	MB_LISTENER_STACK_SIZE				( configMINIMAL_STACK_SIZE * 2 )
#define	MB_CONNECT_INSTANCE_STACK_SIZE		( configMINIMAL_STACK_SIZE * 2 )

/* ----------------------- Supporting functions -----------------------------*/
BOOL xMBPortEventInit( void )
{
	xMailbox = xQueueCreate( 1, SYS_MBOX_SIZE);
	if(xMailbox != NULL)
	{
		return TRUE;
	}
	return FALSE;
}

BOOL xMBPortEventPost( eMBEventType eEvent )
{
	eMailBoxEvent = eEvent;
	portBASE_TYPE   xStatus;
	/* Queue must not be full - Otherwise it is an error. */
	if(xMailbox != NULL)
		xStatus = xQueueSend( xMailbox, &eMailBoxEvent, 0 );
	else
		xStatus = pdFALSE;
		
	if(xStatus == pdPASS)
	{
		return TRUE;
	}
	else
	{
		return FALSE;
	}
	
}

BOOL xMBPortEventGet(  /*@out@ */ eMBEventType * eEvent )
{
	    void			*peMailBoxEvent;
	    BOOL			xEventHappend = FALSE;
	    uint32_t		uiTimeSpent;
		void            *ret_msg;
		portBASE_TYPE   xStatus;
		portTickType    xTicksStart, xTicksEnd, xTicksElapsed;
	
		configASSERT( xMailbox != NULL );
		xTicksStart = xTaskGetTickCount(  );
		if(xMailbox != NULL)
			xStatus = xQueueReceive( xMailbox, &ret_msg, pdMS_TO_TICKS( 100 ) );

		if( xStatus == pdTRUE )
		{
			if( &peMailBoxEvent )
			{
				peMailBoxEvent = &ret_msg;
			}
			xTicksEnd = xTaskGetTickCount(  );
			xTicksElapsed = xTicksEnd - xTicksStart;
			uiTimeSpent = xTicksElapsed;
		}
		else
		{
			if( &peMailBoxEvent )
			{
				peMailBoxEvent = NULL;
			}
			uiTimeSpent = SYS_ARCH_TIMEOUT;
		}
					
	if( uiTimeSpent != SYS_ARCH_TIMEOUT )
	{
		*eEvent = *( eMBEventType * ) peMailBoxEvent;
		eMailBoxEvent = EV_READY;
		xEventHappend = TRUE;
	}
	return xEventHappend;
}

/* The only thing this task does is listen for new clients that want to connect with the server.
   Once a connection is established, a new task is spawned to handle the connection. */

static void mbConnectionListeningTask( void *pvParameters )
{
	USHORT mbDefaultPort = (USHORT) pvParameters;
	struct freertos_sockaddr xClient, xBindAddress;
	socklen_t xSize = sizeof( xClient );
	Socket_t xConnectedSocket;
	static const TickType_t xReceiveTimeOut = portMAX_DELAY;
	const BaseType_t xBacklog = 20;

#if( ipconfigUSE_TCP_WIN == 1 )
	WinProperties_t xWinProps;

	/* Fill in the buffer and window sizes that will be used by the socket. */
	xWinProps.lTxBufSize = ipconfigTCP_TX_BUFFER_LENGTH;
	xWinProps.lTxWinSize = 2;
	xWinProps.lRxBufSize = ipconfigTCP_RX_BUFFER_LENGTH;
	xWinProps.lRxWinSize = 2;
#endif /* ipconfigUSE_TCP_WIN */

	/* Attempt to open the socket. */
	xListeningSocket = FreeRTOS_socket( FREERTOS_AF_INET, FREERTOS_SOCK_STREAM, FREERTOS_IPPROTO_TCP );
	configASSERT( xListeningSocket != FREERTOS_INVALID_SOCKET );

	/* Set a time out so accept() will just wait for a connection. */
	FreeRTOS_setsockopt( xListeningSocket, 0, FREERTOS_SO_RCVTIMEO, &xReceiveTimeOut, sizeof( xReceiveTimeOut ) );

	/* Set the window and buffer sizes. */
	#if( ipconfigUSE_TCP_WIN == 1 )
	{
		FreeRTOS_setsockopt( xListeningSocket, 0, FREERTOS_SO_WIN_PROPERTIES, ( void * ) &xWinProps, sizeof( xWinProps ) );
	}
	#endif /* ipconfigUSE_TCP_WIN */

	/* Bind the socket to the port that the client task will send to, then
	listen for incoming connections. */
	xBindAddress.sin_port = mbDefaultPort;
	xBindAddress.sin_port = FreeRTOS_htons( xBindAddress.sin_port );
	FreeRTOS_bind( xListeningSocket, &xBindAddress, sizeof( xBindAddress ) );
	FreeRTOS_listen( xListeningSocket, xBacklog );

	for( ;; )
	{
		/* Wait for a client to connect. */
		xConnectedSocket = FreeRTOS_accept( xListeningSocket, &xClient, &xSize );
		configASSERT( xConnectedSocket != FREERTOS_INVALID_SOCKET );
		vMBTCPPortDisable(); //this will handle any actively running connection
		xQueueReset(socketCommandQueue);
		xQueueReset(transmitResponseQueue);
		xQueueReset(receiveMessageQueue);
		/* Spawn a task to handle the connection. */
		xTaskCreate( mbServerConnectionInstance, "MBConnectionHandler", MB_CONNECT_INSTANCE_STACK_SIZE, ( void * ) xConnectedSocket, tskIDLE_PRIORITY, &socketInstanceHandle );
	}
}
/*-----------------------------------------------------------*/

static void mbServerConnectionInstance( void *pvParameters )
{
	int32_t lBytes, lSent, lTotalSent;
	Socket_t xConnectedSocket;
	static const TickType_t xReceiveTimeOut = pdMS_TO_TICKS( 5000 );
	static const TickType_t xSendTimeOut = pdMS_TO_TICKS( 5000 );
	TickType_t xTimeOnShutdown;
	xConnectedSocket = ( Socket_t ) pvParameters;
	BOOL alive = TRUE;

	struct receiveStructure* rXcontainer = pvPortMalloc(sizeof(struct receiveStructure));
	struct transmitStructure* tXcontainer = NULL;
	rXcontainer->rxBuffer = ( uint8_t * ) pvPortMalloc( MB_PDU_SIZE_MAX + 1);

	FreeRTOS_setsockopt( xConnectedSocket, 0, FREERTOS_SO_RCVTIMEO, &xReceiveTimeOut, sizeof( xReceiveTimeOut ) );
	FreeRTOS_setsockopt( xConnectedSocket, 0, FREERTOS_SO_SNDTIMEO, &xSendTimeOut, sizeof( xSendTimeOut ) );

	for( ;; )
	{
		if(socketCommandQueue != NULL)
			xQueueReceive(socketCommandQueue, &alive, 1);
		if (alive == FALSE)
		{
			break;
		}

		/* Receive data on the socket. */
		lBytes = FreeRTOS_recv( xConnectedSocket, rXcontainer->rxBuffer, ipconfigTCP_MSS, 0 );

		if( lBytes >= 0 )
		{
			if(lBytes > 0) //only send data if there's at least one byte
			{
				rXcontainer->size = lBytes;
				xMBPortEventPost(EV_FRAME_RECEIVED); //let the main server task know that a frame was received
				if(receiveMessageQueue != NULL)
					xQueueSend(receiveMessageQueue, &rXcontainer, 100); //post the packet to the rx queue so that it can be processed by the Poll task
			}
		}
		else
		{
			/* Socket closed? */
			break;
		}
		if(transmitResponseQueue != NULL)
		{
			if(xQueueReceive(transmitResponseQueue, &tXcontainer, 1) == pdTRUE)
			{
				if (tXcontainer != NULL)
				{
					if (tXcontainer->txBuffer != NULL)
					{
						int lSent = 0;
						int lTotalSent = 0;
						/* Call send() until all the data has been sent. */
						while( ( lSent >= 0 ) && ( lTotalSent < tXcontainer->size ) )
						{
							lSent = FreeRTOS_send( xConnectedSocket, tXcontainer->txBuffer, tXcontainer->size - lTotalSent, 0 );
							lTotalSent += lSent;
						}
						vPortFree(tXcontainer->txBuffer);
						tXcontainer->txBuffer = NULL;
					}
					vPortFree(tXcontainer);
					tXcontainer = NULL;
				}
			}
		}
	}

	/* Initiate a shutdown in case it has not already been initiated. */
	FreeRTOS_shutdown( xConnectedSocket, FREERTOS_SHUT_RDWR );

	/* Wait for the shutdown to take effect, indicated by FreeRTOS_recv()
	returning an error. */
	xTimeOnShutdown = xTaskGetTickCount();
	do
	{
		if( FreeRTOS_recv( xConnectedSocket, rXcontainer->rxBuffer, ipconfigTCP_MSS, 0 ) < 0 )
		{
			break;
		}
	} while( ( xTaskGetTickCount() - xTimeOnShutdown ) < pdMS_TO_TICKS( 5000 ) );

	/* Finished with the socket, buffer, the task. */
	xQueueReset(socketCommandQueue);
	xQueueReset(transmitResponseQueue);
	xQueueReset(receiveMessageQueue);

	if ( rXcontainer != NULL)
	{
		if (rXcontainer->rxBuffer != NULL)
		{
			vPortFree( rXcontainer->rxBuffer );
		}
		vPortFree( rXcontainer );
	}

	if (tXcontainer != NULL)
	{
		if (tXcontainer->txBuffer != NULL)
		{
			vPortFree( tXcontainer->txBuffer );
		}
		vPortFree( tXcontainer );
	}
	
	FreeRTOS_closesocket( xConnectedSocket );
	BOOL finished = FALSE;
	if( xSemaphore != NULL )
	{
		while(finished != TRUE)
		{
			if( xSemaphoreTake( xSemaphore, ( TickType_t ) 10 ) == pdTRUE )
			{
				socketInstanceHandle = NULL;
				xSemaphoreGive( xSemaphore );
				finished = TRUE;
			}
			else
			{
				vTaskDelay(2); //wait a second before trying again
			}
		}

	}
	vTaskDelete( NULL );
}
/* ----------------------- TCP port functions -------------------------------*/
BOOL xMBTCPPortInit( USHORT usTCPPort )
{
	receiveMessageQueue = xQueueCreate(5, sizeof(struct receiveStructure *)); //creating a queue that will allow the ethernet packet from the client to be shared between tasks
	transmitResponseQueue = xQueueCreate(5, sizeof(struct transmitStructure *)); //creating a queue that will allow responses to be sent back to the client
	socketCommandQueue = xQueueCreate(5, sizeof(BOOL)); //creating a queue that will allow external control of the listening socket and any ongoing connections
	configASSERT(receiveMessageQueue != NULL);
	configASSERT(transmitResponseQueue != NULL);
	configASSERT(socketCommandQueue != NULL);
	xSemaphore = xSemaphoreCreateMutex();
	xTaskCreate( mbConnectionListeningTask, "mbConnectionListener", MB_LISTENER_STACK_SIZE, ( void * ) usTCPPort, tskIDLE_PRIORITY, &socketListenerHandle );
	return TRUE;
}
/*-----------------------------------------------------------*/
/* Shuts down the current connection and the listening socket */
void vMBTCPPortClose( void )
{
	BOOL alive = FALSE;
	char tempBuffer[ipconfigTCP_MSS] = {'\0'};
	TickType_t xTimeOnShutdown;
	
	//clear the queues
	xQueueReset(socketCommandQueue);
	xQueueReset(transmitResponseQueue);
	xQueueReset(receiveMessageQueue);
	xQueueReset(xMailbox);
	
	vMBTCPPortDisable();
		
	/* Initiate a shutdown in case it has not already been initiated. */
	BaseType_t failure = FreeRTOS_shutdown( xListeningSocket, FREERTOS_SHUT_RDWR );
	/* Wait for the shutdown to take effect, indicated by FreeRTOS_recv()
	returning an error. */
	if (failure == pdFALSE)
	{
		xTimeOnShutdown = xTaskGetTickCount();
		do
		{
			if( FreeRTOS_recv( xListeningSocket, tempBuffer, ipconfigTCP_MSS, 0 ) < 0 )
			{
				break;
			}
		} while( ( xTaskGetTickCount() - xTimeOnShutdown ) < pdMS_TO_TICKS( 5000 ) );
	
		FreeRTOS_closesocket( xListeningSocket );
	}
	
	//delete the queues
	vQueueDelete(socketCommandQueue);
	vQueueDelete(transmitResponseQueue);
	vQueueDelete(receiveMessageQueue);
	vQueueDelete(xMailbox);
	
	vSemaphoreDelete (xSemaphore);
	xSemaphore = NULL;

	vTaskDelete( socketListenerHandle );
	socketListenerHandle = NULL;
}

/* Kills the current connection */
void vMBTCPPortDisable( void )
{	
	BOOL alive = FALSE;
	if( xSemaphore != NULL )
	{
		BOOL finished = FALSE;
		while (finished == FALSE)
		{
			if( xSemaphoreTake( xSemaphore, ( TickType_t ) 10 ) == pdTRUE )
			{
				if(socketInstanceHandle != NULL) //we should not create another connection handling task while one is still being used
				{
					xSemaphoreGive( xSemaphore);
					if(socketCommandQueue != NULL)
						xQueueSend(socketCommandQueue, &alive, 100);
					vTaskDelay(2);       //Give the other thread a chance to terminate
					break;				 //move onto the next while loop
				}
				else
				{
					// The socket instance handle is NULL so we are good
					xSemaphoreGive( xSemaphore);
					return;
				}
			}
			else
			{
				xSemaphoreGive( xSemaphore );
				vTaskDelay(2);
			}
		}

			
		while (finished == FALSE)
		{
			if( xSemaphoreTake( xSemaphore, ( TickType_t ) 10 ) == pdTRUE)
			{
				if(socketInstanceHandle == NULL)
				{
					finished = TRUE;
					xSemaphoreGive(xSemaphore);
				}
			}
			xSemaphoreGive( xSemaphore);
			vTaskDelay(2);
		}
	}
}

BOOL xMBTCPPortGetRequest( UCHAR **ppucMBTCPFrame, USHORT * usTCPLength )
{
	struct receiveStructure * container;
	if(receiveMessageQueue != NULL)
	{
		if (xQueueReceive(receiveMessageQueue, &container, ( TickType_t ) 10) == pdPASS)
		{
			*ppucMBTCPFrame = container->rxBuffer;
			*usTCPLength = container->size;
				
			return TRUE;
		}
	}
	
	return FALSE;
}

BOOL xMBTCPPortSendResponse( const UCHAR *pucMBTCPFrame, USHORT usTCPLength )
{
	if(transmitResponseQueue != NULL)
	{
		struct transmitStructure* tXcontainer = pvPortMalloc(sizeof(struct transmitStructure));
		tXcontainer->txBuffer = ( uint8_t * ) pvPortMalloc( MB_PDU_SIZE_MAX + 1);
		memcpy(tXcontainer->txBuffer, pucMBTCPFrame, usTCPLength);
		tXcontainer->size = usTCPLength;
		if (xQueueSend(transmitResponseQueue, &tXcontainer, 100) != pdTRUE)
		{
			if (tXcontainer != NULL) //free the memory if the send fails
			{
				if (tXcontainer->txBuffer != NULL)
				{
					vPortFree(tXcontainer->txBuffer);
				}
				vPortFree(tXcontainer);
			}
			return FALSE;
		}
		return TRUE; //memory is freed in connection handler
	}
	return FALSE;
}

/*	This is the main task which essentially just initializes the stack and then polls waiting
*	for events to process such as a new message from a client or a request to execute a function  */
void
vMBServerTask( void *arg )
{
    eMBErrorCode    xStatus;
	USHORT currentTemp = 0;
	bool tempSystem = CELSIUS;

    for( ;; )
    {
        if( eMBTCPInit( MB_TCP_PORT_USE_DEFAULT ) != MB_ENOERR )
        {
            fprintf( stderr, "%s: can't initialize modbus stack!\r\n", PROG );
        }
        else if( eMBEnable(  ) != MB_ENOERR )
        {
            fprintf( stderr, "%s: can't enable modbus stack!\r\n", PROG );
        }
        else
        {
            do
            {
				if(delete == true)
				{
					vMBTCPPortClose(); //kill current connection and listening socket
					delete_complete = true;
					vTaskDelete(xMBTaskHandle); //kill the modbus main task
				}
                xStatus = eMBPoll(  );
				if( temperatureQueue != NULL )
				{
					if (xQueueReceive(temperatureQueue, &currentTemp, 0) == pdPASS)
					{
						if (tempSystem == FAHRENHEIT)
						{
							usRegInputBuf[0] = toFahrenheit(currentTemp);
						}
						else
						{
							usRegInputBuf[0] = currentTemp; //temp is always sent over in celsius by default
						}
					}
				}
				if( tempSystemQueue != NULL )
				{
					xQueueReceive(tempSystemQueue, &tempSystem, 0);
				}
            }
            while( xStatus == MB_ENOERR );
        }
        /* An error occured. Maybe we can restart. */
        ( void )eMBDisable(  );
        ( void )eMBClose(  );
    }
}

eMBErrorCode
eMBRegInputCB( UCHAR * pucRegBuffer, USHORT usAddress, USHORT usNRegs )
{
    eMBErrorCode    eStatus = MB_ENOERR;
    int             iRegIndex;

    if( ( usAddress >= REG_INPUT_START )
        && ( usAddress + usNRegs <= REG_INPUT_START + REG_INPUT_NREGS ) )
    {
        iRegIndex = ( int )( usAddress - usRegInputStart );
        while( usNRegs > 0 )
        {
            *pucRegBuffer++ = ( unsigned char )( usRegInputBuf[iRegIndex] >> 8 );
            *pucRegBuffer++ = ( unsigned char )( usRegInputBuf[iRegIndex] & 0xFF );
            iRegIndex++;
            usNRegs--;
        }
    }
    else
    {
        eStatus = MB_ENOREG;
    }
    return eStatus;
}

eMBErrorCode
eMBRegHoldingCB( UCHAR * pucRegBuffer, USHORT usAddress, USHORT usNRegs, eMBRegisterMode eMode )
{
    eMBErrorCode    eStatus = MB_ENOERR;
    int             iRegIndex;

    if( ( usAddress >= REG_HOLDING_START ) &&
        ( usAddress + usNRegs <= REG_HOLDING_START + REG_HOLDING_NREGS ) )
    {
        iRegIndex = ( int )( usAddress - usRegHoldingStart );
        switch ( eMode )
        {
            /* Pass current register values to the protocol stack. */
        case MB_REG_READ:
            while( usNRegs > 0 )
            {
                *pucRegBuffer++ = ( UCHAR ) ( usRegHoldingBuf[iRegIndex] >> 8 );
                *pucRegBuffer++ = ( UCHAR ) ( usRegHoldingBuf[iRegIndex] & 0xFF );
                iRegIndex++;
                usNRegs--;
            }
            break;

            /* Update current register values with new values from the
             * protocol stack. */
        case MB_REG_WRITE:
            while( usNRegs > 0 )
            {
                usRegHoldingBuf[iRegIndex] = *pucRegBuffer++ << 8;
                usRegHoldingBuf[iRegIndex] |= *pucRegBuffer++;
                iRegIndex++;
                usNRegs--;
            }
        }
    }
    else
    {
        eStatus = MB_ENOREG;
    }
    return eStatus;
}

eMBErrorCode
eMBRegCoilsCB( UCHAR * pucRegBuffer, USHORT usAddress, USHORT usNCoils, eMBRegisterMode eMode )
{
    return MB_ENOREG;
}

eMBErrorCode
eMBRegDiscreteCB( UCHAR * pucRegBuffer, USHORT usAddress, USHORT usNDiscrete )
{
    return MB_ENOREG;
}

void closeDownModbus()
{
	delete = true;
	while(delete_complete != true)
	{
		vTaskDelay(1);
	}
}
