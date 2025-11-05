/*
 * ff_nanddisk.c
 *
 * Created: 11/1/2022 3:16:46 PM
 *  Author: a00538665
 */ 

#include "ff_nanddisk.h"
#include "nand_flash_ecc.h"

/* Standard includes. */
#include <stdlib.h>
#include <string.h>
#include <stdarg.h>
#include <stdio.h>

/* FreeRTOS includes. */
#include "FreeRTOS.h"
#include "task.h"
#include "semphr.h"
#include "portmacro.h"

/* FreeRTOS+FAT includes. */
#include "ff_nanddisk.h"
#include "ff_sys.h"

/* Atmel includes. */
#include <board.h>

#include "hr_gettime.h"

/* Misc definitions. */
#define nandSIGNATURE 			0x14440243UL
#define nandHUNDRED_64_BIT		( 100ull )
#define nandBYTES_PER_MB			( 1024ull * 1024ull )
#define nandSECTORS_PER_MB		( nandBYTES_PER_MB / page_size )
#define PAGES_BETWEEN_FATFS_AND_RAW (1)
#define NUMBER_OF_PAGES_IN_FATFS ((mem_size / 2) / page_size)


/* NAND Flash memory size. */
static uint32_t mem_size;
/* Number of blocks in NAND Flash. */
static uint32_t num_block;
/* Size of one block in the NAND Flash, in bytes. */
static uint32_t block_size;
/* Size of one page in the NAND Flash, in bytes. */
static uint32_t page_size;
/* Number of page per block. */
static uint32_t pages_per_block;

/* NAND Flash device structure. */
static struct nand_flash_ecc nf_ecc;
/* Address for transferring command to the NAND Flash. */
static uint32_t cmd_address = BOARD_NF_COMMAND_ADDR;
/* Address for transferring address to the NAND Flash. */
static uint32_t addr_address = BOARD_NF_ADDRESS_ADDR;
/* Address for transferring data to the NAND Flash. */
static uint32_t data_address = BOARD_NF_DATA_ADDR;

static uint32_t pg_offset_for_format_id = 1;

/*-----------------------------------------------------------*/

/*
 * Mutex for partition.
 */
static SemaphoreHandle_t xPlusFATMutex = NULL;

/*-----------------------------------------------------------*/

