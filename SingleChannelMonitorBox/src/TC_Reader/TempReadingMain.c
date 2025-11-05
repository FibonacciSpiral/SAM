/*
 * TempReadingMain.c
 *	Contains a task that grabs a temperature reading every half second from a MAX31855 chip. 
 *  It's compatible with Type K, J, N, T, S, R, and E Thermocouples
 * Created: 10/7/2022 5:58:01 PM
 *  Author: a00538665
 */ 

#include "TempReadingMain.h"


TaskHandle_t readingProcessorHandle = NULL;

QueueHandle_t displayQueue = NULL;
QueueHandle_t setpointMonitorQueue = NULL;
QueueHandle_t tempToDisplayTempSystemQueue = NULL;
QueueHandle_t displayToTempReaderTempSystemQueue = NULL;
QueueHandle_t tempToSPHandlerTempSystemQueue = NULL;
QueueHandle_t httpToTempReaderTempSystemQueue = NULL;

SemaphoreHandle_t updateGlobalTempSemaphore = NULL;
SemaphoreHandle_t tempConvertToFahrenheitSemaphore = NULL;
SemaphoreHandle_t tempConvertToCelsiusSemaphore = NULL;


static bool delete = false;
static bool delete_complete = false;

extern uint16_t current_temperature;

void update_temp_for_server(uint16_t new_temp)
{
	bool finished = false;
	if(updateGlobalTempSemaphore != NULL)
	{
		while(finished != true)
		{
			if( xSemaphoreTake( updateGlobalTempSemaphore, ( TickType_t ) 10 ) == pdTRUE )
			{
				current_temperature = new_temp;
				xSemaphoreGive( updateGlobalTempSemaphore );
				finished = true;
			}
			else
			{
				vTaskDelay(2); //wait a second before trying again
			}
		}
	}
}


/*************************************************/
// Initialize the SPI interface
// Setup temp reading task
/*************************************************/
void initializeTCReader ()
{
	displayQueue = xQueueCreate(1, sizeof(int16_t));
	setpointMonitorQueue = xQueueCreate(5, sizeof(uint16_t));
	displayToTempReaderTempSystemQueue = xQueueCreate(10, sizeof(bool));
	tempToDisplayTempSystemQueue = xQueueCreate(10, sizeof(bool));
	tempToSPHandlerTempSystemQueue = xQueueCreate(10, sizeof(bool));
	httpToTempReaderTempSystemQueue = xQueueCreate(10, sizeof(bool));
	updateGlobalTempSemaphore = xSemaphoreCreateMutex();
	tempConvertToFahrenheitSemaphore = xSemaphoreCreateMutex();
	tempConvertToCelsiusSemaphore = xSemaphoreCreateMutex();
	gpio_configure_pin(MAX31855K_CSN_GPIO, MAX31855K_CSN_FLAGS);
	xTaskCreate( tempReadingProcessor, "tempReadingProcessor", TEMP_PROCESSOR_STACK_SIZE, NULL, tskIDLE_PRIORITY, &readingProcessorHandle );
}

void deleteTCReader ()
{
	delete = true;
	while(delete_complete != true)
	{
		vTaskDelay(1);
	}
}

void updateModbusTempReg(uint16_t temperature)
{
	//write the new value to the temp holding register
	applicationUpdateModbusReg(temperature, TEMP_HOLDING_REG);
}

//Takes a number in Celsius and converts it to Fahrenheit
//Will round to the nearest whole number since decimals are not supported
uint16_t toFahrenheit(uint16_t number)
{
	bool finished = false;
	uint16_t returnValue = 0;
	if(tempConvertToFahrenheitSemaphore != NULL)
	{
		while(finished != true)
		{
			if( xSemaphoreTake( tempConvertToFahrenheitSemaphore, ( TickType_t ) 10 ) == pdTRUE )
			{
				float d = (float) (number);
				d *= 1.8;
				d += 32;
				uint16_t result = round(d);
				
				if (result > 0)
				{
					if (result < 999)
					{
						returnValue = result;
					}
					else
					{
						returnValue = 999;
					}
				}
				else
				{
					returnValue = 0;
				}
				xSemaphoreGive( tempConvertToFahrenheitSemaphore );
				finished = true;
			}
			else
			{
				vTaskDelay(2); //wait a second before trying again
			}
		}
	}
	return returnValue;
}

//Takes a number in fahrenheit and converts it to celsius
//Will round to the nearest whole number since decimals are not supported
uint16_t toCelsius(uint16_t number)
{
	bool finished = false;
	uint16_t returnValue = 0;
	if(tempConvertToCelsiusSemaphore != NULL)
	{
		while(finished != true)
		{
			if( xSemaphoreTake( tempConvertToCelsiusSemaphore, ( TickType_t ) 10 ) == pdTRUE )
			{
				float d = (float) (number - 32);
				d /= 1.8;
				uint16_t result = round(d);
				
				if (result > 0)
				{
					if (result < 999)
					{
						returnValue = result;
					}
					else
					{
						returnValue = 999;
					}
				}
				else
				{
					returnValue = 0;
				}
				xSemaphoreGive( tempConvertToCelsiusSemaphore );
				finished = true;
			}
			else
			{
				vTaskDelay(2); //wait a second before trying again
			}
		}
	}
	return returnValue;
}

