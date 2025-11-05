/*
 * tasks.c
 *
 * Created: 9/15/2022 5:43:12 PM
 *  Author: a00538665
 */ 

#include <asf.h>
#include <stdio.h>
#include "FreeRTOS.h"
#include "task.h"
#include "apptasks.h"
#include "queue.h"
#include <string.h>

/* Modbus Includes */
#include "mbport.h"

/* Temperature Reading Includes */
#include "TempReadingMain.h"

#include "spi_mutex.h"
#include "FreeRTOSConfig.h"

/* Display Handler Includes */
#include "HexModule.h"

/* FreeRTOS+TCP includes. */
#include "FreeRTOS_IP.h"
#include "FreeRTOS_Sockets.h"
#include "FreeRTOS_tcp_server.h"
#include "FreeRTOS_DHCP.h"
#include "FreeRTOSIPConfig.h"
/*
/* FreeRTOS+FAT includes. */
#include "ff_stdio.h"
#include "ff_ramdisk.h"
#include "ff_sddisk.h"
#include "ff_file.h"

#include "cJSON.h"

#include "Button_Handler.h"
#include "Setpoint_Handler.h"
#include "FreeRTOS_HTTP_commands.h"

/* The default IP and MAC address used by the device.  The address configuration
defined here will be used if ipconfigUSE_DHCP is 0, or if ipconfigUSE_DHCP is
1 but a DHCP server could not be contacted.  See the online documentation for
more information.  http://www.FreeRTOS.org/tcp */
static uint8_t ucIPAddress[ 4 ] = { configIP_ADDR0, configIP_ADDR1, configIP_ADDR2, configIP_ADDR3 };
static uint8_t ucNetMask[ 4 ] = { configNET_MASK0, configNET_MASK1, configNET_MASK2, configNET_MASK3 };
static uint8_t ucGatewayAddress[ 4 ] = { configGATEWAY_ADDR0, configGATEWAY_ADDR1, configGATEWAY_ADDR2, configGATEWAY_ADDR3 };
static uint8_t ucDNSServerAddress[ 4 ] = { configDNS_SERVER_ADDR0, configDNS_SERVER_ADDR1, configDNS_SERVER_ADDR2, configDNS_SERVER_ADDR3 };

/* MAC address directory */
#define MAC_ADDRESS_DIR "/websrc/mac.json"

/* Maximum size of mac.json */
#define MAX_SIZE_OF_MAC_ADDRESS_DIR 100

/** MAC address definition.  The MAC address must be unique on the network. */
uint8_t ETHERNET_CONF_ETHADDR0 = configMAC_ADDR0;
uint8_t ETHERNET_CONF_ETHADDR1 = configMAC_ADDR1;
uint8_t ETHERNET_CONF_ETHADDR2 = configMAC_ADDR2;
uint8_t ETHERNET_CONF_ETHADDR3 = configMAC_ADDR3;
uint8_t ETHERNET_CONF_ETHADDR4 = configMAC_ADDR4;
uint8_t ETHERNET_CONF_ETHADDR5 = configMAC_ADDR5;

static uint8_t ucMACAddress[ 6 ] = { configMAC_ADDR0, configMAC_ADDR1, configMAC_ADDR2, configMAC_ADDR3, configMAC_ADDR4, configMAC_ADDR5 };

uint8_t ipconfigUSE_DHCP = 0;
	
/* FTP and HTTP servers execute in the TCP server work task. */
#define mainTCP_SERVER_TASK_PRIORITY	( tskIDLE_PRIORITY + 1 )
#define	mainTCP_SERVER_STACK_SIZE		( configMINIMAL_STACK_SIZE * 12 )
/* The SD card is mounted in the root of the file system. */
#define mainHAS_SDCARD					1
#define mainSD_CARD_DISK_NAME			"/"
#define mainSD_CARD_TESTING_DIRECTORY	"/fattest"

/*
 * Register a set of example CLI commands that interact with the file system.
 * These are very basic.
 */
extern void vRegisterFileSystemCLICommands( void );

/*
 * Register a set of example CLI commands that interact with the TCP/IP stack.
 */
extern void vRegisterTCPCLICommands( void );

/*
 * Register the standard CLI examples, which will include the taskstats command
 * if configUSE_STATS_FORMATTING_FUNCTIONS is set to 1 in FreeRTOSConfig.h.
 */
