/*
 * TempReadingMain.c
 *	Contains a task that grabs a temperature reading every half second from a MAX31855 chip. 
 *  It's compatible with Type K, J, N, T, S, R, and E Thermocouples
 * Created: 10/7/2022 5:58:01 PM
 *  Author: a00538665
 */ 

#include "TempReadingMain.h"


TaskHandle_t readingProcessorHandle = NULL;
QueueHandle_t temperatureQueue = NULL;
QueueHandle_t displayQueue = NULL;
QueueHandle_t setpointMonitorQueue = NULL;


static bool delete = false;
static bool delete_complete = false;


/*************************************************/
// Initialize the SPI interface
// Setup temp reading task
/*************************************************/
void initializeTCReader ()
{
	temperatureQueue = xQueueCreate(1, sizeof(uint16_t));
	displayQueue = xQueueCreate(1, sizeof(int16_t));
	setpointMonitorQueue = xQueueCreate(5, sizeof(uint16_t));
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

static void tempReadingProcessor( void *pvParameters )
{
	uint8_t currentTemp[2] = {'\0'};
	float number_of_readings = 2000;
	int16_t averaged_reading = 0;

	for ( ;; )
	{
		if (delete == true)
		{
			if(displayQueue != NULL)
				vQueueDelete(displayQueue);
			displayQueue = NULL;
			if(temperatureQueue != NULL)
				vQueueDelete(temperatureQueue);
			temperatureQueue = NULL;
			if(setpointMonitorQueue != NULL)
				vQueueDelete(setpointMonitorQueue);
			setpointMonitorQueue = NULL;
			
			releaseChipSelect(MAX31855K_CSN_GPIO);
			delete_complete = true;
			vTaskDelete(readingProcessorHandle);
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
			vTaskDelay(pdMS_TO_TICKS(1));
		}
		
		averaged_reading = (int16_t)(sum / number_of_readings);

		if(temperatureQueue != NULL)
			xQueueSend(temperatureQueue, &averaged_reading, 100); //goes to modbus task
		if(displayQueue != NULL)
			xQueueSend(displayQueue, &averaged_reading, 100);
		if(setpointMonitorQueue != NULL)
			xQueueSend(setpointMonitorQueue, &averaged_reading, 100);
		//vTaskDelay(pdMS_TO_TICKS(1000));
	}	
}
