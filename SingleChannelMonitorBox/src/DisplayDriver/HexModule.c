/*
 * CFile1.c
 *
 * Created: 10/25/2022 5:55:45 PM
 *  Author: a00538665
 */

/* HexModule.c contains the implementation of the displayHandlerTask
   The primary component of the display are the 7 segment modules (hex modules)
   This module contains functions that make writing to the display very simple
   writeNumToSegBus can be used to write a number to the display.
   
   The number of hexmodules is configurable with the define HEX_MODULE_COUNT in
   the include file. If this number is changed, be sure to create any additional
   hex modules. This cannot be done automatically since the GPIOS needed to
   write numbers to the display must be chosen by the designer.
   
   If new hexmodules are added, be sure to add them to the hex bus also if you
   would like to use writeNumToSegBus.
   
   Furthermore, the display handler task is responsible for the entire logic
   of the display. A state machine is used to control how the display functions.
   The next state of the display is determined by considering the current state
   and what the current command is (default is NONE).
   
   Commands can be received from the button handler task but any task can send
   a command to the display handler provided it has the queue handle. For example,
   the setpoint handler can tell the state machine to go into an alert state
   if the current temperature is in violation of the setpoint.
   
   The display handler task also sends the new setpoint to the setpoint handler
   once one is selected via a queue.
   
   Other things to know about the display handler is that it uses two software
   timers and a queue to control the blink rate of the display during setpoint
   selection. The on and off period timer callback functions simply inform the 
   main task of when it is okay to refresh the display. The blink rate can be
   configured with defines in the include file.

  */


#include "HexModule.h"

static void displayHandlerTask( void *pvParameters );

TaskHandle_t displayHandlerHandle = NULL;

/* Queue handles owned by this module */
QueueHandle_t setpointQueue = NULL;	
QueueHandle_t refreshQueue = NULL;	

/* global delete flag */
static bool delete = false;

/* global delete completion flag */
static bool delete_complete = false;

/*  Software timer handles */
TimerHandle_t onTimerHandle;
TimerHandle_t offTimerHandle;
TimerHandle_t idleDetectionTimerHandle;

/* Queue handles belonging to other modules */
extern QueueHandle_t currentSetpointDisplayQueue;
extern QueueHandle_t displayQueue;
extern QueueHandle_t btnCommandQueue;
extern QueueHandle_t displayToTempReaderTempSystemQueue;
extern QueueHandle_t tempToDisplayTempSystemQueue;
extern QueueHandle_t mbToDisplayUpdateTempSystem;
extern QueueHandle_t mbUpdateSetpointQueue;

//These are the timer callback functions

/* starts first timer that blanks display for a short period */
void beginOffPeriod(TimerHandle_t xTimer)
{
	bool refreshOK = false;
	xQueueSend(refreshQueue, &refreshOK, 0);
	xTimerStart(offTimerHandle, 0); //display is blank until off timer expires
}

/* Begins the period of time during which the display is on and being refreshed at a rapid rate */
void beginOnPeriod(TimerHandle_t xTimer)
{
	bool refreshOK = true;
	xQueueSend(refreshQueue, &refreshOK, 0);
	xTimerStart(onTimerHandle, 0);
}

void sendSaveCommand(TimerHandle_t xTimer)
{
	uint8_t command = SET;
	if(btnCommandQueue != NULL)
		xQueueSend(btnCommandQueue, &command, 0);
}

//end timer callback functions

/* This function will take a gpio idx value and get it ready to be used as
   a digital output that is an input to the seven seg decoder module.
 */
void configureGpio(int gpio)
{
	int flags = PIO_TYPE_PIO_OUTPUT_0;
	if (gpio < 32)
	{
		flags |= PIO_PERIPH_A;
	}
	else if (gpio < 64)
	{
		flags |= PIO_PERIPH_B;
	}
	else if (gpio < 96)
	{
		flags |= PIO_PERIPH_C;
	}
	else
	{
		configASSERT(1==2); //This GPIO is out of bounds! The gpio selected for the seg display must be changed to one that is available
	}
	// seg0
	gpio_configure_pin(gpio, flags);
	#ifdef CONF_BOARD_OLED_UG_2832HSWEG04
	configASSERT(gpio != PIO_PC31_IDX); // Cannot use hex display driver and LCD display at the same time! If this is required, change the gpio used here since LCD uses this gpio
	#endif
	
	#ifdef CONF_BOARD_OLED_UG_2832HSWEG04
	configASSERT(gpio != PIO_PA26_IDX); // Cannot use hex display driver and SIM card at the same time! If this is required, change the gpio used here since the sim card uses this gpio
	configASSERT(gpio != PIO_PA27_IDX);
	#endif
}