// This function will publish a new temperature system setting (either fahrenheit or celsius
// The argument to supply is a bool but the defines for FAHRENHEIT or CELSIUS should be used
void updateTempSystem(bool newSystem)
{
	char buffer[MAX_SIZE_OF_TEMP_SYSTEM_FILE] = {'\0'};
	
	if (newSystem == CELSIUS)
	{
		buffer[0] = 'C';
	}
	else
	{
		buffer[0] = 'F';
	}
	
	FF_FILE * tempSystemFile = ff_fopen( TEMP_SYSTEM_DIR, "w" );
	
	if (tempSystemFile != NULL) //if this is NULL then the file system is probably broken
	{
		ff_fwrite(buffer, 1, MAX_SIZE_OF_TEMP_SYSTEM_FILE, tempSystemFile);
		ff_fclose(tempSystemFile);
	}
}

void readTemperatureSystem(bool * currentSystem)
{
	char buffer[MAX_SIZE_OF_TEMP_SYSTEM_FILE] = {'\0'};
	FF_FILE *tempSystemFile = ff_fopen( TEMP_SYSTEM_DIR, "r" );
	
	if(tempSystemFile != NULL) //this means the file exists so we should go ahead and read to see what system we are using
	{
		ff_fread(buffer, 1, MAX_SIZE_OF_TEMP_SYSTEM_FILE, tempSystemFile);
		if (buffer[0] == 'C')
		{
			*currentSystem = CELSIUS;
		}
		else
		{
			*currentSystem = FAHRENHEIT;
		}
		
		FF_Close(tempSystemFile);
		tempSystemFile = NULL;
	}
	else
	{
		updateTempSystem(CELSIUS);
		*currentSystem = CELSIUS;
	}
}

static void tempReadingProcessor( void *pvParameters )
{
	uint8_t currentTemp[2] = {'\0'};
	float number_of_readings = 3000;
	int16_t averaged_reading = 0;
	bool temp_system = CELSIUS;
	
	ulTaskNotifyTake(pdTRUE, pdMS_TO_TICKS(10*1000)); //wait for notification to indicate initialization of file system
	
	readTemperatureSystem(&temp_system); //reads the current setting on file. If there's none, sets the system to celsius
	
	xQueueSend(tempToDisplayTempSystemQueue, &temp_system, 10);
	xQueueSend(tempToSPHandlerTempSystemQueue, &temp_system, 10);

	for ( ;; )
	{
		if (delete == true)
		{
			if(tempToSPHandlerTempSystemQueue != NULL)
			{
				vQueueDelete(tempToSPHandlerTempSystemQueue);
			}
			tempToSPHandlerTempSystemQueue = NULL;
			if(displayToTempReaderTempSystemQueue != NULL)
			{
				vQueueDelete(displayToTempReaderTempSystemQueue);
			}
			displayToTempReaderTempSystemQueue = NULL;
			if(displayQueue != NULL)
				vQueueDelete(displayQueue);
			displayQueue = NULL;
			
			if(setpointMonitorQueue != NULL)
				vQueueDelete(setpointMonitorQueue);
			setpointMonitorQueue = NULL;
			
			if(tempToDisplayTempSystemQueue != NULL)
			{
				vQueueDelete(tempToDisplayTempSystemQueue);
			}
			tempToDisplayTempSystemQueue = NULL;
			
			delete_complete = true;
		}
		float sum = 0;
		for(int i = 0; i < number_of_readings; i++)
		{
			bringChipSelectLow(MAX31855K_CSN_GPIO);
			spi_set_peripheral_chip_select_value(SPI, ~(uint32_t)(1UL << MAX31855K_CS_PIN));
			spi_read_packet(MAX31855K_SPI, currentTemp, 2);
			spi_set_peripheral_chip_select_value(SPI, ~(uint32_t)(1UL << KSZ8851SNL_CS_PIN));
			releaseChipSelect(MAX31855K_CSN_GPIO);
			int16_t v = (currentTemp[0] << 8) + currentTemp[1];
					
			if (v & 0x8000) // Negative value, drop the lower 4 bits and explicitly extend sign bits.
			{
				v >>= 4;
				v |= 0xf000;
			}
			else
			{ // Positive value, just drop the lower 4 bits.
				v >>= 4;
			}
			sum += v;
			if (displayToTempReaderTempSystemQueue != NULL)
			{
				if (xQueueReceive(displayToTempReaderTempSystemQueue, &temp_system, 0) == pdTRUE)
				{
					updateTempSystem(temp_system);
					if (tempToSPHandlerTempSystemQueue != NULL)
					xQueueSend(tempToSPHandlerTempSystemQueue, &temp_system, 10); //inform the setpoint handler
					sum = 0;
					i = 0; //start over
				}
			}
			vTaskDelay(1);
		}
		
		averaged_reading = (int16_t)(sum / number_of_readings); //the chip always provides the current temp in celsius
		
		if(temp_system == FAHRENHEIT)
		{
			averaged_reading = toFahrenheit(averaged_reading);
		}
		
		if(xQueueReceive(httpToTempReaderTempSystemQueue, &temp_system, 0) == pdTRUE)
		{
			updateTempSystem(temp_system);
		}
		
		if(delete_complete != true)
		{
			updateModbusTempReg(averaged_reading);
			
			if(displayQueue != NULL)
				xQueueSend(displayQueue, &averaged_reading, 100);
			if(setpointMonitorQueue != NULL)
				xQueueSend(setpointMonitorQueue, &averaged_reading, 100);
		}
			
		update_temp_for_server(averaged_reading);
		
	}	
}
