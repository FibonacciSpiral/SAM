/*
 * FreeRTOS V202112.00
 * Copyright (C) 2020 Amazon.com, Inc. or its affiliates.  All Rights Reserved.
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy of
 * this software and associated documentation files (the "Software"), to deal in
 * the Software without restriction, including without limitation the rights to
 * use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
 * the Software, and to permit persons to whom the Software is furnished to do so,
 * subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in all
 * copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
 * FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
 * COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
 * IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
 * CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 *
 * http://www.FreeRTOS.org
 * http://aws.amazon.com/freertos
 *
 * 1 tab == 4 spaces!
 */

/******************************************************************************
 * This project provides two demo applications.  A simple blinky style project,
 * and a more comprehensive test and demo application.  The
 * mainCREATE_SIMPLE_BLINKY_DEMO_ONLY setting (defined in this file) is used to
 * select between the two.  The simply blinky demo is implemented and described
 * in main_blinky.c.  The more comprehensive test and demo application is
 * implemented and described in main_full.c.
 *
 * This file implements the code that is not demo specific, including the
 * hardware setup and FreeRTOS hook functions.
 *
 */

/* TO DO before product release!
*  Adjust heap and memory characteristics to match the processor if different from prototype
*  If different ethernet chip is used, adjust PHY and network interface layer
*/

/* Standard includes. */
#include <stdio.h>
#include <ctype.h>

/* Demo application includes. */
//#include "TCPEchoClient_SingleTasks.h"

#include "hr_gettime.h"

/* Atmel includes. */
#include "board.h"
#include "conf_board.h"
#include "asf.h"
#include "apptasks.h"

/* FreeRTOS+TCP includes. */
#include "FreeRTOS_IP.h"
/*
/* FreeRTOS+FAT includes. */
#include "ff_stdio.h"

/* Modbus Includes */
#include "mbport.h"

void vLoggingPrintf( const char *pcFormatString, ... )
{
	//do nothing since logging isn't available
}



/* Set the following constants to 1 or 0 to define which tasks to include and
exclude.  A WIDER RANGE OF EXAMPLES ARE AVAILABLE IN THE WIN32 DEMO:
http://www.freertos.org/FreeRTOS-Plus/FreeRTOS_Plus_TCP/examples_FreeRTOS_simulator.html

mainCREATE_UDP_CLI_TASKS:  When set to 1 a command console that uses a UDP port
for input and output is created using FreeRTOS+CLI.  The port number used is set
by the mainUDP_CLI_PORT_NUMBER constant above.  A dumb UDP terminal such as YAT
can be used to connect.
See http://www.freertos.org/FreeRTOS-Plus/FreeRTOS_Plus_TCP/UDP_CLI.html

mainCREATE_TCP_ECHO_TASKS_SINGLE:  When set to 1 a set of tasks are created that
send TCP echo requests to the standard echo port (port 7), then wait for and
verify the echo reply, from within the same task (Tx and Rx are performed in the
same RTOS task).  The IP address of the echo server must be configured using the
configECHO_SERVER_ADDR0 to configECHO_SERVER_ADDR3 constants in
FreeRTOSConfig.h.
See http://www.freertos.org/FreeRTOS-Plus/FreeRTOS_Plus_TCP/TCP_Echo_Clients.html

mainCREATE_SIMPLE_TCP_ECHO_SERVER:  When set to 1 FreeRTOS tasks are used with
FreeRTOS+TCP to create a TCP echo server.  Echo requests can be sent to the
FreeRTOS+TCP using a tool such as EchoTool https://github.com/PavelBansky/EchoTool
(a pre-built binary is available).
See http://www.freertos.org/FreeRTOS-Plus/FreeRTOS_Plus_TCP/TCP_Echo_Server.html
*/
#define mainCREATE_UDP_CLI_TASKS				0
#define mainCREATE_TCP_ECHO_CLIENT_TASKS_SINGLE	0
#define mainCREATE_SIMPLE_TCP_ECHO_SERVER		0

