/**
  @Company
    Microchip Technology Inc.

  @Description
    This Source file provides APIs.
    Generation Information :
    Driver Version    :   1.0.0
*/
/*
    (c) 2018 Microchip Technology Inc. and its subsidiaries. 
    
    Subject to your compliance with these terms, you may use Microchip software and any 
    derivatives exclusively with Microchip products. It is your responsibility to comply with third party 
    license terms applicable to your use of third party software (including open source software) that 
    may accompany Microchip software.
    
    THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES, WHETHER 
    EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY 
    IMPLIED WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS 
    FOR A PARTICULAR PURPOSE.
    
    IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE, 
    INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND 
    WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP 
    HAS BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE FORESEEABLE. TO 
    THE FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL 
    CLAIMS IN ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT 
    OF FEES, IF ANY, THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS 
    SOFTWARE.
*/

#ifndef PINS_H_INCLUDED
#define PINS_H_INCLUDED

#include <avr/io.h>
#include "port.h"

//get/set PA2 aliases
#define PA2_SetHigh() do { PORTA_OUTSET = 0x4; } while(0)
#define PA2_SetLow() do { PORTA_OUTCLR = 0x4; } while(0)
#define PA2_Toggle() do { PORTA_OUTTGL = 0x4; } while(0)
#define PA2_GetValue() (VPORTA.IN & (0x1 << 2))
#define PA2_SetDigitalInput() do { PORTA_DIRCLR = 0x4; } while(0)
#define PA2_SetDigitalOutput() do { PORTA_DIRSET = 0x4; } while(0)
#define PA2_SetPullUp() do { PORTA_PIN2CTRL  |= PORT_PULLUPEN_bm; } while(0)
#define PA2_ResetPullUp() do { PORTA_PIN2CTRL  &= ~PORT_PULLUPEN_bm; } while(0)
#define PA2_SetInverted() do { PORTA_PIN2CTRL  |= PORT_INVEN_bm; } while(0)
#define PA2_ResetInverted() do { PORTA_PIN2CTRL  &= ~PORT_INVEN_bm; } while(0)
#define PA2_DisableInterruptOnChange() do { PORTA.PIN2CTRL = (PORTA.PIN2CTRL & ~PORT_ISC_gm) | 0x0 ; } while(0)
#define PA2_EnableInterruptForBothEdges() do { PORTA.PIN2CTRL = (PORTA.PIN2CTRL & ~PORT_ISC_gm) | 0x1 ; } while(0)
#define PA2_EnableInterruptForRisingEdge() do { PORTA.PIN2CTRL = (PORTA.PIN2CTRL & ~PORT_ISC_gm) | 0x2 ; } while(0)
#define PA2_EnableInterruptForFallingEdge() do { PORTA.PIN2CTRL = (PORTA.PIN2CTRL & ~PORT_ISC_gm) | 0x3 ; } while(0)
#define PA2_DisableDigitalInputBuffer() do { PORTA.PIN2CTRL = (PORTA.PIN2CTRL & ~PORT_ISC_gm) | 0x4 ; } while(0)
#define PA2_EnableInterruptForLowLevelSensing() do { PORTA.PIN2CTRL = (PORTA.PIN2CTRL & ~PORT_ISC_gm) | 0x5 ; } while(0)

//get/set PB3 aliases
#define PB3_SetHigh() do { PORTB_OUTSET = 0x8; } while(0)
#define PB3_SetLow() do { PORTB_OUTCLR = 0x8; } while(0)
#define PB3_Toggle() do { PORTB_OUTTGL = 0x8; } while(0)
#define PB3_GetValue() (VPORTB.IN & (0x1 << 3))
#define PB3_SetDigitalInput() do { PORTB_DIRCLR = 0x8; } while(0)
#define PB3_SetDigitalOutput() do { PORTB_DIRSET = 0x8; } while(0)
#define PB3_SetPullUp() do { PORTB_PIN3CTRL  |= PORT_PULLUPEN_bm; } while(0)
#define PB3_ResetPullUp() do { PORTB_PIN3CTRL  &= ~PORT_PULLUPEN_bm; } while(0)
#define PB3_SetInverted() do { PORTB_PIN3CTRL  |= PORT_INVEN_bm; } while(0)
#define PB3_ResetInverted() do { PORTB_PIN3CTRL  &= ~PORT_INVEN_bm; } while(0)
#define PB3_DisableInterruptOnChange() do { PORTB.PIN3CTRL = (PORTB.PIN3CTRL & ~PORT_ISC_gm) | 0x0 ; } while(0)
#define PB3_EnableInterruptForBothEdges() do { PORTB.PIN3CTRL = (PORTB.PIN3CTRL & ~PORT_ISC_gm) | 0x1 ; } while(0)
#define PB3_EnableInterruptForRisingEdge() do { PORTB.PIN3CTRL = (PORTB.PIN3CTRL & ~PORT_ISC_gm) | 0x2 ; } while(0)
#define PB3_EnableInterruptForFallingEdge() do { PORTB.PIN3CTRL = (PORTB.PIN3CTRL & ~PORT_ISC_gm) | 0x3 ; } while(0)
#define PB3_DisableDigitalInputBuffer() do { PORTB.PIN3CTRL = (PORTB.PIN3CTRL & ~PORT_ISC_gm) | 0x4 ; } while(0)
#define PB3_EnableInterruptForLowLevelSensing() do { PORTB.PIN3CTRL = (PORTB.PIN3CTRL & ~PORT_ISC_gm) | 0x5 ; } while(0)