extern void vRegisterSampleCLICommands( void );

/* Handle of the task that runs the FTP and HTTP servers. */
TaskHandle_t xServerWorkTaskHandle = NULL;

/* Handle of the setpoint handler task. */
extern TaskHandle_t setpointTaskHandle;

/* Handle of the display handler task. */
extern TaskHandle_t displayHandlerHandle;

/* Handle of the temperature reading processor task. */
extern TaskHandle_t readingProcessorHandle;

/* The SD card disk. */
static FF_Disk_t *pxDisk = NULL;

cJSON_Hooks hooks = { pvPortMalloc, vPortFree };

void startTasks()
{
	cJSON_InitHooks(&hooks); //This must be initialized before any JSON files can be accessed from the SD card
	
	initSpiInterface(); // Initializes SPI master and slave settings
	
	spiMutexInit(); //Always initialize spiMutexInit before using any slave devices
	
	initializeTCReader(); // Spi device initialized here
	
	initializeDisplay(); //start the display handler
	
	initializeBtnDriver(); //start the button command logic
	
	initSetpointHandler(); //initiate setpoint handling
	
		/* Create the task that handles the FTP and HTTP servers.  This will
	initialise the file system then wait for a notification from the network
	event hook before creating the servers.  The task is created at the idle
	priority, and sets itself to mainTCP_SERVER_TASK_PRIORITY after the file
	system has initialised. */
	xTaskCreate( prvServerWorkTask, "SvrWork", mainTCP_SERVER_STACK_SIZE, NULL, tskIDLE_PRIORITY, &xServerWorkTaskHandle );
	
	// Create a Task to Handle Button Press and Light LED
	xTaskCreate(myHeartBeatTask,             // Heartbeat that shows RTOS is running
	"My Heartbeat Task",                     // Task Name
	configMINIMAL_STACK_SIZE,                // Task Stack Size
	NULL,                                    // Any Parameters Passed to Task
	1,                                       // Task Priority
	NULL);                                   // Place to store Task Handle
}

void myHeartBeatTask(void * pvParamaters)
{
	while (true)
	{
		ioport_set_pin_level(LED_0_PIN, LED_0_ACTIVE);
		vTaskDelay(500);
		ioport_set_pin_level(LED_0_PIN, !LED_0_ACTIVE);
		vTaskDelay(500);
	}
}

/*-----------------------------------------------------------*/
// This detects the SD card presence. It's not actually needed
// since the SD card is eMMC and cannot be removed
/*-----------------------------------------------------------*/

static void prvSDCardDetect( void )
{
	static BaseType_t xWasPresent = pdTRUE, xIsPresent;
	FF_IOManager_t *pxIOManager;
	BaseType_t xResult;

	//  The Xplained Pro board does not define a pin for detecting the remove of
	// the SD card, so check for the card periodically in software.
	xIsPresent = FF_SDDiskDetect( pxDisk );
	if( xWasPresent != xIsPresent )
	{
		if( xIsPresent == pdFALSE )
		{
			FreeRTOS_printf( ( "SD-card now removed (%ld -> %ld)\n", xWasPresent, xIsPresent ) );

			// _RB_ Preferably the IO manager would not be exposed to the
			// application here, but instead FF_SDDiskUnmount() would, which takes
			// the disk as its parameter rather than the IO manager, would itself
			// invalidate any open files before unmounting the disk.
			// pxIOManager = sddisk_ioman( pxDisk );

			if( pxIOManager != NULL )
			{
				// Invalidate all open file handles so they will get closed by
				// the application.
				FF_Invalidate( pxIOManager );
				FF_SDDiskUnmount( pxDisk );
			}
		}
		else
		{
			FreeRTOS_printf( ( "SD-card now present (%ld -> %ld)\n", xWasPresent, xIsPresent ) );
			configASSERT( pxDisk );

			xResult = FF_SDDiskMount( pxDisk );

			if( xResult > 0 )
			{
				FF_PRINTF( "FF_SDDiskMount: SD-card OK\n" );
				FF_SDDiskShowPartition( pxDisk );
			}
			else
			{
				FF_PRINTF( "FF_SDDiskMount: SD-card FAILED\n" );
			}
		}

		xWasPresent = xIsPresent;
	}
}