/* UDP CLI task parameters --------------------------------------------------
See http://www.freertos.org/FreeRTOS-Plus/FreeRTOS_Plus_TCP/UDP_CLI.html */
#define mainUDP_CLI_TASK_PRIORITY		( tskIDLE_PRIORITY )
#define mainUDP_CLI_PORT_NUMBER			( 5001UL )
#define mainUDP_CLI_TASK_STACK_SIZE		( configMINIMAL_STACK_SIZE * 6 )

/* Simple echo client task parameters ---------------------------------------
See http://www.freertos.org/FreeRTOS-Plus/FreeRTOS_Plus_TCP/TCP_Echo_Clients.html */
#define mainECHO_CLIENT_TASK_STACK_SIZE ( configMINIMAL_STACK_SIZE * 4 )
#define mainECHO_CLIENT_TASK_PRIORITY	( tskIDLE_PRIORITY + 1 )

/* Simple echo server task parameters ---------------------------------------
See http://www.freertos.org/FreeRTOS-Plus/FreeRTOS_Plus_TCP/TCP_Echo_Server.html */
#define mainECHO_SERVER_TASK_PRIORITY	( tskIDLE_PRIORITY + 1 )
#define	mainECHO_SERVER_STACK_SIZE		( configMINIMAL_STACK_SIZE * 4 )

/* Other configuration parameters -------------------------------------------*/

/* The period after which the check timer will expire, in ms, provided no errors
have been reported by any of the standard demo tasks.  ms are converted to the
equivalent in ticks using the portTICK_PERIOD_MS constant. */
#define mainCHECK_TIMER_PERIOD_MS			( pdMS_TO_TICKS( 3000UL ) )

/* A block time of zero simply means "don't block". */
#define mainDONT_BLOCK						( 0UL )

/* Define names that will be used for DNS, LLMNR and NBNS searches.  This allows
mainHOST_NAME to be used when the IP address is not known.  For example
"ping RTOSDemo" to resolve RTOSDemo to an IP address then send a ping request. */
#define mainHOST_NAME					"TempMonitor"
#define mainDEVICE_NICK_NAME			"sam4spro"

/* The LED to toggle and the rate at which the LED will be toggled. */
#define mainLED_TOGGLE_PERIOD			pdMS_TO_TICKS( 250 )

/*
 * Just seeds the simple pseudo random number generator.
 */
static void prvSRand( UBaseType_t ulSeed );

/*
 * Miscellaneous initialisation including preparing the logging and seeding the
 * random number generator.
 */
static void prvMiscInitialisation( void );

/* Use by the pseudo random number generator. */
static UBaseType_t ulNextRand;

/* Used to place the heap. */
extern char _estack;
/*
 * Set up the hardware ready to run this demo.
 */
static void prvSetupHardware( void );

static void prvInitialiseHeap( void );

/*
 * Callback function for the timer that toggles an LED.
 */
static void prvLEDTimerCallback( TimerHandle_t xTimer );

/*
 * Starts an interface to FreeRTOS+CLI that uses a UDP port for input and
 * output.
 */
extern void vStartUDPCommandInterpreterTask( uint16_t usStackSize, uint32_t ulPort, UBaseType_t uxPriority );


int main( void )
{

	/* Miscellaneous initialisation including preparing the logging and seeding
	the random number generator. */
	prvMiscInitialisation();
	
	startTasks(); //creates all tasks and initializes interfaces


	/* Start the RTOS scheduler. */
	FreeRTOS_debug_printf( ("vTaskStartScheduler\n") );
	vTaskStartScheduler();

	/* If all is well, the scheduler will now be running, and the following
	line will never be reached.  If the following line does execute, then
	there was insufficient FreeRTOS heap memory available for the idle and/or
	timer tasks	to be created.  See the memory management section on the
	FreeRTOS web site for more details.  http://www.freertos.org/a00111.html */
	for( ;; )
	{
	}
}

/*-----------------------------------------------------------*/

static void prvSetupHardware( void )
{
extern void SystemCoreClockUpdate( void );

	/* ASF function to setup clocking. */
	sysclk_init();

	/* Ensure all priority bits are assigned as preemption priority bits. */
	NVIC_SetPriorityGrouping( 0 );

	/* Atmel library function to setup for the evaluation kit being used. */
	board_init();
}
/*-----------------------------------------------------------*/

