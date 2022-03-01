# Mulib vs FreeRTOS

## Overview

This project replicates an existing FreeRTOS project using the mulib framework.
The goal is to compare resulting metrics of the two versions (code size etc),
and to gain practical experience in translating from the FreeRTOS paradigm to
the mulib model.

A secondary goal is to play by the rules of MPLAB and Harmony Configuration: we
don't make any changes to the code that MHC generates.  However, a future
version could feature tighter integration of mulib with the driver files.

## Creating the App

### Starting with the FreeRTOS version of the project...

1. Make a copy the `getting_started_drivers_FreeRTOS_sam_e54_xpro` project
2. Optional: delete `hex/` `images/` directories and `readme.md`
3. In MPLAB, rename to `getting_started_drivers_mulib_sam_e54_xpro`
4. In MPLAB Harmony Configurator (MHC):
   * delete FreeRTOS component
   * delete I2C Driver component
   * delete USART Driver component
5. In MHC CORE module:
   * Generate Harmony Application Files => Application Configuration
   * Set # of applications to 1 and name it `app`
   * Uncheck "Enable OSAL"
6. In MHC, click "Generate Code"
7. Delete the following:
 * mulib/firmware/src/config/sam_e54_xpro/freertos_hooks.c
 * mulib/firmware/src/config/sam_e54_xpro/FreeRTOSConfig.h
 * mulib/firmware/src/config/sam_e54_xpro/osal/
 * mulib/firmware/src/config/sam_e54_xpro/driver/

At this point, the following files are specific to the FreeRTOS project, but are
unused:

* app_eeprom_thread.c
* app_eeprom_thread.h
* app_sensor_thread.c
* app_sensor_thread.h
* app_user_input_thread.c
* app_user_input_thread.h

### Mix in the mulib code

On the disk, copy the contents of the mulib distribution to
`firmware/src/third_party/rtos/mulib/`, and create a directory named
`firmware/src/third_party/rtos/mu_platform/'.  The `mu_platform` directory
will hold the platform specific mulib files, which at present are:
* `mu_platform/inc/mu_config.h`
* `mu_platform/inc/mu_rtc.h`
* `mu_platform/inc/mu_time.h`
* `mu_platform/src/mu_rtc.c`
* `mu_platform/src/mu_time.c`
Fill in these files (see the project files) and add them to the MPLAB project.

### Create the mu_rtc.c source code

Launch MHC and add the RTC component with the following settings:
* Gnerate Frequenct Correction API [no]
* RTC Operation Mode: 32-bit counter with single 32-bit compare
* Enable Interrupts? [no]  (but we may in a future power aware version)
* RTC Prescaler: DIV1

We also want to use the external xtal as the RTC source running at 32KHz:

In the MHC => Tools => Clock Configuration:
* Enable 32 KHz Crystal Oscillator
* Enable 32 KHz output
* In Advanced Settings: "Run Oscillator in Standby Sleep Mode" [yes]
* Under RtC Clock Selection, choose XOSC32K

## Tasks

### `printer_task`

The first task to write is printer_task, primarily because it will be useful to
print things on the serial output.
