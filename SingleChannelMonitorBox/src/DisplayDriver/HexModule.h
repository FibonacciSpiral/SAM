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

#include "gpio.h"

#include "Button_Handler.h"

#include "TempReadingMain.h"

#define DISPLAY_HANDLER_STACK_SIZE	 ( configMINIMAL_STACK_SIZE * 3 )
#define HEX_MODULE_COUNT			 3
#define BLANK_SEG					 15

#define CELSIUS_MAX_TEMP			 537
#define CELSIUS_MIN_TEMP			 0
#define FAHRENHEIT_MAX_TEMP			 999
#define FAHRENHEIT_MIN_TEMP			 32

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
void initializeDisplay();
void closeDisplay();
hexModule makeHexModule(int A, int B, int C, int D);
void writeNumToSeg(hexModule seg, int count);
void writeNumToSegBus(hexModule segBus [], int number);
void blankDisplay(hexModule segBus []);
uint8_t calculateNextState (uint8_t current_state, uint8_t btn_command);
void updateDisplayBoundaries(int * displayMax, int * displayMin, bool newSystem);



#endif /* HEXMODULE_H_ */