void vApplicationMallocFailedHook( void )
{
	/* vApplicationMallocFailedHook() will only be called if
	configUSE_MALLOC_FAILED_HOOK is set to 1 in FreeRTOSConfig.h.  It is a hook
	function that will get called if a call to pvPortMalloc() fails.
	pvPortMalloc() is called internally by the kernel whenever a task, queue,
	timer or semaphore is created.  It is also called by various parts of the
	demo application.  If heap_1.c or heap_2.c are used, then the size of the
	heap available to pvPortMalloc() is defined by configTOTAL_HEAP_SIZE in
	FreeRTOSConfig.h, and the xPortGetFreeHeapSize() API function can be used
	to query the size of free heap space that remains (although it does not
	provide information on how the remaining heap might be fragmented). */
	taskDISABLE_INTERRUPTS();
	for( ;; );
}

void vApplicationIdleHook( void )
{
	/* vApplicationIdleHook() will only be called if configUSE_IDLE_HOOK is set
	to 1 in FreeRTOSConfig.h.  It will be called on each iteration of the idle
	task.  It is essential that code added to this hook function never attempts
	to block in any way (for example, call xQueueReceive() with a block time
	specified, or call vTaskDelay()).  If the application makes use of the
	vTaskDelete() API function (as this demo application does) then it is also
	important that vApplicationIdleHook() is permitted to return to its calling
	function, because it is the responsibility of the idle task to clean up
	memory allocated by the kernel to any task that has since been deleted. */
}
/*-----------------------------------------------------------*/

void vApplicationStackOverflowHook( TaskHandle_t pxTask, char *pcTaskName )
{
	( void ) pcTaskName;
	( void ) pxTask;

	/* Run time stack overflow checking is performed if
	configCHECK_FOR_STACK_OVERFLOW is defined to 1 or 2.  This hook
	function is called if a stack overflow is detected. */
	taskDISABLE_INTERRUPTS();
	for( ;; );
}
/*-----------------------------------------------------------*/

void vApplicationTickHook( void )
{
	/* This function will be called by each tick interrupt if
	configUSE_TICK_HOOK is set to 1 in FreeRTOSConfig.h.  User code can be
	added here, but the tick hook is called from an interrupt context, so
	code must not attempt to block, and only the interrupt safe FreeRTOS API
	functions can be used (those that end in FromISR()).  */

	#if ( mainCREATE_SIMPLE_BLINKY_DEMO_ONLY == 0 )
	{
	extern void vFullDemoTickHook( void );
	
		vFullDemoTickHook();
	}
	#endif /* mainCREATE_SIMPLE_BLINKY_DEMO_ONLY */
}

/*-----------------------------------------------------------*/

void vAssertCalled( const char *pcFile, uint32_t ulLine )
{
volatile uint32_t ulBlockVariable = 0UL;
volatile const char *pcAssertedFileName;
volatile int iAssertedErrno;
volatile uint32_t ulAssertedLine;
volatile FF_Error_t xAssertedFF_Error;

	ulAssertedLine = ulLine;
	iAssertedErrno = stdioGET_ERRNO();
	xAssertedFF_Error = stdioGET_FF_ERROR( );
	pcAssertedFileName = strrchr( pcFile, '/' );

	/* These variables are set so they can be viewed in the debugger, but are
	not used in the code - the following lines just remove the compiler warning
	about this. */
	( void ) ulAssertedLine;
	( void ) iAssertedErrno;
	( void ) xAssertedFF_Error;

	if( pcAssertedFileName == 0 )
	{
		pcAssertedFileName = strrchr( pcFile, '\\' );
	}
	if( pcAssertedFileName != NULL )
	{
		pcAssertedFileName++;
	}
	else
	{
		pcAssertedFileName = pcFile;
	}
	FreeRTOS_printf( ( "vAssertCalled( %s, %ld\n", pcFile, ulLine ) );

	/* Setting ulBlockVariable to a non-zero value in the debugger will allow
	this function to be exited. */
	taskDISABLE_INTERRUPTS();
	{
		while( ulBlockVariable == 0UL )
		{
			__asm volatile( "NOP" );
		}
	}
	taskENABLE_INTERRUPTS();
}
/*-----------------------------------------------------------*/

