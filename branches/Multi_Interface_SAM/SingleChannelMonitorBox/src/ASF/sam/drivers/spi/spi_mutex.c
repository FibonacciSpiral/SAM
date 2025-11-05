/*
 * spi_mutex.c
 *
 * Created: 10/14/2022 1:31:28 PM
 *  Author: a00538665
 *  This driver wraps the chip select writing functions in order to ensure that only one chip select is used at once
 *  This driver should be initialized before any slave device.
 */ 

/* Standard includes. */
#include <stdio.h>
#include <ctype.h>

/* FreeRTOS includes. */
#include "FreeRTOS.h"
#include "task.h"
#include "semphr.h"

#include "spi_mutex.h"
#include "spi.h"
#include "gpio.h"
#include "port.h"
#include "conf_eth.h"

#include "TempReadingMain.h"

SemaphoreHandle_t chipSelectMutex = NULL;

static int gpio_asserted;

void initSpiInterface() //Spi inititialization is added here to initialize SPI with respect to each slave
{
	/* Configure the SPI peripheral. */
	spi_enable_clock(SPI);
	spi_disable(SPI);
	spi_reset(SPI);
	spi_set_master_mode(SPI);
	spi_disable_mode_fault_detect(SPI);
	spi_set_peripheral_chip_select_value(SPI, ~(uint32_t)(1UL << KSZ8851SNL_CS_PIN));
	spi_set_fixed_peripheral_select(SPI);
	//spi_disable_peripheral_select_decode(SPI);

	spi_set_clock_polarity(SPI, KSZ8851SNL_CS_PIN, SPI_CLK_POLARITY);
	spi_set_clock_phase(SPI, KSZ8851SNL_CS_PIN, SPI_CLK_PHASE);
	spi_set_bits_per_transfer(SPI, KSZ8851SNL_CS_PIN, SPI_CSR_BITS_8_BIT);
	spi_set_baudrate_div(SPI, KSZ8851SNL_CS_PIN, (sysclk_get_cpu_hz() / KSZ8851SNL_CLOCK_SPEED));
	spi_set_transfer_delay(SPI, KSZ8851SNL_CS_PIN, 0, 0);
	
	spi_set_clock_polarity(SPI, MAX31855K_CS_PIN, SPI_CLK_POLARITY);
	spi_set_clock_phase(SPI, MAX31855K_CS_PIN, SPI_CLK_PHASE);
	spi_set_bits_per_transfer(SPI, MAX31855K_CS_PIN, SPI_CSR_BITS_8_BIT);
	spi_set_baudrate_div(SPI, MAX31855K_CS_PIN, (sysclk_get_cpu_hz() / MAX31855K_CLOCK_SPEED));
	spi_set_transfer_delay(SPI, MAX31855K_CS_PIN, 0, 0);
	
	
	//	spi_set_transfer_delay(SPI, KSZ8851SNL_CS_PIN, CONFIG_SPI_MASTER_DELAY_BS,
	//			CONFIG_SPI_MASTER_DELAY_BCT);

		
	/* Enable RX and TX complete interrupts. */
	spi_enable_interrupt( SPI, SPI_IER_RXBUFF );
	spi_enable_interrupt(SPI, SPI_IER_ENDTX);
	spi_enable_interrupt(KSZ8851SNL_SPI, SPI_IER_TXBUFE);

	spi_enable(SPI);
}

/* Inititalization of the mutex is done here. */
void spiMutexInit(int slave0, int slave1, int clk_speed_s0, int clk_speed_s1)
{
	gpio_asserted = -1;
	chipSelectMutex = xSemaphoreCreateMutex();
}

/* Use this function whenever a slave needs to be selected by the master for communication */
void bringChipSelectLow(int gpio)
{
	if( chipSelectMutex != NULL )
	{
		BOOL finished = FALSE;
		while (finished == FALSE)
		{
			if( xSemaphoreTake( chipSelectMutex, ( TickType_t ) 10 ) == pdTRUE )
			{
				gpio_set_pin_low(gpio);
				gpio_asserted = gpio;
				finished = TRUE;
			}
			else
			{
				//we didn't get the semaphore so wait a bit and then try again
				vTaskDelay(2);
			}
		}
	}
}

/* Use this function to release a chip select after it has been asserted */
void releaseChipSelect(int gpio)
{
	if (gpio_asserted == gpio)
	{
		gpio_set_pin_high(gpio);
		vTaskDelay(1);
		gpio_asserted = -1;
		xSemaphoreGive( chipSelectMutex ); //It's assumed that releaseChipSelect is always called after bringChipSelectLow
	}
}