//get/set SPI_SS aliases
#define SPI_SS_SetHigh() do { PORTC_OUTSET = 0x8; } while(0)
#define SPI_SS_SetLow() do { PORTC_OUTCLR = 0x8; } while(0)
#define SPI_SS_Toggle() do { PORTC_OUTTGL = 0x8; } while(0)
#define SPI_SS_GetValue() (VPORTC.IN & (0x1 << 3))
#define SPI_SS_SetDigitalInput() do { PORTC_DIRCLR = 0x8; } while(0)
#define SPI_SS_SetDigitalOutput() do { PORTC_DIRSET = 0x8; } while(0)
#define SPI_SS_SetPullUp() do { PORTC_PIN3CTRL  |= PORT_PULLUPEN_bm; } while(0)
#define SPI_SS_ResetPullUp() do { PORTC_PIN3CTRL  &= ~PORT_PULLUPEN_bm; } while(0)
#define SPI_SS_SetInverted() do { PORTC_PIN3CTRL  |= PORT_INVEN_bm; } while(0)
#define SPI_SS_ResetInverted() do { PORTC_PIN3CTRL  &= ~PORT_INVEN_bm; } while(0)
#define SPI_SS_DisableInterruptOnChange() do { PORTC.PIN3CTRL = (PORTC.PIN3CTRL & ~PORT_ISC_gm) | 0x0 ; } while(0)
#define SPI_SS_EnableInterruptForBothEdges() do { PORTC.PIN3CTRL = (PORTC.PIN3CTRL & ~PORT_ISC_gm) | 0x1 ; } while(0)
#define SPI_SS_EnableInterruptForRisingEdge() do { PORTC.PIN3CTRL = (PORTC.PIN3CTRL & ~PORT_ISC_gm) | 0x2 ; } while(0)
#define SPI_SS_EnableInterruptForFallingEdge() do { PORTC.PIN3CTRL = (PORTC.PIN3CTRL & ~PORT_ISC_gm) | 0x3 ; } while(0)
#define SPI_SS_DisableDigitalInputBuffer() do { PORTC.PIN3CTRL = (PORTC.PIN3CTRL & ~PORT_ISC_gm) | 0x4 ; } while(0)
#define SPI_SS_EnableInterruptForLowLevelSensing() do { PORTC.PIN3CTRL = (PORTC.PIN3CTRL & ~PORT_ISC_gm) | 0x5 ; } while(0)

//get/set PA1 aliases
#define PA1_SetHigh() do { PORTA_OUTSET = 0x2; } while(0)
#define PA1_SetLow() do { PORTA_OUTCLR = 0x2; } while(0)
#define PA1_Toggle() do { PORTA_OUTTGL = 0x2; } while(0)
#define PA1_GetValue() (VPORTA.IN & (0x1 << 1))
#define PA1_SetDigitalInput() do { PORTA_DIRCLR = 0x2; } while(0)
#define PA1_SetDigitalOutput() do { PORTA_DIRSET = 0x2; } while(0)
#define PA1_SetPullUp() do { PORTA_PIN1CTRL  |= PORT_PULLUPEN_bm; } while(0)
#define PA1_ResetPullUp() do { PORTA_PIN1CTRL  &= ~PORT_PULLUPEN_bm; } while(0)
#define PA1_SetInverted() do { PORTA_PIN1CTRL  |= PORT_INVEN_bm; } while(0)
#define PA1_ResetInverted() do { PORTA_PIN1CTRL  &= ~PORT_INVEN_bm; } while(0)
#define PA1_DisableInterruptOnChange() do { PORTA.PIN1CTRL = (PORTA.PIN1CTRL & ~PORT_ISC_gm) | 0x0 ; } while(0)
#define PA1_EnableInterruptForBothEdges() do { PORTA.PIN1CTRL = (PORTA.PIN1CTRL & ~PORT_ISC_gm) | 0x1 ; } while(0)
#define PA1_EnableInterruptForRisingEdge() do { PORTA.PIN1CTRL = (PORTA.PIN1CTRL & ~PORT_ISC_gm) | 0x2 ; } while(0)
#define PA1_EnableInterruptForFallingEdge() do { PORTA.PIN1CTRL = (PORTA.PIN1CTRL & ~PORT_ISC_gm) | 0x3 ; } while(0)
#define PA1_DisableDigitalInputBuffer() do { PORTA.PIN1CTRL = (PORTA.PIN1CTRL & ~PORT_ISC_gm) | 0x4 ; } while(0)
#define PA1_EnableInterruptForLowLevelSensing() do { PORTA.PIN1CTRL = (PORTA.PIN1CTRL & ~PORT_ISC_gm) | 0x5 ; } while(0)

