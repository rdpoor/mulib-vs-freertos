/**
  EXPLORER1632DEMO Generated Driver API Source File

  @Company
    Microchip Technology Inc.

  @File Name
    explorer1632demo.c

  @Summary
    This is the generated source file for the EXPLORER1632DEMO driver using Board Support Library

  @Description
    This source file provides APIs for driver for EXPLORER1632DEMO.
    Generation Information :
        Product Revision  :  Board Support Library - 2.0.0
        Device            :  ATtiny3217
    The generated drivers are tested against the following:
        Compiler          :  XC16 v1.50
        MPLAB 	          :  MPLAB X v5.40
*/
/*
    (c) 2016 Microchip Technology Inc. and its subsidiaries. You may use this
    software and any derivatives exclusively with Microchip products.

    THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES, WHETHER
    EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY IMPLIED
    WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS FOR A
    PARTICULAR PURPOSE, OR ITS INTERACTION WITH MICROCHIP PRODUCTS, COMBINATION
    WITH ANY OTHER PRODUCTS, OR USE IN ANY APPLICATION.

    IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE,
    INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND
    WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP HAS
    BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE FORESEEABLE. TO THE
    FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL CLAIMS IN
    ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT OF FEES, IF ANY,
    THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS SOFTWARE.

    MICROCHIP PROVIDES THIS SOFTWARE CONDITIONALLY UPON YOUR ACCEPTANCE OF THESE
    TERMS.
*/

#include <xc.h>
#include <time.h>
#include <stdbool.h>
#include <string.h>
//Timer module is not loaded
//RTCC module is not loaded
#include "button.h"
#include "blink_led.h"
#include "button_led.h"
#include "explorer1632demo.h"
#include "potentiometer.h"

static volatile bool isToggle = false;

static void LED_Toggle();

void EXPLORER1632DEMO_Tasks(void) 
{
    uint16_t adcResult = 0;
    // RTCC Module is not loaded, please load RTCC from the device resources
    adcResult = POTENTIOMETER_Get();
    //RTCC module is not loaded
    printf("Pot = %5u\r\n",adcResult);
    if(BUTTON_IsPressed()){
        BUTTON_LED_On();
    }
    else {
        BUTTON_LED_Off();
    }
}

// Timer module is not loaded, please load timer module and do the necessary configuration 
/**
 End of File
 */