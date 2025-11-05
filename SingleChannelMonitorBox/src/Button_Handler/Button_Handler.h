/*
 * Button_Handler.h
 *
 * Created: 11/23/2022 4:06:06 PM
 *  Author: a00538665
 */ 


#ifndef BUTTON_HANDLER_H_
#define BUTTON_HANDLER_H_

#include "pmc.h"

/* FreeRTOS includes. */
#include "FreeRTOS.h"
#include "task.h"
#include "queue.h"

#include "pio.h"
#include "pio_handler.h"
#include "pdc.h"
#include "ioport.h"

//All the buttons are on the same peripheral in order to make initialization of the ISR simpler
#define HANDLER_ID										 ID_PIOC
/** Push button pin definition. */

#define SET_BTN_MASK									 PIO_PC19
#define SET_BTN_ID										 HANDLER_ID
#define SET_BTN_IDX										 PIO_PC19_IDX

#define	UP_BTN_MASK										 PIO_PC26
#define UP_BTN_ID										 HANDLER_ID
#define UP_BTN_IDX										 PIO_PC26_IDX

#define DOWN_BTN_MASK									 PIO_PC27
#define DOWN_BTN_ID										 HANDLER_ID
#define DOWN_BTN_IDX									 PIO_PC27_IDX

/* Push button states */

#define NONE											 0
#define SET												 1
#define UP												 2
#define DOWN										     3

#define HANDLER_PIO                                      PIOC
#define HANDLER_PIN_MSK                                  (PIO_PC19 | PIO_PC26 | PIO_PC27)
#define HANDLER_ATTR                                     (PIO_DEBOUNCE | PIO_IT_FALL_EDGE)
#define HANDLER_IRQn									 PIOC_IRQn

#define BUTTON_HANDLER_STACK_SIZE ( configMINIMAL_STACK_SIZE * 1 )

#define INT_PRIORITY_PIO								 10

static void btn_Handler( uint32_t id, uint32_t mask );
void initializeBtnDriver();
void configure_btn_handler(void (*p_handler) (uint32_t, uint32_t));
void deleteBtnDriver();


#endif /* BUTTON_HANDLER_H_ */