/*
 * ff_nanddisk.h
 *
 * Created: 11/1/2022 3:17:08 PM
 *  Author: a00538665
 */ 


#ifndef FF_NANDDISK_H_
#define FF_NANDDISK_H_

#include "ff_headers.h"

/* Create a RAM disk, supplying enough memory to hold N sectors of 512 bytes each */
FF_Disk_t *FF_NandDiskInit( const char *pcName );

/* Unmount the volume */
BaseType_t FF_NandDiskUnmount( FF_Disk_t *pDisk );

/* Mount the volume */
BaseType_t FF_NandDiskMount( FF_Disk_t *pDisk );

/* Release all resources */
BaseType_t FF_NandDiskDelete( FF_Disk_t *pDisk );

/* Show some partition information */
BaseType_t FF_NandDiskShowPartition( FF_Disk_t *pDisk );

/* Flush changes from the driver's buf to disk */
void FF_NandDiskFlush( FF_Disk_t *pDisk );

static FF_Error_t nandPartitionAndFormatDisk( FF_Disk_t *pxDisk );



#endif /* FF_NANDDISK_H_ */