/* Called by FreeRTOS+TCP when the network connects or disconnects.  Disconnect
events are only received if implemented in the MAC driver. */
void vApplicationIPNetworkEventHook( eIPCallbackEvent_t eNetworkEvent, struct xNetworkEndPoint * pxEndPoint )
{
	uint32_t ulIPAddress, ulNetMask, ulGatewayAddress, ulDNSServerAddress;
	char cBuffer[ 16 ];
	static BaseType_t xTasksAlreadyCreated = pdFALSE;

	FreeRTOS_printf( ( "vApplicationIPNetworkEventHook: event %ld\n", eNetworkEvent ) );

	/* If the network has just come up...*/
	if( eNetworkEvent == eNetworkUp )
	{
		/* Create the tasks that use the IP stack if they have not already been
		created. */
		if( xTasksAlreadyCreated == pdFALSE )
		{
			/* Tasks that use the TCP/IP stack can be created here. */
			/* Let the server work task now it can now create the servers. */
			xTaskNotifyGive( xServerWorkTaskHandle );

			#if( mainCREATE_TCP_ECHO_CLIENT_TASKS_SINGLE == 1 )
			{
				vStartTCPEchoClientTasks_SingleTasks( mainECHO_CLIENT_TASK_STACK_SIZE, mainECHO_CLIENT_TASK_PRIORITY );
			}
			#endif

			#if( mainCREATE_SIMPLE_TCP_ECHO_SERVER == 1 )
			{
				vStartSimpleTCPServerTasks( mainECHO_SERVER_STACK_SIZE, mainECHO_SERVER_TASK_PRIORITY );
			}
			#endif

			/* Register example commands with the FreeRTOS+CLI command
			interpreter via the UDP port specified by the
			mainUDP_CLI_PORT_NUMBER constant.  If the HTTP or FTP servers are
			being created then file system related commands will also be
			registered from the TCP server task. */
			#if( mainCREATE_UDP_CLI_TASKS == 1 )
			{
				vRegisterSampleCLICommands();
				vRegisterTCPCLICommands();
				vStartUDPCommandInterpreterTask( mainUDP_CLI_TASK_STACK_SIZE, mainUDP_CLI_PORT_NUMBER, mainUDP_CLI_TASK_PRIORITY );
			}
			#endif
			
			xTaskCreate( vMBServerTask, "MBTask", mainMB_SERVER_STACK_SIZE, NULL, mainMB_TASK_PRIORITY, &xMBTaskHandle );

			xTasksAlreadyCreated = pdTRUE;
		}
	}
}
/*-----------------------------------------------------------*/

UBaseType_t uxRand( void )
{
const uint32_t ulMultiplier = 0x015a4e35UL, ulIncrement = 1UL;

	/* Utility function to generate a pseudo random number. */

	ulNextRand = ( ulMultiplier * ulNextRand ) + ulIncrement;
	return( ( int ) ( ulNextRand >> 16UL ) & 0x7fffUL );
}
/*-----------------------------------------------------------*/

static void prvSRand( UBaseType_t ulSeed )
{
	/* Utility function to seed the pseudo random number generator. */
	ulNextRand = ulSeed;
}
/*-----------------------------------------------------------*/


const char *pcApplicationHostnameHook( void )
{
	/* Assign the name "rtosdemo" to this network node.  This function will be
	called during the DHCP: the machine will be registered with an IP address
	plus this name. */
	return mainHOST_NAME;
}
/*-----------------------------------------------------------*/

int Basic_stricmp( const char *pc1, const char *pc2 )
{
int iReturn = 0;

	while( *pc1 != 0x00 )
	{
		if( tolower( ( int ) *pc1 ) != tolower( ( int ) *pc2 ) )
		{
			iReturn = 1;
			break;
		}
		else
		{
			pc1++;
			pc2++;
		}
	}

	return iReturn;
}
/*-----------------------------------------------------------*/

