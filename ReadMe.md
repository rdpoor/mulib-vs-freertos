# Comparing mulib and FreeRTOS

## Overview

**mulib** is a highly performant, compact and reliable framework for building complex applications in resource-constrained embedded systems.

**FreeRTOS** is a market-leading real-time operating system (RTOS) for microcontrollers and small microprocessors.

This project replicates an existing FreeRTOS example project using the mulib framework in order to compare the two versions and to gain practical experience in translating the FreeRTOS idioms to the mulib model.

## Summary

One of the design goals of mulib is "a lot of performance in a little space".  This is borne out in this example: mulib uses far less RAM and FLASH than the corresponding application written using FreeRTOS.

This table summarizes the difference in code size between the FreeRTOS and mulib versions:

|   | FreeRTOS SAME54 | mulib SAME54 | size reduction |
|---|---|---|---|
| Data (RAM) | 42,316 | 857 | 98.0% |
| Program (Flash) | 19,979 | 8633 | 56.8% |

You can see that the mulib version reduces the code size by over 56%
and reduces the RAM requirements by 98% when compared to its FreeRTOS counterpart.

## A bit more about mulib

mulib is a _framework_, that is, a collection of modules designed specifically for resource-constrained environments.  Though it includes all the things you need to write multi-threaded, real-time applications, it is more than just a real-time operating system (RTOS): mulib includes modules for efficient "zero copy" manipulation of strings, support for single and double linked lists and queues, comprehensive array operations and more.

In short, mulib gives you the tools you need to make it easier for you to write complex, reliable applications for resource-constrained applications.

The tenets that have guided the design and development of mulib include:
* **designed for embedded systems**: mulib's modules are written to be small and efficient with minimal dependencies on external libraries.
* **no malloc, ever**: mulib never calls `malloc` or `free`.  When a mulib module requires a data structure, the user provides it.  This gives you the choice of static allocation for deterministic behaviour, or dynamic allocation for convenience.
* **small, fast and dangerous**: mulib does minimal validation of its arguments.  Instead, it assumes you know what you're doing, which gives you the option of assuming they are correct (for small code footprint and efficiency), or validating them yourself (for safety).
* **deferred execution**: mulib's multi-tasking system makes heavy use of the `mu_task` module, which encapsulates a function and a context.  A mu_task can be scheduled to run at some future time, or can be passed as an "on_completion" argument to another task.
* **single threaded**: mulib's multi-tasking system is at its heart a single threaded architecture.  This means that if you call an outside library, you don't need to worry about reentrancy.  If you need to assure exclusive access to a resource, the `mu_access_mgr` module provides that.
* **minimal RAM usage**: One benefit of mulib's single threaded design is that there is only one execution stack.  This means that you don't have to decide how much stack to allocate to each task and thus you avoid fragmenting RAM.
* **efficient interrupt handling**: mulib's `mu_sched` module lets you safely schedule any `mu_task` from interrupt level.  This makes it easy to write interrupt handlers that interact with foreground-level tasks.
* **pure C, highly portable**: mulib is written in 100% ANSI Standard C with no assembly code.  And for applications that use `mu_task` and `mu_sched`, the only platform-specific requirement is a representation of time (`mu_time`) and a real-time clock (`mu_rtc`).
* **documentation, testing, examples**: mulib includes comprehensive unit testing, and (increasingly) complete documentation and code examples.
* **free to use, always**: The entire corpus of mulib is covered under the permissive MIT
.  The `mu_task` and `mu_sched` modules only require a

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
in the mulib distribution).  And why stop there?  We even ported it to the even
smaller
[ATtiny817 Explained Pro](https://www.microchip.com/en-us/development-tool/ATTINY817-XPRO),
an 8-bit AVR processor with 8 KB Flash and 512B SRAM.

|   | mulib ATtiny3217 w/xc8 | mulib ATtiny3217 w/avr-gcc | mulib ATtiny817 w/xc8 | mulib ATtiny817 w/avr-gcc |
|---|---|---|---|---|
| Data (RAM) | 449 | 456 | 423 | 423 |
| Program (Flash) | 17445 | 8014 | 5956 | 6234 |

Note: we cheated just a little bit with the ATtiny817 port: because the printf()
library functions occupy a lot of program and memory space, we substituted in
some string manipulation functions to further reduce the code size.

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
