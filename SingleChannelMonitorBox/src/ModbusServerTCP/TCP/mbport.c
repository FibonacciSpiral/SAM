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
QueueHandle_t mbToDisplayUpdateTempSystem;
QueueHandle_t mbUpdateSetpointQueue;
static eMBEventType eMailBoxEvent;

static Socket_t xListeningSocket = NULL; //These are the client listener and connection instance sockets.

static SemaphoreHandle_t xSemaphore = NULL;
static SemaphoreHandle_t modbusHoldingSemaphore = NULL;

static bool delete = false;
static bool delete_complete = false;
													

#define	MB_LISTENER_STACK_SIZE				( configMINIMAL_STACK_SIZE * 2 )
#define	MB_CONNECT_INSTANCE_STACK_SIZE		( configMINIMAL_STACK_SIZE * 8 )

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
   Once a connection is established, a new task is spawned to handle the connection. If any
   connection is currently running, that connection is severed. */

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
		xTaskCreate( mbServerConnectionInstance, "MBConnectionHandler", MB_CONNECT_INSTANCE_STACK_SIZE, ( void * ) xConnectedSocket, mainMB_TASK_PRIORITY, &socketInstanceHandle );
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

	struct receiveStructure rxContainer;
	struct transmitStructure txContainer;

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
		lBytes = FreeRTOS_recv( xConnectedSocket, rxContainer.rxBuffer, sizeof(rxContainer.rxBuffer), 0 );

		if( lBytes >= 0 )
		{
			if(lBytes > 0) //only send data if there's at least one byte
			{
				rxContainer.size = lBytes;
				if(receiveMessageQueue != NULL)
					xQueueSend(receiveMessageQueue, &rxContainer, 100); //post the packet to the rx queue so that it can be processed by the Poll task
				xMBPortEventPost(EV_FRAME_RECEIVED); //let the main server task know that a frame was received
			}
		}
		else
		{
			/* Socket closed? */
			break;
		}
		if(transmitResponseQueue != NULL)
		{
			if(xQueueReceive(transmitResponseQueue, &txContainer, 1) == pdTRUE)
			{
				if (txContainer.txBuffer != NULL)
				{
					int lSent = 0;
					int lTotalSent = 0;
					/* Call send() until all the data has been sent. */
					while( ( lSent >= 0 ) && ( lTotalSent < txContainer.size ) )
					{
						lSent = FreeRTOS_send( xConnectedSocket, txContainer.txBuffer, txContainer.size - lTotalSent, 0 );
						lTotalSent += lSent;
					}
					txContainer.txBuffer = NULL;
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
		if( FreeRTOS_recv( xConnectedSocket, rxContainer.rxBuffer, ipconfigTCP_MSS, 0 ) < 0 )
		{
			break;
		}
	} while( ( xTaskGetTickCount() - xTimeOnShutdown ) < pdMS_TO_TICKS( 5000 ) );

	/* Finished with the socket, buffer, the task. */
	xQueueReset(socketCommandQueue);
	xQueueReset(transmitResponseQueue);
	xQueueReset(receiveMessageQueue);
	
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
	receiveMessageQueue = xQueueCreate(5, sizeof(struct receiveStructure)); //creating a queue that will allow the ethernet packet from the client to be shared between tasks
	transmitResponseQueue = xQueueCreate(5, sizeof(struct transmitStructure)); //creating a queue that will allow responses to be sent back to the client
	socketCommandQueue = xQueueCreate(5, sizeof(BOOL)); //creating a queue that will allow external control of the listening socket and any ongoing connections
	mbToDisplayUpdateTempSystem = xQueueCreate(5, sizeof(bool));
	mbUpdateSetpointQueue = xQueueCreate(5, sizeof(uint16_t));
	xSemaphore = xSemaphoreCreateMutex();
	modbusHoldingSemaphore = xSemaphoreCreateMutex();
	xTaskCreate( mbConnectionListeningTask, "mbConnectionListener", MB_LISTENER_STACK_SIZE, ( void * ) usTCPPort, mainMB_TASK_PRIORITY, &socketListenerHandle );
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
	xQueueReset(mbToDisplayUpdateTempSystem);
	xQueueReset(mbUpdateSetpointQueue);
	
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
	vQueueDelete(mbToDisplayUpdateTempSystem);
	vQueueDelete(mbUpdateSetpointQueue);
	
	vSemaphoreDelete (xSemaphore);
	xSemaphore = NULL;
	
	vSemaphoreDelete (modbusHoldingSemaphore);
	modbusHoldingSemaphore = NULL;

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
	struct receiveStructure container;
	if(receiveMessageQueue != NULL)
	{
		if (xQueueReceive(receiveMessageQueue, &container, ( TickType_t ) 10) == pdPASS)
		{
			*ppucMBTCPFrame = container.rxBuffer;
			*usTCPLength = container.size;
				
			return TRUE;
		}
	}
	
	return FALSE;
}

BOOL xMBTCPPortSendResponse( const UCHAR *pucMBTCPFrame, USHORT usTCPLength )
{
	if(transmitResponseQueue != NULL)
	{
		struct transmitStructure txContainer = { pucMBTCPFrame, usTCPLength };

		if (xQueueSend(transmitResponseQueue, &txContainer, 100) != pdTRUE)
		{
			return FALSE;
		}
		return TRUE;
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
            }
            while( xStatus == MB_ENOERR );
        }
        /* An error occurred. Maybe we can restart. */
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

eMBErrorCode applicationUpdateModbusReg( uint16_t data, USHORT usAddress)
{
	bool finished = false;
	eMBErrorCode    eStatus = MB_ENOERR;
	
	if(modbusHoldingSemaphore != NULL)
	{
		while(finished != true)
		{
			if( xSemaphoreTake( modbusHoldingSemaphore, ( TickType_t ) 10 ) == pdTRUE )
			{
				usRegHoldingBuf[usAddress - usRegHoldingStart] = data;
				xSemaphoreGive( modbusHoldingSemaphore );
				finished = true;
			}
			else
			{
				vTaskDelay(2); //wait a second before trying again
			}
		}
	}
	else
	{
		eStatus = MB_ENORES;
	}

	return eStatus;
}

//This function will analyze which register is being updated and execute any logic associated

BaseType_t processHoldingRegUpdate(USHORT usAddress, UCHAR * pucDataBuffer)
{
	switch (usAddress)
	{
		case TEMP_SYSTEM_HOLDING_REG:
		{
			bool system = CELSIUS;
			UCHAR temp_system = pucDataBuffer[1];
			if (temp_system == 0x0c)
			{
				system = CELSIUS;
				xQueueSend(mbToDisplayUpdateTempSystem, &system, 10);
				return pdTRUE;
			}
					
			if (temp_system == 0x0f)
			{
				system = FAHRENHEIT;
				xQueueSend(mbToDisplayUpdateTempSystem, &system, 10);
				return pdTRUE;
			}
					
			return pdFALSE;
		}
		break;
		
		case SETPOINT_HOLDING_REG:
		{
			uint16_t setpoint = (uint16_t) (pucDataBuffer[1] | (pucDataBuffer[0] << 8));
			if ((setpoint >= 0) && (setpoint < 1000))
			{
				xQueueSend(mbUpdateSetpointQueue, &setpoint, 10);
				return pdTRUE;
			}
			return pdFALSE;
		}
		break;
		
		default:
		return pdTRUE; //if the write is for some other register, go ahead and proceed
		break;
	}
	return pdTRUE;
}

eMBErrorCode
eMBRegHoldingCB( UCHAR * pucRegBuffer, USHORT usAddress, USHORT usNRegs, eMBRegisterMode eMode )
{
    eMBErrorCode    eStatus = MB_ENOERR;
    int             iRegIndex;
	
	bool finished = false;
	
	if(modbusHoldingSemaphore != NULL)
	{
		while(finished != true)
		{
			if( xSemaphoreTake( modbusHoldingSemaphore, ( TickType_t ) 10 ) == pdTRUE )
			{
				if( ( usAddress >= REG_HOLDING_START ) && ( usAddress + usNRegs <= REG_HOLDING_START + REG_HOLDING_NREGS ) )
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
							BaseType_t okay_to_update = processHoldingRegUpdate(iRegIndex + usRegHoldingStart, pucRegBuffer);
							if (okay_to_update == pdTRUE)
							{
								usRegHoldingBuf[iRegIndex] = *pucRegBuffer++ << 8;
								usRegHoldingBuf[iRegIndex] |= *pucRegBuffer++;
							}
							iRegIndex++;
							usNRegs--;
						}
					}
				}
				else
				{
					eStatus = MB_ENOREG;
				}

				xSemaphoreGive( modbusHoldingSemaphore );
				finished = true;
			}
			else
			{
				vTaskDelay(2); //wait a second before trying again
			}
		}
	}
	else
	{
		eStatus = MB_ENORES;
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
