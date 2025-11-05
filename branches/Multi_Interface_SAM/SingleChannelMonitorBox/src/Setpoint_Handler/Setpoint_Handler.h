/*
 * Setpoint_Handler.h
 *
 * Created: 11/30/2022 12:49:59 PM
 *  Author: a00538665
 */ 


#ifndef SETPOINT_HANDLER_H_
#define SETPOINT_HANDLER_H_

/* Standard includes. */
#include <stdbool.h>

/* FreeRTOS includes. */
#include "FreeRTOS.h"
#include "task.h"

/* FreeRTOS+FAT includes. */
#include "ff_stdio.h"

#include "ioport.h"
#include "timers.h"

#include "HexModule.h"

#define SETPOINT_HANDLER_STACK_SIZE	 ( configMINIMAL_STACK_SIZE * 12 )
#define SETPOINT_DIR				 "/websrc/setpoint.txt"
#define MAX_SIZE_OF_SETPOINT_STR	 3
#define	DEFAULT_SETPOINT			 50						 //default is in fahrenheit
#define BLINK_PERIOD				pdMS_TO_TICKS(250)

#define INIT_DELAY					pdMS_TO_TICKS(10 * 1000) //amount of time after powering on that the device has to reach temp before triggering an alert
#define max_ticks_before_alert		pdMS_TO_TICKS(7500);
#define min_ticks_before_clear		pdMS_TO_TICKS(4500);
#define RELAY_PIN					IOPORT_CREATE_PIN(PIOA, PIO_PA24_IDX)
#define ALERT_PIN					IOPORT_CREATE_PIN(PIOA, PIO_PA23_IDX)


void initSetpointHandler();
static void setpointHandler( void *pvParameters );
void writeNewSetpoint(uint16_t newSetpoint);
void toggleLED(TimerHandle_t xTimer);
void closeSetpointHandler();

typedef enum
{
	TEMP_ABOVE_SETPOINT,
	TEMP_LOW,
	ACTIVATE_ALERT,
	TEMP_LOW_WAIT,
	DEACTIVATE_ALERT
}MONITOR_STATE;



#endif /* SETPOINT_HANDLER_H_ */