static FF_Error_t nandPartitionAndFormatDisk( FF_Disk_t *pxDisk )
{
	FF_PartitionParameters_t xPartition;
	FF_Error_t xError;

	/* Create a single partition that fills all available space on the disk. */
	memset( &xPartition, '\0', sizeof( xPartition ) );
	xPartition.ulSectorCount = pxDisk->ulNumberOfSectors;
	xPartition.ulHiddenSectors = 0;
	xPartition.xPrimaryCount = 1;
	xPartition.eSizeType = eSizeIsQuota;
	
	uint8_t FORMAT_IDENTIFIER[17] = {'\0'}; //defines what will be written in nand memory to determine if the FatFS has been formatted in Nand flash
	memcpy(FORMAT_IDENTIFIER, "NAND_FORMAT_ID_12", 17);
	uint8_t format_check[sizeof(FORMAT_IDENTIFIER)] = {'\0'};	   //buffer contains the actual data from the nand flash that should contain the identifier
	uint8_t format_identifier[sizeof(FORMAT_IDENTIFIER)] = {'\0'}; //contains a copy of the identifier
	
	uint8_t numberOfPages = 1;
	uint32_t pageNumber = NUMBER_OF_PAGES_IN_FATFS + PAGES_BETWEEN_FATFS_AND_RAW + pg_offset_for_format_id;
	uint8_t * pucBuffer = (uint8_t *) pvPortMalloc(page_size * numberOfPages);
	
	uint32_t block_number = pageNumber / pages_per_block;
	uint32_t page_in_block = numberOfPages % (block_number * pages_per_block);
	uint32_t error = nand_flash_ecc_read_page(&nf_ecc, block_number, page_in_block, pucBuffer, 0);
	if (error == pdTRUE)
	{
		//try again
		error = nand_flash_ecc_read_page(&nf_ecc, block_number, page_in_block, pucBuffer, 0);
		if (error == pdTRUE)
		{
			pg_offset_for_format_id++; //Since the page is unreadable, lets try the next page
			vPortFree(pucBuffer); //can't read the page that contains the format identifier
			return FF_ERR_DEVICE_DRIVER_FAILED; //did not succeed but since the page offset is incremented, we might succeed on the next try
		}
	}
	memcpy(format_identifier, FORMAT_IDENTIFIER, sizeof(FORMAT_IDENTIFIER));
	memcpy(format_check, pucBuffer, sizeof(FORMAT_IDENTIFIER));
	
	if (memcmp(format_check, format_identifier, sizeof(FORMAT_IDENTIFIER))==0)
	{
		vPortFree(pucBuffer);
		return pdTRUE; //success
	}
	else
	{
		//write the identifier in since its not present and needs to be since we are about to partition and format
		memcpy(pucBuffer, format_identifier, sizeof(format_identifier));
		nand_flash_raw_erase_block(&(nf_ecc.raw), block_number); //must erase block before writing to it
		error = nand_flash_ecc_write_page(&nf_ecc, block_number, page_in_block, pucBuffer, 0);
		if (error == pdTRUE)
		{
			//try one more time
			error = nand_flash_ecc_write_page(&nf_ecc, block_number, page_in_block, pucBuffer, 0);
			if(error == pdTRUE)
			{
				pg_offset_for_format_id++; //pg is unwriteable, hopefully incrementing the page offset will allow it to work on the next cycle
				vPortFree(pucBuffer);
				return FF_ERR_DEVICE_DRIVER_FAILED;
			}
		}
	}
	vPortFree(pucBuffer); //if the read succeeded and the nand needed to be formatted
	/* Partition the disk */
	xError = FF_Partition( pxDisk, &xPartition );
	FF_PRINTF( "FF_Partition: %s\n", ( const char * ) FF_GetErrMessage( xError ) );

	if( FF_isERR( xError ) == pdFALSE )
	{
		/* Format the partition. */
		xError = FF_Format( pxDisk, 0, pdTRUE, pdTRUE );
		FF_PRINTF( "FF_NandDiskInit: FF_Format: %s\n", ( const char * ) FF_GetErrMessage( xError ) );
	}
	return xError;
}
/*-----------------------------------------------------------*/

static int32_t prvFFRead( uint8_t *pucBuffer, uint32_t ulSectorNumber, uint32_t ulSectorCount, FF_Disk_t *pxDisk )
{
int32_t lReturnCode = FF_ERR_IOMAN_OUT_OF_BOUNDS_READ | FF_ERRFLAG;
uint32_t error = pdFALSE;

	if( ( pxDisk != NULL ) &&
		( pxDisk->ulSignature == nandSIGNATURE ) &&
		( pxDisk->xStatus.bIsInitialised != pdFALSE ) &&
		( ulSectorNumber < pxDisk->ulNumberOfSectors ) &&
		( ( pxDisk->ulNumberOfSectors - ulSectorNumber ) >= ulSectorCount ) )
	{
		uint8_t copyOfBufferAddress = pucBuffer;
		for (int i = 0; i < ulSectorCount; i++) //for each block
		{
			for (int j = 0; i < pages_per_block; j++)//for each page
			{
				error = nand_flash_ecc_read_page(&nf_ecc, ulSectorNumber + i, j, copyOfBufferAddress, 0);
				if(error == pdTRUE)
				{
					//try once more
					nand_flash_ecc_read_page(&nf_ecc, ulSectorNumber + i, j, copyOfBufferAddress, 0);
				}
				copyOfBufferAddress += page_size;
			}
		}
		
		
		if( error != pdTRUE )
		{
			lReturnCode = 0L;
		}
		else
		{
			/* Some error occurred. */
			FF_PRINTF( "prvFFRead: %lu: %ld\n", ulSectorNumber, FF_ERR_DEVICE_DRIVER_FAILED );
		}
	}
	else
	{
		/* Make sure no random data is in the returned buffer. */
		memset( ( void * ) pucBuffer, '\0', ulSectorCount * page_size );

		if( pxDisk->xStatus.bIsInitialised != pdFALSE )
		{
			FF_PRINTF( "prvFFRead: warning: %lu + %lu > %lu\n", ulSectorNumber, ulSectorCount, pxDisk->ulNumberOfSectors );
		}
	}

	return lReturnCode;
}
/*-----------------------------------------------------------*/

