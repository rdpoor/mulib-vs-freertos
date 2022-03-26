# Comparing mulib and FreeRTOS

## Overview

**mulib** is a highly performant, compact and reliable framework for building 
complex applications in resource-constrained embedded systems.

**FreeRTOS** is a market-leading real-time operating system (RTOS) for 
microcontrollers and small microprocessors.

This project replicates an existing FreeRTOS example project using the mulib framework
in order to compare resulting metrics of the two versions (code size etc),
and to gain practical experience in translating the FreeRTOS idioms to
the mulib model.

## Summary

We chose [an existing FreeRTOS example application](https://microchip-mplab-harmony.github.io/reference_apps/apps/sam_e54_xpro/same54_getting_started_freertos/readme.html)
as our reference and created a new applicaton that behaved identically using mulib rather than FreeRTOS.

Both applications ran on the same hardware -- a 
[SAME54 Xplained Pro Evaluation Kit](https://www.microchip.com/en-us/development-tool/ATSAME54-XPRO) 
with an 
[IO1 Xplained Pro Extension Kit](https://www.microchip.com/en-us/development-tool/ATIO1-XPRO) --
and were developed using the 
[Microchip MPLAB.X IDE](https://www.microchip.com/en-us/tools-resources/develop/mplab-x-ide)
and
[Harmony v3 Embedded Software Development Framework](https://www.microchip.com/en-us/tools-resources/configure/mplab-harmony)
for code generation.  
Both applications used
the same compiler and optimization settings (xc32 with -O1 optimization).  And both applications did the
same thing: once every second, take a temperature measurement using the IO1 XPRO sensor, store the
temperature in a 5-byte buffer in EEPROM and print out the results on the serial port.  In addition, when
the user typed any key on the keyboard, the application would print out the five values stored in EEPROM.

The results:

|   | FreeRTOS | mulib | size reduction |
|---|---|---|---|
| Data (RAM) | 42,316 | 857 | 98.0% |
| Program (Flash) | 19,979 | 8633 | 56.8% |

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
