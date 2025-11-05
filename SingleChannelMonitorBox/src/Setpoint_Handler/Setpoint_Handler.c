/*
 * Setpoint_Handler.c
 *
 * Created: 11/30/2022 12:49:36 PM
 *  Author: a00538665
 */ 

/* The setpoint handler is responsible for retrieving the saved setpoint from memory and writing 
   the setpoint to memory when there's a new setpoint. It communicates with the display handler 
   task on initialization to let that task know what the current setpoint is. It also receives
   communication from the display handler when a new setpoint is selected.
   
   In addition the setpoint handler is responsible for monitoring the current temperature and 
   ensuring that the temp is always at or above the setpoint. That means the tempReading task
   is responsible for sending the temperature to the setpoint handler every time it calculates a 
   new reading.
   
   The setpoint handler is responsible for signaling a N.O. relay when the current temp is greater
   than or equal to the setpoint. By signaling, I mean the relay will be signaled to close.
   
   If the setpoint is violated, the setpoint handler will open the relay signaling a fault
   and send a message to the display handler task which will then flash an LED rapidly as an 
   additional warning. */

#include "Setpoint_Handler.h"

TaskHandle_t setpointTaskHandle = NULL;
QueueHandle_t currentSetpointDisplayQueue = NULL;	//sends setpoint read on init to display task

extern QueueHandle_t setpointMonitorQueue;			//receives the current temperature to analyze
extern QueueHandle_t setpointQueue;					//receives new setpoint to save from display handler
extern QueueHandle_t tempToSPHandlerTempSystemQueue;//receives current temperature system from the temp reading processor task

TimerHandle_t blinkTimerHandle = NULL;

static bool delete = false;							//every task has a delete variable like this to indicate when the task should shut down
static bool delete_complete = false;

/* Initializes the setpoint handler*/
void initSetpointHandler()
{
	ioport_set_pin_dir(RELAY_PIN, IOPORT_DIR_OUTPUT);
	ioport_set_pin_dir(ALERT_PIN, IOPORT_DIR_OUTPUT);
	ioport_set_pin_level(RELAY_PIN, IOPORT_PIN_LEVEL_LOW);
	ioport_set_pin_level(ALERT_PIN, IOPORT_PIN_LEVEL_LOW);
	currentSetpointDisplayQueue = xQueueCreate(5, sizeof(uint16_t));
	xTaskCreate( setpointHandler, "setpoint handler", SETPOINT_HANDLER_STACK_SIZE, NULL, tskIDLE_PRIORITY, &setpointTaskHandle);
}

void closeSetpointHandler()
{
	delete = true;
	while(delete_complete != true)
	{
		vTaskDelay(1);
	}
}

void toggleLED(TimerHandle_t xTimer)
{
	ioport_toggle_pin_level(ALERT_PIN);
}

/*	This function will update the setpoint modbus register and the temp system modbus register
	for the application. */
bool updateModbusSetpointReg(uint16_t setpoint, bool temp_system)
{
	eMBErrorCode status = MB_ENOERR;
	
	status = applicationUpdateModbusReg(setpoint, SETPOINT_HOLDING_REG);
	if (status == MB_ENOERR)
	{
		if (temp_system == CELSIUS)
		{
			status = applicationUpdateModbusReg(0x0c, TEMP_SYSTEM_HOLDING_REG);
		}
		else
		{
			status = applicationUpdateModbusReg(0x0f, TEMP_SYSTEM_HOLDING_REG);
		}
	}
	
	if(status == MB_ENOERR)
	{
		return pdTRUE;
	}
	else
	{
		return pdFALSE;
	}
}

/* This is the main task that monitors the current temperature against the current setpoint
   and is responsible for saving a new setpoint to the memory. */
