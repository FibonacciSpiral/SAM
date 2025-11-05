/*
 * spi_mutex.h
 *
 * Created: 10/14/2022 1:31:45 PM
 *  Author: a00538665
 */ 


#ifndef SPI_MUTEX_H_
#define SPI_MUTEX_H_

/* Clock polarity. */
#define SPI_CLK_POLARITY 0

/* Clock phase. */
#define SPI_CLK_PHASE 1

void initSpiInterface();

void spiMutexInit();

void bringChipSelectLow(int gpio);

void releaseChipSelect(int gpio);





#endif /* SPI_MUTEX_H_ */