//get/set PB2 aliases
#define PB2_SetHigh() do { PORTB_OUTSET = 0x4; } while(0)
#define PB2_SetLow() do { PORTB_OUTCLR = 0x4; } while(0)
#define PB2_Toggle() do { PORTB_OUTTGL = 0x4; } while(0)
#define PB2_GetValue() (VPORTB.IN & (0x1 << 2))
#define PB2_SetDigitalInput() do { PORTB_DIRCLR = 0x4; } while(0)
#define PB2_SetDigitalOutput() do { PORTB_DIRSET = 0x4; } while(0)
#define PB2_SetPullUp() do { PORTB_PIN2CTRL  |= PORT_PULLUPEN_bm; } while(0)
#define PB2_ResetPullUp() do { PORTB_PIN2CTRL  &= ~PORT_PULLUPEN_bm; } while(0)
#define PB2_SetInverted() do { PORTB_PIN2CTRL  |= PORT_INVEN_bm; } while(0)
#define PB2_ResetInverted() do { PORTB_PIN2CTRL  &= ~PORT_INVEN_bm; } while(0)
#define PB2_DisableInterruptOnChange() do { PORTB.PIN2CTRL = (PORTB.PIN2CTRL & ~PORT_ISC_gm) | 0x0 ; } while(0)
#define PB2_EnableInterruptForBothEdges() do { PORTB.PIN2CTRL = (PORTB.PIN2CTRL & ~PORT_ISC_gm) | 0x1 ; } while(0)
#define PB2_EnableInterruptForRisingEdge() do { PORTB.PIN2CTRL = (PORTB.PIN2CTRL & ~PORT_ISC_gm) | 0x2 ; } while(0)
#define PB2_EnableInterruptForFallingEdge() do { PORTB.PIN2CTRL = (PORTB.PIN2CTRL & ~PORT_ISC_gm) | 0x3 ; } while(0)
#define PB2_DisableDigitalInputBuffer() do { PORTB.PIN2CTRL = (PORTB.PIN2CTRL & ~PORT_ISC_gm) | 0x4 ; } while(0)
#define PB2_EnableInterruptForLowLevelSensing() do { PORTB.PIN2CTRL = (PORTB.PIN2CTRL & ~PORT_ISC_gm) | 0x5 ; } while(0)

//get/set SW0 aliases
#define SW0_SetHigh() do { PORTB_OUTSET = 0x20; } while(0)
#define SW0_SetLow() do { PORTB_OUTCLR = 0x20; } while(0)
#define SW0_Toggle() do { PORTB_OUTTGL = 0x20; } while(0)
#define SW0_GetValue() (VPORTB.IN & (0x1 << 5))
#define SW0_SetDigitalInput() do { PORTB_DIRCLR = 0x20; } while(0)
#define SW0_SetDigitalOutput() do { PORTB_DIRSET = 0x20; } while(0)
#define SW0_SetPullUp() do { PORTB_PIN5CTRL  |= PORT_PULLUPEN_bm; } while(0)
#define SW0_ResetPullUp() do { PORTB_PIN5CTRL  &= ~PORT_PULLUPEN_bm; } while(0)
#define SW0_SetInverted() do { PORTB_PIN5CTRL  |= PORT_INVEN_bm; } while(0)
#define SW0_ResetInverted() do { PORTB_PIN5CTRL  &= ~PORT_INVEN_bm; } while(0)
#define SW0_DisableInterruptOnChange() do { PORTB.PIN5CTRL = (PORTB.PIN5CTRL & ~PORT_ISC_gm) | 0x0 ; } while(0)
#define SW0_EnableInterruptForBothEdges() do { PORTB.PIN5CTRL = (PORTB.PIN5CTRL & ~PORT_ISC_gm) | 0x1 ; } while(0)
#define SW0_EnableInterruptForRisingEdge() do { PORTB.PIN5CTRL = (PORTB.PIN5CTRL & ~PORT_ISC_gm) | 0x2 ; } while(0)
#define SW0_EnableInterruptForFallingEdge() do { PORTB.PIN5CTRL = (PORTB.PIN5CTRL & ~PORT_ISC_gm) | 0x3 ; } while(0)
#define SW0_DisableDigitalInputBuffer() do { PORTB.PIN5CTRL = (PORTB.PIN5CTRL & ~PORT_ISC_gm) | 0x4 ; } while(0)
#define SW0_EnableInterruptForLowLevelSensing() do { PORTB.PIN5CTRL = (PORTB.PIN5CTRL & ~PORT_ISC_gm) | 0x5 ; } while(0)

