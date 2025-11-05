/**
 * \file
 *
 * \brief KSZ8851SNL driver configuration.
 *
 * Copyright (c) 2013-2018 Microchip Technology Inc. and its subsidiaries.
 *
 * \asf_license_start
 *
 * \page License
 *
 * Subject to your compliance with these terms, you may use Microchip
 * software and any derivatives exclusively with Microchip products.
 * It is your responsibility to comply with third party license terms applicable
 * to your use of third party software (including open source software) that
 * may accompany Microchip software.
 *
 * THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES,
 * WHETHER EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE,
 * INCLUDING ANY IMPLIED WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY,
 * AND FITNESS FOR A PARTICULAR PURPOSE. IN NO EVENT WILL MICROCHIP BE
 * LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE, INCIDENTAL OR CONSEQUENTIAL
 * LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND WHATSOEVER RELATED TO THE
 * SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP HAS BEEN ADVISED OF THE
 * POSSIBILITY OR THE DAMAGES ARE FORESEEABLE.  TO THE FULLEST EXTENT
 * ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL CLAIMS IN ANY WAY
 * RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT OF FEES, IF ANY,
 * THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS SOFTWARE.
 *
 * \asf_license_stop
 *
 */
/*
 * Support and FAQ: visit <a href="https://www.microchip.com/support/">Microchip Support</a>
 */

#ifndef CONF_ETH_H_INCLUDED
#define CONF_ETH_H_INCLUDED

#include "ioport.h"
#include "ioport_pio.h"
#include "FreeRTOSConfig.h"

/** Disable lwIP checksum (performed by hardware). */
#define CHECKSUM_GEN_IP                               0
#define CHECKSUM_GEN_UDP                              0
#define CHECKSUM_GEN_TCP                              0
#define CHECKSUM_GEN_ICMP                             0
#define CHECKSUM_CHECK_IP                             0
#define CHECKSUM_CHECK_UDP                            0
#define CHECKSUM_CHECK_TCP                            0

/** Number of buffer for RX */
#define NETIF_RX_BUFFERS                              2

/** Number of buffer for TX */
#define NETIF_TX_BUFFERS                              6

/** MAC address definition.  The MAC address must be unique on the network. */
extern uint8_t ETHERNET_CONF_ETHADDR0;
extern uint8_t ETHERNET_CONF_ETHADDR1;
extern uint8_t ETHERNET_CONF_ETHADDR2;
extern uint8_t ETHERNET_CONF_ETHADDR3;
extern uint8_t ETHERNET_CONF_ETHADDR4;
extern uint8_t ETHERNET_CONF_ETHADDR5;

/** SPI settings. */
#define KSZ8851SNL_SPI                                SPI
#define KSZ8851SNL_CLOCK_SPEED                        40000000
#define KSZ8851SNL_CS_PIN                             0		//This is the cs channel to use on atsam, there are 4 channels so 0-3

/** Pins configuration. GPIO values need to be set properly. */
#define KSZ8851SNL_RSTN_GPIO                          PIO_PA25_IDX
#define KSZ8851SNL_RSTN_FLAGS                         (PIO_PERIPH_A | PIO_PULLUP | PIO_TYPE_PIO_OUTPUT_1)
#define KSZ8851SNL_CSN_GPIO                           SPI_NPCS0_GPIO
#define KSZ8851SNL_CSN_FLAGS                          PIO_PERIPH_A | PIO_PULLUP | PIO_TYPE_PIO_OUTPUT_1

/** Push button pin definition. */
#define INTN_PIO                                      PIOA
#define INTN_ID                                       ID_PIOA
#define INTN_PIN_MSK                                  PIO_PA1
#define INTN_ATTR                                     (PIO_DEBOUNCE | PIO_IT_FALL_EDGE)

/* Interrupt priorities. (lowest value = highest priority) */
/* ISRs using FreeRTOS *FromISR APIs must have priorities below or equal to */
/* configLIBRARY_MAX_SYSCALL_INTERRUPT_PRIORITY. */
#define INT_PRIORITY_SPI                              10
#define INT_PRIORITY_PIO                              10

#define INTN_IRQn                                     PIOA_IRQn

#endif /* CONF_ETH_H_INCLUDED */