static int32_t prvFFWrite( uint8_t *pucBuffer, uint32_t ulSectorNumber, uint32_t ulSectorCount, FF_Disk_t *pxDisk )
{
int32_t lReturnCode = FF_ERR_IOMAN_OUT_OF_BOUNDS_READ | FF_ERRFLAG;
uint32_t error = pdFALSE;

	if( ( pxDisk != NULL ) &&
		( pxDisk->ulSignature == nandSIGNATURE ) &&
		( pxDisk->xStatus.bIsInitialised != pdFALSE ) &&
		( ulSectorNumber < pxDisk->ulNumberOfSectors ) &&
		( ( pxDisk->ulNumberOfSectors - ulSectorNumber ) >= ulSectorCount ) )
	{
		uint8_t * copyOfBufferAddress = pucBuffer;
		
		for (int i = 0; i < ulSectorCount; i++) //for each block
		{
			nand_flash_raw_erase_block(&(nf_ecc.raw), ulSectorNumber + i);
			for (int j = 0; i < pages_per_block; j++)//for each page
			{
				error = nand_flash_ecc_write_page(&nf_ecc, ulSectorNumber + i, j, copyOfBufferAddress, 0);
				if(error == pdTRUE)
				{
					//try once more
					nand_flash_ecc_write_page(&nf_ecc, ulSectorNumber + i, j, copyOfBufferAddress, 0);
				}
				copyOfBufferAddress += page_size;
			}
		}
		
		if( error != pdTRUE )
		{
			/* No errors. */
			lReturnCode = 0L;
		}
		else
		{
			FF_PRINTF( "prvFFWrite: %lu: %ld\n", ulSectorNumber, FF_ERR_DEVICE_DRIVER_FAILED  );
		}
	}
	else
	{
		if( pxDisk->xStatus.bIsInitialised != pdFALSE )
		{
			FF_PRINTF( "prvFFWrite: warning: %lu + %lu > %lu\n", ulSectorNumber, ulSectorCount, pxDisk->ulNumberOfSectors );
		}
	}

	return lReturnCode;
}
/*-----------------------------------------------------------*/

void FF_NandDiskFlush( FF_Disk_t *pxDisk )
{
	if( ( pxDisk != NULL ) &&
		( pxDisk->xStatus.bIsInitialised != pdFALSE ) &&
		( pxDisk->pxIOManager != NULL ) )
	{
		FF_FlushCache( pxDisk->pxIOManager );
	}
}
/*-----------------------------------------------------------*/