//get/set LED aliases
#define LED_SetHigh() do { PORTB_OUTSET = 0x10; } while(0)
#define LED_SetLow() do { PORTB_OUTCLR = 0x10; } while(0)
#define LED_Toggle() do { PORTB_OUTTGL = 0x10; } while(0)
#define LED_GetValue() (VPORTB.IN & (0x1 << 4))
#define LED_SetDigitalInput() do { PORTB_DIRCLR = 0x10; } while(0)
#define LED_SetDigitalOutput() do { PORTB_DIRSET = 0x10; } while(0)
#define LED_SetPullUp() do { PORTB_PIN4CTRL  |= PORT_PULLUPEN_bm; } while(0)
#define LED_ResetPullUp() do { PORTB_PIN4CTRL  &= ~PORT_PULLUPEN_bm; } while(0)
#define LED_SetInverted() do { PORTB_PIN4CTRL  |= PORT_INVEN_bm; } while(0)
#define LED_ResetInverted() do { PORTB_PIN4CTRL  &= ~PORT_INVEN_bm; } while(0)
#define LED_DisableInterruptOnChange() do { PORTB.PIN4CTRL = (PORTB.PIN4CTRL & ~PORT_ISC_gm) | 0x0 ; } while(0)
#define LED_EnableInterruptForBothEdges() do { PORTB.PIN4CTRL = (PORTB.PIN4CTRL & ~PORT_ISC_gm) | 0x1 ; } while(0)
#define LED_EnableInterruptForRisingEdge() do { PORTB.PIN4CTRL = (PORTB.PIN4CTRL & ~PORT_ISC_gm) | 0x2 ; } while(0)
#define LED_EnableInterruptForFallingEdge() do { PORTB.PIN4CTRL = (PORTB.PIN4CTRL & ~PORT_ISC_gm) | 0x3 ; } while(0)
#define LED_DisableDigitalInputBuffer() do { PORTB.PIN4CTRL = (PORTB.PIN4CTRL & ~PORT_ISC_gm) | 0x4 ; } while(0)
#define LED_EnableInterruptForLowLevelSensing() do { PORTB.PIN4CTRL = (PORTB.PIN4CTRL & ~PORT_ISC_gm) | 0x5 ; } while(0)

//get/set SW1 aliases
#define SW1_SetHigh() do { PORTC_OUTSET = 0x20; } while(0)
#define SW1_SetLow() do { PORTC_OUTCLR = 0x20; } while(0)
#define SW1_Toggle() do { PORTC_OUTTGL = 0x20; } while(0)
#define SW1_GetValue() (VPORTC.IN & (0x1 << 5))
#define SW1_SetDigitalInput() do { PORTC_DIRCLR = 0x20; } while(0)
#define SW1_SetDigitalOutput() do { PORTC_DIRSET = 0x20; } while(0)
#define SW1_SetPullUp() do { PORTC_PIN5CTRL  |= PORT_PULLUPEN_bm; } while(0)
#define SW1_ResetPullUp() do { PORTC_PIN5CTRL  &= ~PORT_PULLUPEN_bm; } while(0)
#define SW1_SetInverted() do { PORTC_PIN5CTRL  |= PORT_INVEN_bm; } while(0)
#define SW1_ResetInverted() do { PORTC_PIN5CTRL  &= ~PORT_INVEN_bm; } while(0)
#define SW1_DisableInterruptOnChange() do { PORTC.PIN5CTRL = (PORTC.PIN5CTRL & ~PORT_ISC_gm) | 0x0 ; } while(0)
#define SW1_EnableInterruptForBothEdges() do { PORTC.PIN5CTRL = (PORTC.PIN5CTRL & ~PORT_ISC_gm) | 0x1 ; } while(0)
#define SW1_EnableInterruptForRisingEdge() do { PORTC.PIN5CTRL = (PORTC.PIN5CTRL & ~PORT_ISC_gm) | 0x2 ; } while(0)
#define SW1_EnableInterruptForFallingEdge() do { PORTC.PIN5CTRL = (PORTC.PIN5CTRL & ~PORT_ISC_gm) | 0x3 ; } while(0)
#define SW1_DisableDigitalInputBuffer() do { PORTC.PIN5CTRL = (PORTC.PIN5CTRL & ~PORT_ISC_gm) | 0x4 ; } while(0)
#define SW1_EnableInterruptForLowLevelSensing() do { PORTC.PIN5CTRL = (PORTC.PIN5CTRL & ~PORT_ISC_gm) | 0x5 ; } while(0)