BaseType_t xApplicationDNSQueryHook( struct xNetworkEndPoint * pxEndPoint, const char * pcName )
{
BaseType_t xReturn;

	/* Determine if a name lookup is for this node.  Two names are given
	to this node: that returned by pcApplicationHostnameHook() and that set
	by mainDEVICE_NICK_NAME. */
	if( Basic_stricmp( pcName, pcApplicationHostnameHook() ) == 0 )
	{
		xReturn = pdPASS;
	}
	else if( Basic_stricmp( pcName, mainDEVICE_NICK_NAME ) == 0 )
	{
		xReturn = pdPASS;
	}
	else
	{
		xReturn = pdFAIL;
	}

	return xReturn;
}
/*-----------------------------------------------------------*/

uint32_t xGetRunTimeCounterValue( void )
{
static uint64_t ullHiresTime = 0; /* Is always 0? */

	return ( uint32_t ) ( ullGetHighResolutionTime() - ullHiresTime );
}
/*-----------------------------------------------------------*/

time_t FreeRTOS_time( time_t *pxTime )
{
	( void ) pxTime;
	return xTaskGetTickCount() / 1000 + 1425522441ul;
}
/*-----------------------------------------------------------*/

static void prvMiscInitialisation( void )
{
	/* Initilise the SAM system */
	prvSetupHardware();
	pmc_enable_periph_clk(ID_TC0);
	pmc_enable_periph_clk(ID_TC3);
	pmc_enable_periph_clk(ID_SMC);

	#ifdef CONF_BOARD_TWI0
	{
		pmc_enable_periph_clk(ID_TWI0);
	}
	#endif

	#ifdef CONF_BOARD_TWI1
	{
		pmc_enable_periph_clk(ID_TWI1);
	}
	#endif

	pmc_enable_periph_clk(ID_PIOA);
	pmc_enable_periph_clk(ID_PIOB);

	/* Start a TC timer to get a hi-precision time. */
	vStartHighResolutionTimer();

	/* Seed the pseudo random number generator. */
	prvSRand( ( uint32_t ) prvMiscInitialisation );
}
/*-----------------------------------------------------------*/

static void prvLEDTimerCallback( TimerHandle_t xTimer )
{
	/* Prevent compiler warnings about the unused parameter. */
	( void ) xTimer;

	/* An LED is toggle to show that something is alive. */
	ioport_toggle_pin_level( LED0_GPIO );
}
/*-----------------------------------------------------------*/

/* Keep the linker happy. */
int _write( int fd, char* buf, int nbytes )
{
	( void ) fd;
	( void ) buf;
	( void ) nbytes;

	return 0;
}
/*-----------------------------------------------------------*/

/* Keep the linker happy. */
int _read( int fd, char* buf, int nbytes )
{
	( void ) fd;
	( void ) buf;
	( void ) nbytes;

	return 0;
}
/*-----------------------------------------------------------*/

void prvGetRegistersFromStack( uint32_t *pulFaultStackAddress )
{
/* These are volatile to try and prevent the compiler/linker optimising them
away as the variables never actually get used.  If the debugger won't show the
values of the variables, make them global my moving their declaration outside
of this function. */
volatile uint32_t r0;
volatile uint32_t r1;
volatile uint32_t r2;
volatile uint32_t r3;
volatile uint32_t r12;
volatile uint32_t lr; /* Link register. */
volatile uint32_t pc; /* Program counter. */
volatile uint32_t psr;/* Program status register. */

    r0 = pulFaultStackAddress[ 0 ];
    r1 = pulFaultStackAddress[ 1 ];
    r2 = pulFaultStackAddress[ 2 ];
    r3 = pulFaultStackAddress[ 3 ];

    r12 = pulFaultStackAddress[ 4 ];
    lr = pulFaultStackAddress[ 5 ];
    pc = pulFaultStackAddress[ 6 ];
    psr = pulFaultStackAddress[ 7 ];

    /* When the following line is hit, the variables contain the register values. */
    for( ;; );
}

void HardFault_Handler( void )
{
    __asm volatile
    (
        " tst lr, #4                                                \n"
        " ite eq                                                    \n"
        " mrseq r0, msp                                             \n"
        " mrsne r0, psp                                             \n"
        " ldr r1, [r0, #24]                                         \n"
        " ldr r2, handler2_address_const                            \n"
        " bx r2                                                     \n"
        " handler2_address_const: .word prvGetRegistersFromStack    \n"
    );
}