void updateNetworkSettings()
{
	FF_FILE *settingsFile = ff_fopen( SETTINGS_DIR, "r" );
	char * settings_json_buffer = (char *) pvPortMalloc(MAX_SIZE_OF_SETTINGS);

	if(settingsFile != NULL)
	{
		int sizeOfFile = ff_filelength(settingsFile);
		ff_fread(settings_json_buffer, 1, sizeOfFile, settingsFile);
		cJSON * json_object = cJSON_Parse(settings_json_buffer);
		//now its time to parse for network settings
		if(json_object != NULL)
		{
			char * rbDHCP = cJSON_GetStringValue(cJSON_GetObjectItem(json_object, "rbDHCP"));
			char * ip_addr = cJSON_GetStringValue(cJSON_GetObjectItem(json_object, "ip_addr"));
			char * submask = cJSON_GetStringValue(cJSON_GetObjectItem(json_object, "submask"));
			char * gw_addr = cJSON_GetStringValue(cJSON_GetObjectItem(json_object, "gw_addr"));
			char * pdns_addr = cJSON_GetStringValue(cJSON_GetObjectItem(json_object, "pdns_addr"));
			char * ipv6_setting = cJSON_GetStringValue(cJSON_GetObjectItem(json_object, "ipv6_setting"));
			char * ipv6_addr = cJSON_GetStringValue(cJSON_GetObjectItem(json_object, "ipv6_addr"));
			char * prefix_len = cJSON_GetStringValue(cJSON_GetObjectItem(json_object, "prefix_len"));
			char * ipv6_gateway = cJSON_GetStringValue(cJSON_GetObjectItem(json_object, "ipv6_gateway"));
			
			//settings are obtained, now its time to update the settings
			if (strcmp(rbDHCP, "disable") == 0)
			{
				if(ip_addr != NULL)
				{
					ucIPAddress[0] = atoi(strtok(ip_addr, "."));
					ucIPAddress[1] = atoi(strtok(NULL, "."));
					ucIPAddress[2] = atoi(strtok(NULL, "."));
					ucIPAddress[3] = atoi(strtok(NULL, "."));
				}
				
				if(submask != NULL)
				{
					ucNetMask[0] = atoi(strtok(submask, "."));;
					ucNetMask[1] = atoi(strtok(NULL, "."));;
					ucNetMask[2] = atoi(strtok(NULL, "."));;
					ucNetMask[3] = atoi(strtok(NULL, "."));
				}
				if(gw_addr != NULL)
				{
					ucGatewayAddress[0] = atoi(strtok(gw_addr, "."));
					ucGatewayAddress[1] = atoi(strtok(NULL, "."));
					ucGatewayAddress[2] = atoi(strtok(NULL, "."));
					ucGatewayAddress[3] = atoi(strtok(NULL, "."));
				}
				if(pdns_addr != NULL)
				{
					ucDNSServerAddress[0] = atoi(strtok(pdns_addr, "."));
					ucDNSServerAddress[1] = atoi(strtok(NULL, "."));
					ucDNSServerAddress[2] = atoi(strtok(NULL, "."));
					ucDNSServerAddress[3] = atoi(strtok(NULL, "."));
				}
			}
			else
			{
				ipconfigUSE_DHCP = 1;
			}
			cJSON_Delete(json_object);
		}
		FF_Close(settingsFile);
		settingsFile = NULL;
	}
	vPortFree(settings_json_buffer);
}