//get/set PB0 aliases
#define PB0_SetHigh() do { PORTB_OUTSET = 0x1; } while(0)
#define PB0_SetLow() do { PORTB_OUTCLR = 0x1; } while(0)
#define PB0_Toggle() do { PORTB_OUTTGL = 0x1; } while(0)
#define PB0_GetValue() (VPORTB.IN & (0x1 << 0))
#define PB0_SetDigitalInput() do { PORTB_DIRCLR = 0x1; } while(0)
#define PB0_SetDigitalOutput() do { PORTB_DIRSET = 0x1; } while(0)
#define PB0_SetPullUp() do { PORTB_PIN0CTRL  |= PORT_PULLUPEN_bm; } while(0)
#define PB0_ResetPullUp() do { PORTB_PIN0CTRL  &= ~PORT_PULLUPEN_bm; } while(0)
#define PB0_SetInverted() do { PORTB_PIN0CTRL  |= PORT_INVEN_bm; } while(0)
#define PB0_ResetInverted() do { PORTB_PIN0CTRL  &= ~PORT_INVEN_bm; } while(0)
#define PB0_DisableInterruptOnChange() do { PORTB.PIN0CTRL = (PORTB.PIN0CTRL & ~PORT_ISC_gm) | 0x0 ; } while(0)
#define PB0_EnableInterruptForBothEdges() do { PORTB.PIN0CTRL = (PORTB.PIN0CTRL & ~PORT_ISC_gm) | 0x1 ; } while(0)
#define PB0_EnableInterruptForRisingEdge() do { PORTB.PIN0CTRL = (PORTB.PIN0CTRL & ~PORT_ISC_gm) | 0x2 ; } while(0)
#define PB0_EnableInterruptForFallingEdge() do { PORTB.PIN0CTRL = (PORTB.PIN0CTRL & ~PORT_ISC_gm) | 0x3 ; } while(0)
#define PB0_DisableDigitalInputBuffer() do { PORTB.PIN0CTRL = (PORTB.PIN0CTRL & ~PORT_ISC_gm) | 0x4 ; } while(0)
#define PB0_EnableInterruptForLowLevelSensing() do { PORTB.PIN0CTRL = (PORTB.PIN0CTRL & ~PORT_ISC_gm) | 0x5 ; } while(0)

void PIN_MANAGER_Initialize();
void PORTA_PA2_DefaultInterruptHandler(void);
void PORTA_PA2_SetInterruptHandler(void (* interruptHandler)(void)) ;
void PORTB_PB3_DefaultInterruptHandler(void);
void PORTB_PB3_SetInterruptHandler(void (* interruptHandler)(void)) ;
void PORTC_SPI_SS_DefaultInterruptHandler(void);
void PORTC_SPI_SS_SetInterruptHandler(void (* interruptHandler)(void)) ;
void PORTA_PA1_DefaultInterruptHandler(void);
void PORTA_PA1_SetInterruptHandler(void (* interruptHandler)(void)) ;
void PORTB_PB2_DefaultInterruptHandler(void);
void PORTB_PB2_SetInterruptHandler(void (* interruptHandler)(void)) ;
void PORTB_SW0_DefaultInterruptHandler(void);
void PORTB_SW0_SetInterruptHandler(void (* interruptHandler)(void)) ;
void PORTB_LED_DefaultInterruptHandler(void);
void PORTB_LED_SetInterruptHandler(void (* interruptHandler)(void)) ;
void PORTC_SW1_DefaultInterruptHandler(void);
void PORTC_SW1_SetInterruptHandler(void (* interruptHandler)(void)) ;
void PORTB_PB0_DefaultInterruptHandler(void);
void PORTB_PB0_SetInterruptHandler(void (* interruptHandler)(void)) ;
#endif /* PINS_H_INCLUDED */
