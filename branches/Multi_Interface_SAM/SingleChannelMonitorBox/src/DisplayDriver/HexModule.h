/*
 * HexModule.h
 *
 * Created: 10/25/2022 5:56:39 PM
 *  Author: a00538665
 */ 


#ifndef HEXMODULE_H_
#define HEXMODULE_H_


/* FreeRTOS includes. */
#include "FreeRTOS.h"
#include "task.h"
#include "timers.h"

/* FreeRTOS+FAT includes. */
#include "ff_stdio.h"

#include "arm_math.h"

#include "gpio.h"

#include "Button_Handler.h"

#define DISPLAY_HANDLER_STACK_SIZE	 ( configMINIMAL_STACK_SIZE * 10 )
#define HEX_MODULE_COUNT			 3
#define BLANK_SEG					 15

#define CELSIUS						 false

#define	FAHRENHEIT					 true

#define TEMP_SYSTEM_DIR				"/websrc/temperatureSystem.txt"

#define MAX_SIZE_OF_TEMP_SYSTEM_FILE 2

/* State Machine Defines */

typedef enum {
	DISPLAY_TEMP = 1,
	CHANGE_SETPOINT_INIT,
	CHANGE_SETPOINT,
	SAVE_SETPOINT
	} DISPLAY_STATE;

#define BLINK_ON_PERIOD pdMS_TO_TICKS(750)
#define BLINK_OFF_PERIOD pdMS_TO_TICKS(250)
#define REFRESH_PERIOD pdMS_TO_TICKS(30)
#define MAXIMUM_IDLE_PERIOD pdMS_TO_TICKS(2 * 60 * 1000)

struct hexModule {
	int	a_gpio;
	int b_gpio;
	int c_gpio;
	int d_gpio;
	};
	
typedef struct hexModule hexModule;

// prototypes

void configureGpio(int gpio);
void configureGPIOS();
void initializeDisplay();
void closeDisplay();
hexModule makeHexModule(int A, int B, int C, int D);
void writeNumToSeg(hexModule seg, int count);
void writeNumToSegBus(hexModule segBus [], int number);
void blankDisplay(hexModule segBus []);
uint8_t calculateNextState (uint8_t current_state, uint8_t btn_command);
uint16_t toCelsius(uint16_t number);
uint16_t toFahrenheit(uint16_t number);
void updateTempSystem(bool newSystem, bool * currentSystem);
void readTemperatureSystem(bool * currentSystem);
void updateDisplayBoundaries(int * displayMax, int * displayMin, bool newSystem);



#endif /* HEXMODULE_H_ */