void initializeDisplay()
{
	setpointQueue = xQueueCreate(5, sizeof(uint16_t));
	refreshQueue = xQueueCreate(5, sizeof(bool));
	xTaskCreate(displayHandlerTask, "displayHandler", DISPLAY_HANDLER_STACK_SIZE, NULL, tskIDLE_PRIORITY, &displayHandlerHandle);	
}

/* The purpose of this function is to shut down the driver. It is used when either the web or ftp servers are running in order to save RAM */
void closeDisplay()
{
	delete = true;
	while(delete_complete != true)
	{
		vTaskDelay(1);
	}
}

   /* Truth Table for Decoder:

   Inputs   Display
   D C B A |________
   0 0 0 0 |0
   0 0 0 1	|1
   0 0 1 0	|2
   0 0 1 1	|3
   0 1 0 0	|4
   0 1 0 1	|5
   0 1 1 0	|6
   0 1 1 1	|7
   1 0 0 0	|8
   1 0 0 1	|9
   1 0 1 0	|Blank
   1 0 1 1	|Blank
   1 1 0 0	|Blank
   1 1 0 1	|Blank
   1 1 1 0	|Blank
   1 1 1 1	|Blank
   */

/* This function makes it really easy to configure a seven segment module and get it ready to be written to.
   The inputs (Letters A, B, C, D) match up 1 to 1 with the inputs listed in the seven seg decoder truth table.
   It is listed here but is also available in the device datasheet.
 */
hexModule makeHexModule(int A, int B, int C, int D)
{
	configureGpio(A);
	configureGpio(B);
	configureGpio(C);
	configureGpio(D);
	hexModule module = {A, B, C, D};
	return module;
}

/* This function takes a seg module and a number as input and writes that number to the seg. See the device
   truth table for more insight into how the decoding logic works.*/
void writeNumToSeg(hexModule seg, int count)
{
	if (count != BLANK_SEG)
		count %= 10;
		
	int a_gpio = count & 0x01;
	int b_gpio = count & 0x02;
	int c_gpio = count & 0x04;
	int d_gpio = count & 0x08;
	if (a_gpio)
		gpio_set_pin_high(seg.a_gpio);
	else
		gpio_set_pin_low(seg.a_gpio);
		
	if (b_gpio)
		gpio_set_pin_high(seg.b_gpio);
	else
		gpio_set_pin_low(seg.b_gpio);
		
	if (c_gpio)
		gpio_set_pin_high(seg.c_gpio);
	else
		gpio_set_pin_low(seg.c_gpio);
	
	if (d_gpio)
		gpio_set_pin_high(seg.d_gpio);
	else
		gpio_set_pin_low(seg.d_gpio);
}

/* This function uses writeNumToSeg to write a given number to the entire display. */
void writeNumToSegBus(hexModule segBus [], int number)
{
	for (int i = 0; i < HEX_MODULE_COUNT; i++)
	{
		writeNumToSeg(segBus[i], number%10);
		number /=10;
	}
}

/* This function takes advantage of the fact that if a number greater than 0x9 is written to the display,
   that causes the display to blank out. */
void blankDisplay(hexModule segBus [])
{
	for (int i = 0; i < HEX_MODULE_COUNT; i++)
	{
		writeNumToSeg(segBus[i], BLANK_SEG);
	}
}

/* increment and decrement setpoint both intelligently update current_setpoint based on whether the button is pushed momentarily or held down */
void incrementSetpoint(uint16_t * setpoint, hexModule segBus [], int display_max)
{
	xTimerStop(offTimerHandle, 10);
	xTimerStop(onTimerHandle, 10);
	bool state = ioport_get_pin_level(UP_BTN_IDX);
	bool addedTen = false;
	int total_delay = 0;

	do
	{
		vTaskDelay(pdMS_TO_TICKS(50));
		total_delay += 50;
		state = ioport_get_pin_level(UP_BTN_IDX);
		if (total_delay >= 500)
		{
			addedTen = true;
			if (((*setpoint) + 10) <= display_max)
			{
				(*setpoint) += 10;
			}
			else
			{
				(*setpoint) = display_max;
			}
			writeNumToSegBus(segBus, *setpoint);
			total_delay = 0;
		}
	} while (state == false); //asserted)
	
	if (addedTen != true)
	{
		if (((*setpoint) + 1) <= display_max)
		{
			(*setpoint) += 1;
			writeNumToSegBus(segBus, *setpoint);
		}
	}

	xTimerStart(onTimerHandle, 10); //begin blinking
}