/* Initialise the nand flash ebi driver and mount as root */
FF_Disk_t *FF_NandDiskInit( const char *pcName )
{
	FF_Error_t xFFError;
	BaseType_t xPartitionNumber = 0;
	FF_CreationParameters_t xParameters;
	FF_Disk_t *pxDisk;

	memset(&nf_ecc, 0, sizeof(nf_ecc));

	if (nand_flash_ecc_initialize(&nf_ecc, 0, cmd_address, addr_address, data_address)) 
	{
		//printf("-E- Device Unknown\n\r");
		return NULL;
	}

	//printf("-I- NAND Flash driver initialized\n\r");

	/* Get device parameters */
	mem_size = nand_flash_model_get_device_size_in_bytes(&(nf_ecc.raw).model);
	block_size = nand_flash_model_get_block_size_in_bytes(&(nf_ecc.raw).model);
	num_block = nand_flash_model_get_device_size_in_blocks(&(nf_ecc.raw).model);
	page_size = nand_flash_model_get_page_data_size(&(nf_ecc.raw).model);
	pages_per_block = nand_flash_model_get_block_size_in_pages(&(nf_ecc.raw).model);
	
	pxDisk = (FF_Disk_t *)ffconfigMALLOC( sizeof( *pxDisk ) );
	if( pxDisk != NULL )
	{
		/* Initialise the created disk structure. */
		memset( pxDisk, '\0', sizeof( *pxDisk ) );

		pxDisk->ulNumberOfSectors = NUMBER_OF_PAGES_IN_FATFS; //allocating half the nand flash to the partition, the other half for general use
		
		if( xPlusFATMutex == NULL )
		{
			xPlusFATMutex = xSemaphoreCreateRecursiveMutex();
		}

		pxDisk->ulSignature = nandSIGNATURE;

		if( xPlusFATMutex != NULL)
		{
			memset( &xParameters, '\0', sizeof( xParameters ) );
			xParameters.ulMemorySize = block_size*2;
			xParameters.ulSectorSize = block_size;
			xParameters.fnWriteBlocks = prvFFWrite;
			xParameters.fnReadBlocks = prvFFRead;
			xParameters.pxDisk = pxDisk;

			/* prvFFRead()/prvFFWrite() are not re-entrant and must be
			protected with the use of a semaphore. */
			xParameters.xBlockDeviceIsReentrant = pdFALSE;

			/* The semaphore will be used to protect critical sections in
			the +FAT driver, and also to avoid concurrent calls to
			prvFFRead()/prvFFWrite() from different tasks. */
			xParameters.pvSemaphore = ( void * ) xPlusFATMutex;

			pxDisk->pxIOManager = FF_CreateIOManger( &xParameters, &xFFError );

			if( pxDisk->pxIOManager == NULL )
			{
				FF_PRINTF( "FF_NandDiskInit: FF_CreateIOManger: %s\n", (const char*)FF_GetErrMessage( xFFError ) );
				FF_NandDiskDelete( pxDisk );
				pxDisk = NULL;
			}
			else
			{
				pxDisk->xStatus.bIsInitialised = pdTRUE;
				pxDisk->xStatus.bPartitionNumber = xPartitionNumber;
				
				xFFError = nandPartitionAndFormatDisk( pxDisk );
				
				if( FF_isERR( xFFError ) == pdFALSE )
				{
					if( FF_NandDiskMount( pxDisk ) == 0 )
					{
						FF_NandDiskDelete( pxDisk );
						pxDisk = NULL;
					}
					else
					{
						if( pcName == NULL )
						{
							pcName = "/";
						}
						FF_FS_Add( pcName, pxDisk );
						FF_PRINTF( "FF_NandDiskInit: Mounted SD-card as root \"%s\"\n", pcName );
					}
				}	/* if( FF_isERR( xError ) == pdFALSE ) */
			}	/* if( pxDisk->pxIOManager != NULL ) */
		}	/* if( xPlusFATMutex != NULL) */
	}	/* if( pxDisk != NULL ) */
	else
	{
		FF_PRINTF( "FF_NandDiskInit: Malloc failed\n" );
	}

	return pxDisk;
}

/*-----------------------------------------------------------*/

BaseType_t FF_NandDiskUnmount( FF_Disk_t *pxDisk )
{
FF_Error_t xFFError;
BaseType_t xReturn = pdPASS;

	if( ( pxDisk != NULL ) && ( pxDisk->xStatus.bIsMounted != pdFALSE ) )
	{
		pxDisk->xStatus.bIsMounted = pdFALSE;
		xFFError = FF_Unmount( pxDisk );

		if( FF_isERR( xFFError ) )
		{
			FF_PRINTF( "FF_NandDiskUnmount: rc %08x\n", ( unsigned )xFFError );
			xReturn = pdFAIL;
		}
		else
		{
			FF_PRINTF( "Drive unmounted\n" );
		}
	}

	return xReturn;
}
/*-----------------------------------------------------------*/


BaseType_t FF_NandDiskMount( FF_Disk_t *pxDisk )
{
FF_Error_t xFFError;
BaseType_t xReturn;

	/* Mount the partition */
	xFFError = FF_Mount( pxDisk, pxDisk->xStatus.bPartitionNumber );

	if( FF_isERR( xFFError ) )
	{
		FF_PRINTF( "FF_NandDiskMount: %08lX\n", xFFError );
		xReturn = pdFAIL;
	}
	else
	{
		pxDisk->xStatus.bIsMounted = pdTRUE;
		FF_PRINTF( "****** FreeRTOS+FAT initialized %lu sectors\n", pxDisk->pxIOManager->xPartition.ulTotalSectors );
		FF_NandDiskShowPartition( pxDisk );
		xReturn = pdPASS;
	}

	return xReturn;
}
/*-----------------------------------------------------------*/

