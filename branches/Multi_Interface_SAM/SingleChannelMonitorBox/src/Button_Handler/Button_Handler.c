/*
 * Button_Handler.c
 *
 * Created: 11/23/2022 3:50:58 PM
 *  Author: a00538665
 */ 

/**
 * \brief Configure the HANDLER interrupt.
 */
#include "Button_Handler.h"

static xTaskHandle btnDriverHandle = NULL;

static uint8_t button_pushed = NULL;

static void buttonHandlerTask( void *pvParameters );

QueueHandle_t btnCommandQueue = NULL;

static bool delete = false;
static bool delete_complete = false;




void initializeBtnDriver()
{
	btnCommandQueue = xQueueCreate(5, sizeof(uint8_t));
	configure_btn_handler( btn_Handler );		//initializes the ISR
	xTaskCreate( buttonHandlerTask, "buttonHandlerTask", BUTTON_HANDLER_STACK_SIZE, NULL, tskIDLE_PRIORITY, &btnDriverHandle ); //creates the main task
}

void deleteBtnDriver()
{
	delete = true;
	while(delete_complete != true)
	{
		vTaskDelay(1);
	}
}

/*-----------------------------------------------------------*/
/* PIO button handler interrupt that processes falling edge interrupt */
/* requests from buttons.
/*-----------------------------------------------------------*/

static void btn_Handler( uint32_t id, uint32_t mask )
{
	BaseType_t xHigherPriorityTaskWoken = pdFALSE;

	if((SET_BTN_ID == id) && (SET_BTN_MASK == mask))
	{
		button_pushed = SET;
	}
	if((UP_BTN_ID == id) && (UP_BTN_MASK == mask))
	{
		button_pushed = UP;
	}
	if((DOWN_BTN_ID == id) && (DOWN_BTN_MASK == mask))
	{
		button_pushed = DOWN;
	}
	vTaskNotifyGiveFromISR(btnDriverHandle, &xHigherPriorityTaskWoken);

	portEND_SWITCHING_ISR( xHigherPriorityTaskWoken );
}

void configure_btn_handler(void (*p_handler) (uint32_t, uint32_t))
{
	/* Configure PIO clock. */
	pmc_enable_periph_clk(HANDLER_ID);

	/* Adjust PIO debounce filter parameters, uses 10 Hz filter. */
	pio_set_debounce_filter(HANDLER_PIO, SET_BTN_MASK, 5);
	pio_set_debounce_filter(HANDLER_PIO, UP_BTN_MASK, 5);
	pio_set_debounce_filter(HANDLER_PIO, DOWN_BTN_MASK, 5);

	/* Initialize PIO interrupt handlers, see PIO definition in board.h. */
	pio_handler_set(HANDLER_PIO, HANDLER_ID, SET_BTN_MASK, HANDLER_ATTR, p_handler);
	pio_handler_set(HANDLER_PIO, HANDLER_ID, UP_BTN_MASK, HANDLER_ATTR, p_handler);
	pio_handler_set(HANDLER_PIO, HANDLER_ID, DOWN_BTN_MASK, HANDLER_ATTR, p_handler);

	/* Enable NVIC interrupts. */
	NVIC_SetPriority(HANDLER_IRQn, INT_PRIORITY_PIO);
	NVIC_EnableIRQ((IRQn_Type)HANDLER_ID);
	
	/* Clear the PIO interrupt flags. */
	pio_get_interrupt_status( HANDLER_PIO );

	/* Enable PIO interrupts. */
	pio_enable_interrupt(HANDLER_PIO, SET_BTN_MASK);
	pio_enable_interrupt(HANDLER_PIO, UP_BTN_MASK);
	pio_enable_interrupt(HANDLER_PIO, DOWN_BTN_MASK);
}