/* increment and decrement setpoint both intelligently update current_setpoint based on whether the button is pushed momentarily or held down */
void decrementSetpoint(uint16_t * setpoint, hexModule segBus [], int display_min)
{
	xTimerStop(offTimerHandle, 10);
	xTimerStop(onTimerHandle, 10);
	bool state = ioport_get_pin_level(DOWN_BTN_IDX);
	bool tookAwayTen = false;
	int total_delay = 0;
	do
	{
		vTaskDelay(pdMS_TO_TICKS(50));
		total_delay += 50;
		state = ioport_get_pin_level(DOWN_BTN_IDX);
		if (total_delay >= 500)
		{
			tookAwayTen = true;
			if (((*setpoint) - 10) >= display_min)
			{
				(*setpoint) -= 10;
			}
			else
			{
				(*setpoint) = display_min;
			}
			writeNumToSegBus(segBus, *setpoint);
			total_delay = 0;
		}
	} while (state == false); //asserted)
	
	if(tookAwayTen != true)
	{
		if (((*setpoint) -1) >= display_min)
		{
			(*setpoint) -= 1;
			writeNumToSegBus(segBus, *setpoint);
		}
	}

	xTimerStart(onTimerHandle, 10); //begin blinking
}

static void displayHandlerTask( void *pvParameters )
{
	onTimerHandle = xTimerCreate("blink on timer", BLINK_ON_PERIOD, pdFALSE, (void *) 0, beginOffPeriod);
	offTimerHandle = xTimerCreate("blink off timer", BLINK_OFF_PERIOD, pdFALSE, (void *) 0, beginOnPeriod);
	idleDetectionTimerHandle = xTimerCreate("timeout timer", MAXIMUM_IDLE_PERIOD, pdFALSE, (void *) 0, sendSaveCommand);
	
	uint16_t current_setpoint = 50;
	
	bool okay_to_refresh = false;
	
	hexModule segBus[HEX_MODULE_COUNT];
	
	//How to make a new hex module:
	//makeHexModule(A, B, C, D); // Align GPIOS according to inputs for the truth table for the decoder
	//hexModule seg3 = makeHexModule(PIO_PA2_IDX, PIO_PA26_IDX, PIO_PA27_IDX, PIO_PA28_IDX);
	segBus[0] = makeHexModule(PIO_PB0_IDX, PIO_PB1_IDX, PIO_PC24_IDX, PIO_PC25_IDX); //lsb
	segBus[1] = makeHexModule(PIO_PC20_IDX, PIO_PA16_IDX, PIO_PC29_IDX, PIO_PC30_IDX); //middle
	segBus[2] = makeHexModule(PIO_PC21_IDX, PIO_PC22_IDX, PIO_PC31_IDX, PIO_PA0_IDX); //msb
	
	int DISPLAY_MAX = CELSIUS_MAX_TEMP;
	int DISPLAY_MIN = CELSIUS_MIN_TEMP;
	
	int16_t currentTemp = -1;
	uint8_t current_cmd = NONE;
	BaseType_t currentSetpointReceived = false;
	
	/* State machine variables */
	DISPLAY_STATE current_state = DISPLAY_TEMP;
	DISPLAY_STATE next_state = DISPLAY_TEMP;
	
	/* temperature system setting */
	bool temperature_system = CELSIUS; //default setting
	
	blankDisplay(segBus);
	
	if(tempToDisplayTempSystemQueue != NULL)
		xQueueReceive(tempToDisplayTempSystemQueue, &temperature_system, portMAX_DELAY); //Once the temp system is discovered by the temp reader, then it is immediately sent over
		
	updateDisplayBoundaries(&DISPLAY_MAX, &DISPLAY_MIN, temperature_system);
	
	while(1)
	{
		if (delete == true)
		{
			if(setpointQueue != NULL)
				vQueueDelete(setpointQueue);
			setpointQueue = NULL;
			if(refreshQueue != NULL)
				vQueueDelete(refreshQueue);
			refreshQueue = NULL;
			xTimerDelete(onTimerHandle, 10);
			xTimerDelete(offTimerHandle, 10);
			xTimerDelete(idleDetectionTimerHandle, 10);
			blankDisplay(segBus);
			delete_complete = true;
			vTaskDelete(displayHandlerHandle);
		}
		
		if(mbToDisplayUpdateTempSystem != NULL)
		{
			bool new_temp_system = temperature_system;
			if (xQueueReceive(mbToDisplayUpdateTempSystem, &new_temp_system, 0) == pdTRUE)
			{
				if(new_temp_system != temperature_system)
				{
					temperature_system = new_temp_system; //update the RAM copy of this variable
					if(displayToTempReaderTempSystemQueue != NULL)		//inform the temp processor of the new temperature system, it will inform other modules
					xQueueSend(displayToTempReaderTempSystemQueue, &temperature_system, 10);
					updateDisplayBoundaries(&DISPLAY_MAX, &DISPLAY_MIN, temperature_system);
				}
			}
		}
		
		if(mbUpdateSetpointQueue != NULL)
		{
			uint16_t new_setpoint = current_setpoint;
			if (xQueueReceive(mbUpdateSetpointQueue, &new_setpoint, 0) == pdTRUE)
			{
				if (new_setpoint != current_setpoint)
				{
					if ((new_setpoint <= DISPLAY_MAX) && (new_setpoint >= DISPLAY_MIN))
					{
						//update the setpoint
						current_setpoint = new_setpoint;
						current_cmd = SET;
						current_state = SAVE_SETPOINT;
					}
				}
			}
		}
		
		if(currentSetpointDisplayQueue != NULL)
		{
			xQueueReceive(currentSetpointDisplayQueue, &current_setpoint, 10);
		}
		
		if(displayQueue != NULL)
		{
			xQueueReceive(displayQueue, &currentTemp, 10); //currentTemp is sent over by the TC reader task
		}

		if(btnCommandQueue != NULL)
		{
			xQueueReceive(btnCommandQueue, &current_cmd, 10); //commands from the button task are received here
		}
			
		if(refreshQueue != NULL)
		{
			xQueueReceive(refreshQueue, &okay_to_refresh, 10);
		}
		//execute present state logic
		switch (current_state)
		{
			case DISPLAY_TEMP:	
			if ((currentTemp >= 0) && (currentTemp < 1000))
			{
				writeNumToSegBus(segBus, currentTemp);
			}
				
			if (current_cmd == UP)
			{
				temperature_system = !temperature_system; //update the RAM copy of this variable
				if(displayToTempReaderTempSystemQueue != NULL)		//inform the temp processor of the new temperature system, it will inform other modules
					xQueueSend(displayToTempReaderTempSystemQueue, &temperature_system, 10);
				updateDisplayBoundaries(&DISPLAY_MAX, &DISPLAY_MIN, temperature_system);
			}
			
			vTaskDelay(100);
			break;
			
			case CHANGE_SETPOINT_INIT:
			xTimerStart(onTimerHandle, 10); //begin blinking
			okay_to_refresh = true; //Allow setpoint display to be updated
			xTimerStart(idleDetectionTimerHandle, 10); //start the idle clock to save the setpoint after a certain amount of inactivity
			break;
			
			case CHANGE_SETPOINT:
			if (current_cmd == UP)
			{
				xTimerReset(idleDetectionTimerHandle, 10);
				incrementSetpoint(&current_setpoint, segBus, DISPLAY_MAX);
				okay_to_refresh = true;
			}
			if (current_cmd == DOWN)
			{
				xTimerReset(idleDetectionTimerHandle, 10);
				decrementSetpoint(&current_setpoint, segBus, DISPLAY_MIN);
				okay_to_refresh = true;
			}
				
			if(okay_to_refresh != false)
			{
				writeNumToSegBus(segBus, current_setpoint);
			}
			else
			{
				blankDisplay(segBus);
			}
			break;
			
			case SAVE_SETPOINT:
			xTimerStop(onTimerHandle, 10);
			xTimerStop(offTimerHandle, 10);
			okay_to_refresh = false;
			xTimerStop(idleDetectionTimerHandle, 10);
			if(setpointQueue != NULL)
				xQueueSend(setpointQueue, &current_setpoint, 100);
			break;
			
			default:
			break;
		}
		current_state = calculateNextState(current_state, current_cmd);
		current_cmd = NONE;
	}
}

DISPLAY_STATE calculateNextState (DISPLAY_STATE current_state, uint8_t btn_command)
{
	switch (current_state)
	{
		case DISPLAY_TEMP:
		if (btn_command != SET)
		{
			return DISPLAY_TEMP;
		}
		else
		{
			return CHANGE_SETPOINT_INIT;
		}
		break;
		
		case CHANGE_SETPOINT_INIT:
			return CHANGE_SETPOINT;
		break;
		
		case CHANGE_SETPOINT:
		if (btn_command != SET)
		{
			return CHANGE_SETPOINT;
		}
		else
		{
			return SAVE_SETPOINT;
		}
		break;
		case SAVE_SETPOINT:
			return DISPLAY_TEMP;
		break;
		default: return current_state;
		break;
	}
}

void updateDisplayBoundaries(int * displayMax, int * displayMin, bool newSystem)
{
	if (newSystem == CELSIUS)
	{
		*displayMin = CELSIUS_MIN_TEMP;
		*displayMax = CELSIUS_MAX_TEMP;
	}
	else
	{
		*displayMin = FAHRENHEIT_MIN_TEMP;
		*displayMax = FAHRENHEIT_MAX_TEMP;
	}
}