void updateMACAddress()
{
	FF_FILE *macFile = ff_fopen( MAC_ADDRESS_DIR, "r" );
	char * mac_json_buffer = (char *) pvPortMalloc(MAX_SIZE_OF_MAC_ADDRESS_DIR);

	if(macFile != NULL)
	{
		int sizeOfFile = ff_filelength(macFile);
		ff_fread(mac_json_buffer, 1, sizeOfFile, macFile);
		cJSON * json_object = cJSON_Parse(mac_json_buffer);
		//now its time to parse for the mac address
		if(json_object != NULL)
		{
			char * mac_addr = cJSON_GetStringValue(cJSON_GetObjectItem(json_object, "mac_addr"));
						
			//mac address obtained, now its time to update the setting

			if(mac_addr != NULL)
			{
				char * endPtr;
				ucMACAddress[0] = (uint8_t) strtol(mac_addr, &endPtr, 16);
				endPtr++;
				ucMACAddress[1] = (uint8_t) strtol(endPtr, &endPtr, 16);
				endPtr++;			   
				ucMACAddress[2] = (uint8_t) strtol(endPtr, &endPtr, 16);
				endPtr++;			   
				ucMACAddress[3] = (uint8_t) strtol(endPtr, &endPtr, 16);
				endPtr++;			   
				ucMACAddress[4] = (uint8_t) strtol(endPtr, &endPtr, 16);
				endPtr++;			   
				ucMACAddress[5] = (uint8_t) strtol(endPtr, NULL, 16); 
				
				//this has to be updated as well so the mac driver runs as expected
				
				ETHERNET_CONF_ETHADDR0 = ucMACAddress[0];
				ETHERNET_CONF_ETHADDR1 = ucMACAddress[1];
				ETHERNET_CONF_ETHADDR2 = ucMACAddress[2];
				ETHERNET_CONF_ETHADDR3 = ucMACAddress[3];
				ETHERNET_CONF_ETHADDR4 = ucMACAddress[4];
				ETHERNET_CONF_ETHADDR5 = ucMACAddress[5];
			}

			cJSON_Delete(json_object);
		}
		FF_Close(macFile);
		macFile = NULL;
	}
	vPortFree(mac_json_buffer);
}

static void prvServerWorkTask( void *pvParameters )
{
	BaseType_t success = pdFALSE;
	TCPServer_t *pxTCPServer = NULL;
	const TickType_t xInitialBlockTime = pdMS_TO_TICKS( 5000UL );
	const TickType_t fileSystemInitDelay = pdMS_TO_TICKS( 100L );

	/* A structure that defines the servers to be created. */
	static const struct xSERVER_CONFIG xServerConfiguration[] =
	{
		/* Server type,		port number,	backlog, 	root dir. */
		{ eSERVER_HTTP, 	80, 			12, 		configHTTP_ROOT },

		/* Server type,		port number,	backlog, 	root dir. */
		{ eSERVER_FTP,  	21, 			12, 		"" }
	};


	/* Remove compiler warning about unused parameter. */
	( void ) pvParameters;
	
	for (int i = 0; i < 200; i++)
	{
		if( ( pxDisk = FF_SDDiskInit( mainSD_CARD_DISK_NAME ) ) != NULL )
		{
			//update network settings here
			updateNetworkSettings();	
			updateMACAddress();	
			success = pdTRUE;
			break;
		}
		vTaskDelay( fileSystemInitDelay );
	}
	
	FreeRTOS_printf( ( "FreeRTOS_IPInit\n" ) );

	FreeRTOS_IPInit( ucIPAddress, ucNetMask, ucGatewayAddress, ucDNSServerAddress, ucMACAddress ); // Spi device initialized here
	
	xTaskNotifyGive( setpointTaskHandle ); //lets the setpoint handler know that the file system is okay to use
	xTaskNotifyGive( readingProcessorHandle ); //lets the temp reader know that the file system is okay to use
		
	if (success != pdTRUE)
	{
		vTaskDelete(NULL); //delete this task if the sd card is broken. Web server and ftp server need sd card to work
	}

	/* A disk is going to be created, so register the example file CLI
	commands (which are very basic). */
	vRegisterFileSystemCLICommands();

	/* The priority of this task can be raised now the disk has been
	initialised. */
	vTaskPrioritySet( NULL, mainTCP_SERVER_TASK_PRIORITY );

	/* Wait until the network is up before creating the servers.  The
	notification is given from the network event hook. */
	ulTaskNotifyTake( pdTRUE, portMAX_DELAY );

	/* Create the servers defined by the xServerConfiguration array above. */
	pxTCPServer = FreeRTOS_CreateTCPServer( xServerConfiguration, sizeof( xServerConfiguration ) / sizeof( xServerConfiguration[ 0 ] ) );
	configASSERT( pxTCPServer );

	for( ;; )
	{
		/* Run the HTTP and/or FTP servers, as configured above. */
		FreeRTOS_TCPServerWork( pxTCPServer, xInitialBlockTime );
	}
}
/*-----------------------------------------------------------*/

//This thread only exists to kill other threads safely. When its done, it will self terminate

BaseType_t deleted = pdFALSE;

void deleteTask( void *pvParameters )
{
	if(deleted != pdTRUE)
	{
		deleted = pdTRUE;
		
		deleteTCReader();
		closeDisplay();
		closeDownModbus();
		closeSetpointHandler();
		deleteBtnDriver();
		
	}
	vTaskDelete(NULL);
}