static void setpointHandler( void *pvParameters )
{	
	bool temperature_system = FAHRENHEIT;
	bool timer_started = false;
	bool modbus_alive = false;
	blinkTimerHandle = xTimerCreate("alert blink timer", BLINK_PERIOD, pdTRUE, (void *) 0, toggleLED);
	
	char setpointString[MAX_SIZE_OF_SETPOINT_STR] = {'\0'};
	uint16_t currentSetpoint = DEFAULT_SETPOINT;
	uint16_t newSetpoint = DEFAULT_SETPOINT;
	uint16_t currentTemperature = 0;
	
	ulTaskNotifyTake(pdTRUE, pdMS_TO_TICKS(10*1000)); //wait for notification to indicate initialization of file system
	
	FF_FILE *setpointFile = ff_fopen( SETPOINT_DIR, "r" );
	
	if(setpointFile != NULL)
	{
		ff_fread(setpointString, 1, MAX_SIZE_OF_SETPOINT_STR, setpointFile);
		currentSetpoint = atoi(setpointString);
		FF_Close(setpointFile);
		setpointFile = NULL;
	}
	else
	{
		//in this scenario, there was no setpoint on file so we should go ahead and publish a default setpoint
		writeNewSetpoint(currentSetpoint);
	}
	
	if(tempToSPHandlerTempSystemQueue != NULL)
		xQueueReceive(tempToSPHandlerTempSystemQueue, &temperature_system, portMAX_DELAY); //Once the temp system is discovered by the temp reader, then it is immediately sent over
	
	uint16_t display = currentSetpoint;
	
	if(temperature_system == CELSIUS)
	{
		display = toCelsius(display);
	}
	if(currentSetpointDisplayQueue != NULL)
	{
		xQueueSend(currentSetpointDisplayQueue, &display, 1000); //send over the setpoint to display
	}
	
	modbus_alive = updateModbusSetpointReg(display, temperature_system);
		
	/* State machine variables */
	MONITOR_STATE current_state = TEMP_LOW;
	MONITOR_STATE next_state = TEMP_LOW;
	TickType_t limit = xTaskGetTickCount() + INIT_DELAY;
	while(1)
	{
		if(delete == true)
		{
			if(currentSetpointDisplayQueue != NULL)
				vQueueDelete(currentSetpointDisplayQueue);
			currentSetpointDisplayQueue = NULL;
			ioport_set_pin_level(RELAY_PIN, IOPORT_PIN_LEVEL_LOW);
			xTimerDelete(blinkTimerHandle, 10);
			ioport_set_pin_level(ALERT_PIN, IOPORT_PIN_LEVEL_LOW);
			delete_complete = true;
			setpointTaskHandle = NULL;
			vTaskDelete(setpointTaskHandle);
		}
		
		if(modbus_alive != true)
		{
			modbus_alive = updateModbusSetpointReg(display, temperature_system);
		}
		
		if(tempToSPHandlerTempSystemQueue != NULL)
		{
			bool newTempSystem = temperature_system;
			if (xQueueReceive(tempToSPHandlerTempSystemQueue, &newTempSystem, 10) == pdTRUE)
			{
				if (newTempSystem != temperature_system)
				{
					// if the temp system just changed, then we need to send over a converted value to the display handler
					if(currentSetpointDisplayQueue != NULL)
					{
						uint16_t setpoint_to_display = currentSetpoint;
						if(newTempSystem == CELSIUS)
						{
							setpoint_to_display = toCelsius(setpoint_to_display);
						}
						xQueueSend(currentSetpointDisplayQueue, &setpoint_to_display, 10); //send over the setpoint to display
						modbus_alive = updateModbusSetpointReg(setpoint_to_display, newTempSystem);
					}
					temperature_system = newTempSystem;
				}
			}
		}

		if(setpointQueue != NULL)
		{
			if(xQueueReceive(setpointQueue, &newSetpoint, 10) == pdTRUE)
			{
				updateModbusSetpointReg(newSetpoint, temperature_system);
				if(temperature_system == CELSIUS) //if we receive the setpoint in celsius, it will be converted to fahrenheit
				{
					newSetpoint = toFahrenheit(newSetpoint);
				}

				if (newSetpoint != currentSetpoint) //current setpoint is always saved in fahrenheit
				{
					currentSetpoint = newSetpoint; //store the new setpoint in RAM
					writeNewSetpoint(currentSetpoint);
				}
			}
		}
		if(setpointMonitorQueue != NULL)
		{
			if (xQueueReceive(setpointMonitorQueue, &currentTemperature, 10) == pdTRUE)
			{
				if(temperature_system == CELSIUS)
				{
					currentTemperature = toFahrenheit(currentTemperature);
				}
			}
		}
		
		// analyze current temperature to see if we need to trigger alert
		// execute present state logic and calculate next state
		switch (current_state)
		{
			case TEMP_ABOVE_SETPOINT:
			if(currentTemperature < currentSetpoint)
			{
				next_state = TEMP_LOW;
				limit = xTaskGetTickCount() + max_ticks_before_alert;
			}
			else
			{
				next_state = TEMP_ABOVE_SETPOINT;
			}
			break;
			
			case TEMP_LOW:
			if(currentTemperature < currentSetpoint)
			{
				if(xTaskGetTickCount() >= limit)
				{
					next_state = ACTIVATE_ALERT;
				}
				else
				{
					next_state = TEMP_LOW;
				}
			}
			else
			{
				next_state = DEACTIVATE_ALERT;
			}
			break;
			
			case ACTIVATE_ALERT:	
			ioport_set_pin_level(RELAY_PIN, IOPORT_PIN_LEVEL_LOW);
			xTimerStart(blinkTimerHandle, 10);
			next_state = TEMP_LOW_WAIT;
			timer_started = false;
			break;
			
			case TEMP_LOW_WAIT:
			if(currentTemperature >= currentSetpoint)
			{
				if (timer_started == false)
				{
					limit = xTaskGetTickCount() + min_ticks_before_clear;
					timer_started = true;
					next_state = TEMP_LOW_WAIT;
				}
				else
				{
					if(xTaskGetTickCount() >= limit)
					{
						next_state = DEACTIVATE_ALERT;
					}
					else
					{
						next_state = TEMP_LOW_WAIT;
					}
				}
							
			}
			else
			{
				timer_started = false;
				next_state = TEMP_LOW_WAIT;
			}
			break;
			
			case DEACTIVATE_ALERT:
			timer_started = false;
			ioport_set_pin_level(RELAY_PIN, IOPORT_PIN_LEVEL_HIGH);
			xTimerStop(blinkTimerHandle, 10);
			ioport_set_pin_level(ALERT_PIN, IOPORT_PIN_LEVEL_LOW);
			next_state = TEMP_ABOVE_SETPOINT;
			break;
			
			default:	
			next_state = TEMP_ABOVE_SETPOINT; //current state is something wonky. Restart the state machine
			break;	
		}
					
		current_state = next_state;		
	}
}

void writeNewSetpoint(uint16_t newSetpoint)
{
	char setpointString[MAX_SIZE_OF_SETPOINT_STR] = {'\0'};
		
	FF_FILE * setpointFile = ff_fopen( SETPOINT_DIR, "w" );
		
	if (setpointFile != NULL) //if this is NULL then the file system is probably broken
	{
		memset(setpointString, '\0', MAX_SIZE_OF_SETPOINT_STR);

		for (int i = MAX_SIZE_OF_SETPOINT_STR -1; i >= 0; i--)
		{
			setpointString[i] = '0' + (newSetpoint % 10); //store the number as ascii
			newSetpoint /= 10; //we're using newSetpoint as basically a temp
		}
		
		ff_fwrite(setpointString, 1, MAX_SIZE_OF_SETPOINT_STR, setpointFile);
		ff_fclose(setpointFile);
	}
}