/* The main purpose of the button handler task is to debounce the buttons and send over
// the button command to the display handler task. The debouncing is handled entirely by
// software. On the first interrupt, the command is sent immediately, then a small delay
// is processed. After that, the button handler waits until it detects that the button
// has been released. At that point, a series of ulTaskNotifyTakes execute to handle
// any spurious bounce interrupts that occurred after the first one.
*/

static void buttonHandlerTask( void *pvParameters )
{
	for(;;)
	{
		if(delete == true)
		{
			if(btnCommandQueue != NULL)
				vQueueDelete(btnCommandQueue);
			btnCommandQueue = NULL;
			/* disable NVIC interrupts. */
			NVIC_DisableIRQ((IRQn_Type)HANDLER_ID);
				
			/* Clear the PIO interrupt flags. */
			pio_get_interrupt_status( HANDLER_PIO );

			/* Enable PIO interrupts. */
			pio_disable_interrupt(HANDLER_PIO, SET_BTN_MASK);
			pio_disable_interrupt(HANDLER_PIO, UP_BTN_MASK);
			pio_disable_interrupt(HANDLER_PIO, DOWN_BTN_MASK);
			button_pushed = NULL;
			delete_complete = true;
			vTaskDelete(btnDriverHandle);
		}
		ulTaskNotifyTake( pdTRUE, portMAX_DELAY );
		if(btnCommandQueue != NULL)
			xQueueSend(btnCommandQueue, &button_pushed, 200); //send the command to be processed by the display handler
		vTaskDelay(10);
		
		switch (button_pushed) //wait for the button to be lifted up, then debounce
		{
			case SET:
				while(ioport_get_pin_level(SET_BTN_IDX) != true)
				{
					vTaskDelay(pdMS_TO_TICKS(1)); //don't block
				}
			break;
			case UP:
				while(ioport_get_pin_level(UP_BTN_IDX) != true)
				{
					vTaskDelay(pdMS_TO_TICKS(1)); //don't block
				}
			break;
			case DOWN:
				while(ioport_get_pin_level(DOWN_BTN_IDX) != true)
				{
					vTaskDelay(pdMS_TO_TICKS(1)); //don't block
				}
			default: //??
			break;
		}
		vTaskDelay(pdMS_TO_TICKS(25));
		ulTaskNotifyTake( pdTRUE, pdMS_TO_TICKS(1));	//These ulTaskNotifyTake statements are here to provide a debounce filter for the application
		ulTaskNotifyTake( pdTRUE, pdMS_TO_TICKS(1));	//I know it seems weird, but its effective! :D
		ulTaskNotifyTake( pdTRUE, pdMS_TO_TICKS(1));
		ulTaskNotifyTake( pdTRUE, pdMS_TO_TICKS(1));
		ulTaskNotifyTake( pdTRUE, pdMS_TO_TICKS(1));
		ulTaskNotifyTake( pdTRUE, pdMS_TO_TICKS(1));
		ulTaskNotifyTake( pdTRUE, pdMS_TO_TICKS(1));
		ulTaskNotifyTake( pdTRUE, pdMS_TO_TICKS(1));
		ulTaskNotifyTake( pdTRUE, pdMS_TO_TICKS(1));
		ulTaskNotifyTake( pdTRUE, pdMS_TO_TICKS(1));
		ulTaskNotifyTake( pdTRUE, pdMS_TO_TICKS(1));
		ulTaskNotifyTake( pdTRUE, pdMS_TO_TICKS(1));
		ulTaskNotifyTake( pdTRUE, pdMS_TO_TICKS(1));
		ulTaskNotifyTake( pdTRUE, pdMS_TO_TICKS(1));
		ulTaskNotifyTake( pdTRUE, pdMS_TO_TICKS(1));
		ulTaskNotifyTake( pdTRUE, pdMS_TO_TICKS(1));
		ulTaskNotifyTake( pdTRUE, pdMS_TO_TICKS(1));
		ulTaskNotifyTake( pdTRUE, pdMS_TO_TICKS(1));

	}
}