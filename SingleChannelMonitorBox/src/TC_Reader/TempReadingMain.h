/*
 * TempReadingMain.h
 *
 * Created: 10/7/2022 5:59:50 PM
 *  Author: a00538665
 */ 


#ifndef TEMPREADINGMAIN_H_
#define TEMPREADINGMAIN_H_

/* FreeRTOS includes. */
#include "FreeRTOS.h"
#include "task.h"

#include "ioport.h"
#include "spi_master.h"
#include "spi.h"
#include "spi_mutex.h"
#include "conf_eth.h"
/* FreeRTOS+FAT includes. */
#include "ff_stdio.h"

#include "arm_math.h"
#include "mbport.h"
#include "mb.h"
#include "gpio.h"

#define TEMP_PROCESSOR_STACK_SIZE ( configMINIMAL_STACK_SIZE * 12 )

/** SPI settings. */
#define MAX31855K_SPI                                SPI
#define MAX31855K_CLOCK_SPEED                        5000000
#define MAX31855K_CS_PIN                             1		//This is the cs channel to use on atsam, there are 4 channels so 0-3
#define MAX31855K_CSN_GPIO							 SPI_NPCS1_PA9_GPIO
#define MAX31855K_CSN_FLAGS                          PIO_PERIPH_A | PIO_PULLUP | PIO_TYPE_PIO_OUTPUT_1

#define TEMP_SYSTEM_DIR				"/websrc/temperatureSystem.txt"
#define CELSIUS						 false
#define	FAHRENHEIT					 true

#define MAX_SIZE_OF_TEMP_SYSTEM_FILE 2


void initializeTCReader (void);
void deleteTCReader (void);
static void tempReadingProcessor( void *pvParameters );

eMBErrorCode applicationUpdateModbusReg( uint16_t data, USHORT usAddress);

uint16_t toCelsius(uint16_t number);
uint16_t toFahrenheit(uint16_t number);
void updateTempSystem(bool newSystem);
void readTemperatureSystem(bool * currentSystem);




#endif /* TEMPREADINGMAIN_H_ */