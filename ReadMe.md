# Comparing mulib and FreeRTOS

## Overview

**mulib** is a highly performant, compact and reliable framework for building 
complex applications in resource-constrained embedded systems.

**FreeRTOS** is a market-leading real-time operating system (RTOS) for 
microcontrollers and small microprocessors.

This project replicates an existing FreeRTOS example project using the mulib framework
in order to compare the two versions and to gain practical experience in translating 
the FreeRTOS idioms to the mulib model.

## Summary

This table summarizes the difference in code size between the FreeRTOS and mulib versions:

|   | FreeRTOS SAME54 | mulib SAME54 | size reduction |
|---|---|---|---|
| Data (RAM) | 42,316 | 857 | 98.0% |
| Program (Flash) | 19,979 | 8633 | 56.8% |

You can see that the mulib version reduces the code size by over 56%
and reduces the RAM requirements by 98% when compared to its FreeRTOS counterpart.

## Details

We chose [an existing FreeRTOS example application](https://microchip-mplab-harmony.github.io/reference_apps/apps/sam_e54_xpro/same54_getting_started_freertos/readme.html)
as a reference and created a new applicaton that behaves identically using mulib rather than FreeRTOS.

Both applications run on the same hardware -- a 
[SAME54 Xplained Pro Evaluation Kit](https://www.microchip.com/en-us/development-tool/ATSAME54-XPRO) 
with an 
[IO1 Xplained Pro Extension Kit](https://www.microchip.com/en-us/development-tool/ATIO1-XPRO) --
and are developed using the 
[Microchip MPLAB.X IDE](https://www.microchip.com/en-us/tools-resources/develop/mplab-x-ide)
and
[Harmony v3 Embedded Software Development Framework](https://www.microchip.com/en-us/tools-resources/configure/mplab-harmony)
for code generation.  
Both applications use
the same compiler and optimization settings (xc32 with -O1 optimization).  And each application does the
same thing: once every second, it takes a temperature measurement using the IO1 XPRO sensor, stores the
temperature in a 5-byte buffer in EEPROM and prints out the results on the serial port.  In addition, when
the user types any key on the keyboard, the application prints out the five values stored in EEPROM.

## Why this is a representative example

We chose this example application because it does a few things that are required of many embedded 
applications:
* **It has periodic events**.  Once a second, it reads the temperature sensor, writes it to EEPROM and prints the results on the serial output.  mulib provides a simple object (`mu_periodic`) for performing repetitive tasks.
* **It has asynchronous events**.  When the user prints any key on the keyboard, it reads the last five values from the EEPROM and prints them on the serial output.  mulib offers a simple mechanism for transitioning control from interrupt level to foreground (`mu_sched_from_isr()`).
* **It requires exclusive access to system resources**.  Both the periodic task and the asynchronous task need access to the serial port and to the I2C bus.  The mulib `mu_access_mgr` object provides simple and versatile exclusive access to resources that cannot be shared.

## But wait, there's more...

Because of the reduced footprint afforded by mulib, it becomes possible to port the 
same application to much smaller processors.  As a proof of concept, we ported the 
example application to an 
[ATtiny3217 Explained Pro](https://www.microchip.com/en-us/development-tool/ATTINY3217-XPRO), 
which is an 8-bit AVR architecture.
The user-generated  sources remained identical; only the i2c_driver.c and usart_driver.c 
files needed to be tailored to the new processor (plus the ATtiny3217-specific files for
in the mulib distribution).

|   | mulib ATtiny3217 w/xc8 | mulib ATtiny3217 w/avr-gcc |
|---|---|---|
| Data (RAM) | 449 | 456 |
| Program (Flash) | 17445 | 8014 |

Note: The ATtiny3217 program size compiled under xc8 seemed excessively large. Examining the .map file,
it appears that libc.a pulls in lots of code related to printf() and floating point
libraries.  However, compiling under avr-gcc resulted in less than half the code size.

A future version could eliminate calling snprintf() altogether if required.

## Future Directions

You'll notice that this page doesn't say much about how mulib works or its API.  That's intentional:
this was a warm-up project, and full mullib documentation (with examples) will follow.  

In the meantime, although Program size and Data size are important metrics in many applications, 
there are other metrics to consider when comparing frameworks, including:
* the number of lines of user code required
* MISRA compliance
* deterministic behavior
* ease of porting to a new platform
* unit test coverage

Which attributes do you consider important and would like to see evaluated in a future project?
You can leave a comment by [generating an issue](https://github.com/rdpoor/mulib-vs-freertos/issues).

Welcome!

---
-- R. D. Poor, March 2022
