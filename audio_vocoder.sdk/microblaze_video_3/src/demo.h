/******************************************************************************
 * @file demo.h
 *
 *
 *****************************************************************************/

#ifndef MAIN_H_
#define MAIN_H_

/***************************** Include Files *********************************/
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "xil_io.h"
#include "xstatus.h"
#include "xparameters.h"
#include "microblaze_sleep.h"

/************************** Constant Definitions *****************************/
#define RETURN_ON_FAILURE(x) if ((x) != XST_SUCCESS) return XST_FAILURE;



/**************************** Type Definitions *******************************/
typedef struct {
	u8 u8Verbose;
	u8 fUserIOEvent;
	u8 fVideoEvent;
	u8 fAudioRecord;
	u8 fAudioPlayback;
	u8 fDmaError;
	u8 fDmaS2MMEvent;
	u8 fDmaMM2SEvent;
	int fDVIClockLock;
	char chBtn;
	u8 fLinkEvent;
	u8 fLinkStatus;
	int linkSpeed;
	int mac;
	XStatus fMacStatus;
} sDemo_t;

/************************** Function Prototypes ******************************/
int audio_init();

// This variable holds the demo related settings
volatile sDemo_t Demo;

#endif /* MAIN_H_ */