FF_IOManager_t *NandDisk_ioman( FF_Disk_t *pxDisk )
{
	FF_IOManager_t *pxReturn;

	if( ( pxDisk != NULL ) && ( pxDisk->xStatus.bIsInitialised != pdFALSE ) )
	{
		pxReturn = pxDisk->pxIOManager;
	}
	else
	{
		pxReturn = NULL;
	}
	return pxReturn;
}
/*-----------------------------------------------------------*/

/* Release all resources */
BaseType_t FF_NandDiskDelete( FF_Disk_t *pxDisk )
{
	if( pxDisk != NULL )
	{
		pxDisk->ulSignature = 0;
		pxDisk->xStatus.bIsInitialised = 0;
		if( pxDisk->pxIOManager != NULL )
		{
			if( FF_Mounted( pxDisk->pxIOManager ) != pdFALSE )
			{
				FF_Unmount( pxDisk );
			}
			FF_DeleteIOManager( pxDisk->pxIOManager );
		}

		vPortFree( pxDisk );
	}
	return 1;
}
/*-----------------------------------------------------------*/

BaseType_t FF_NandDiskShowPartition( FF_Disk_t *pxDisk )
{
FF_Error_t xError;
uint64_t ullFreeSectors;
uint32_t ulTotalSizeMB, ulFreeSizeMB;
int iPercentageFree;
FF_IOManager_t *pxIOManager;
const char *pcTypeName = "unknown type";
BaseType_t xReturn = pdPASS;

	if( pxDisk == NULL )
	{
		xReturn = pdFAIL;
	}
	else
	{
		pxIOManager = pxDisk->pxIOManager;

		FF_PRINTF( "Reading FAT and calculating Free Space\n" );

		switch( pxIOManager->xPartition.ucType )
		{
			case FF_T_FAT12:
				pcTypeName = "FAT12";
				break;

			case FF_T_FAT16:
				pcTypeName = "FAT16";
				break;

			case FF_T_FAT32:
				pcTypeName = "FAT32";
				break;

			default:
				pcTypeName = "UNKOWN";
				break;
		}

		FF_GetFreeSize( pxIOManager, &xError );

		ullFreeSectors = pxIOManager->xPartition.ulFreeClusterCount * pxIOManager->xPartition.ulSectorsPerCluster;
		iPercentageFree = ( int ) ( ( nandHUNDRED_64_BIT * ullFreeSectors + pxIOManager->xPartition.ulDataSectors / 2 ) /
			( ( uint64_t )pxIOManager->xPartition.ulDataSectors ) );

		ulTotalSizeMB = pxIOManager->xPartition.ulDataSectors / nandSECTORS_PER_MB;
		ulFreeSizeMB = ( uint32_t ) ( ullFreeSectors / nandSECTORS_PER_MB );

		/* It is better not to use the 64-bit format such as %Lu because it
		might not be implemented. */
		FF_PRINTF( "Partition Nr   %8u\n", pxDisk->xStatus.bPartitionNumber );
		FF_PRINTF( "Type           %8u (%s)\n", pxIOManager->xPartition.ucType, pcTypeName );
		FF_PRINTF( "VolLabel       '%8s' \n", pxIOManager->xPartition.pcVolumeLabel );
		FF_PRINTF( "TotalSectors   %8lu\n", pxIOManager->xPartition.ulTotalSectors );
		FF_PRINTF( "SecsPerCluster %8lu\n", pxIOManager->xPartition.ulSectorsPerCluster );
		FF_PRINTF( "Size           %8lu MB\n", ulTotalSizeMB );
		FF_PRINTF( "FreeSize       %8lu MB ( %d perc free )\n", ulFreeSizeMB, iPercentageFree );
	}

	return xReturn;
}
/*-----------------------------------------------------------*/



