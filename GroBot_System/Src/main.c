//*****************************************************************************
//
// Copyright (C) 2014 Texas Instruments Incorporated - http://www.ti.com/
//
//
//  Redistribution and use in source and binary forms, with or without
//  modification, are permitted provided that the following conditions
//  are met:
//
//    Redistributions of source code must retain the above copyright
//    notice, this list of conditions and the following disclaimer.
//
//    Redistributions in binary form must reproduce the above copyright
//    notice, this list of conditions and the following disclaimer in the
//    documentation and/or other materials provided with the
//    distribution.
//
//    Neither the name of Texas Instruments Incorporated nor the names of
//    its contributors may be used to endorse or promote products derived
//    from this software without specific prior written permission.
//
//  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
//  "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
//  LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
//  A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
//  OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
//  SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
//  LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
//  DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
//  THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
//  (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
//  OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
//
//*****************************************************************************


//*****************************************************************************
//
// Application Name     - File Download
// Application Overview - The objective of this sample code is to demonstrate
//                        how to connect to a server to download a file and save
//                        it on the serial flash. This scheme can be used by
//                        App developer to update any file over the network.
// Application Details  -
// http://processors.wiki.ti.com/index.php/CC32xx_File_Download_Application
// or
// docs\examples\CC32xx_File_Download_Application.pdf
//
//*****************************************************************************

#include "network.h"
#include "uart_if.h"
#include "common.h"
#include "pinmux.h"
#include "hw_ints.h"
#include "rom_map.h"

#if defined(ccs) || defined(gcc)
extern void (* const g_pfnVectors[])(void);
#endif
#if defined(ewarm)
extern uVectorEntry __vector_table;
#endif

void BoardInit(void)
{
// In case of TI-RTOS vector table is initialize by OS itself
#ifndef USE_TIRTOS
    //
    // Set vector table base
    //
#if defined(ccs) || defined(gcc)
    MAP_IntVTableBaseSet((unsigned long)&g_pfnVectors[0]);
#endif
#if defined(ewarm)
    MAP_IntVTableBaseSet((unsigned long)&__vector_table);
#endif
#endif //USE_TIRTOS

    //
    // Enable Processor
    //
    MAP_IntMasterEnable();
    MAP_IntEnable(FAULT_SYSTICK);

    PRCMCC3200MCUInit();
}

void Display_Banner()
{
	UART_PRINT("\n\n\n\r");
	UART_PRINT("*************************************************\n\r");
	UART_PRINT("			   	Stuff       \n\r");
	UART_PRINT("*************************************************\n\r");
	UART_PRINT("\n\n\n\r");
}

int main() {
	int lRetVal = -1;

    //
    // Board Initialization
    //
    BoardInit();

    //
    // configure the GPIO pins for LEDs,UART
    //
    PinMuxConfig();

	InitTerm();
	Display_Banner();

	lRetVal = Network_Init();
	if(lRetVal == FAILURE) {
		LOOP_FOREVER();
	}

	lRetVal = Connect_To_AP();
	if(lRetVal == FAILURE) {
		LOOP_FOREVER();
	}

	lRetVal = Connect_To_Server();
	if(lRetVal == FAILURE) {
		LOOP_FOREVER();
	}

	LOOP_FOREVER();
}

