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
4. In MPLAB Harmony Configurator (MHC) delete FreeRTOS component
5. In MHC CORE module:
   * Generate Harmony Application Files => Application Configuration
   * Set # of applications to 1 and name it `app`
6. In MHC, click "Generate Code"
7. Delete the following:
 * mulib/firmware/src/config/sam_e54_xpro/freertos_hooks.c
 * mulib/firmware/src/config/sam_e54_xpro/FreeRTOSConfig.h
 * mulib/firmware/src/config/sam_e54_xpro/osal/osal_freertos.c
 * mulib/firmware/src/config/sam_e54_xpro/osal/osal_freertos.h

At this point, the following files are specific to the FreeRTOS project, but are
unused:

* app_eeprom_thread.c
* app_eeprom_thread.h
* app_sensor_thread.c
* app_sensor_thread.h
* app_user_input_thread.c
* app_user_input_thread.h

### The entry points

The main loop looks something like this (highly condensed):

```
// file: src/main_e54.c
int main (void) {
    SYS_Initialize(NULL);
    while (true) {
        SYS_Tasks();
    }
    return (EXIT_FAILURE);
}

// file: src/config/sam_e54_xpro/initialization.c
void SYS_Initialize (void* data) {
    NVMCTRL_Initialize( );
    ...
    APP_Initialize();  // one-time initialization of user code
    NVIC_Initialize();
}

// file: src/config/sam_e54_xpro/tasks.c
void SYS_Tasks (void) {
    ...
    APP_Tasks();
}
```

So the mulib app code will look like this:

// file: src/app.c
void APP_Initialize (void) {
    // Set up app specific modules...
    eeprom_task_init();
    printer_task_init();
    sensor_task_init();
    ui_task_init();
    // Initialize the scheduler
    mu_sched_init();
}

void APP_Tasks(void) {
    mu_sched_step(mu_rtc_now());
}

## Tasks

* sensor
* user_interface
* eeprom
* printer


void sensor_fn(uintptr_t ctx, uintptr_t arg) {
    sensor_ctx_t *self = (sensor_ctx_t *)ctx;
    (void)arg;

    switch(self->state) {
        case SENSOR_STATE_INIT: {
            // one time setup
        } break;

        case SENSOR_STATE_READING_SENSOR: {
            // read sensor (synchronous operation)
            set_state(SENSOR_STATE_WAIT_FOR_RESOURCES);
            mu_schedule_now(self->sensor_task());
        } break;

        case SENSOR_STATE_WAIT_FOR_RESOURCES: {
            // have data, ready to print and to write
            if (is_printing() && is_writing()) {
                set_state(SENSOR_STATE_AWAIT_COMPLETION);
            } else {
                if (printer_is_idle()) {
                    set_is_printing(true);
                    printer_print(...);
                }
                if (eeprom_is_idle()) {
                    set_is_writing(true);
                    eeprom_write(...);
                }
            }
        } break;

        case SENSOR_STATE_AWAIT_COMPLETION: {
            // Arrive here via callback: printing and writing EEPROM completed.
            set_state(SENSOR_STATE_SLEEPING);
            sleep_until(xxxx);
        } break;

        case SENSOR_STATE_SLEEPING: {
            // woke from sleep state.  
            set_state(SENSOR_STATE_READING_SENSOR);
            mu_sched_now(self->sensor_task());
        } break;

    }  // switch()
}

void ui_fn(uintptr_t ctx, uintptr_t arg) {
    ui_ctx_t *self = (ui_ctx_t *)ctx;
    (void)arg;

    // type anything...
    // NICO SAYS HI LOVE NICO
    // Papa says he loves you too

    switch(self->state) {
        case UI_STATE_INIT: {

        } break;

        case UI_STATE_IDLE: {
            // wait here for kb interrupt task to schedule ui_task
            if (kbhit()) {
                set_state(UI_STATE_AWAITING_EEPROM);
            }
        } break;

        case UI_STATE_AWAITING_EEPROM {
            if (eeprom_is_idle()) {
                eeprom_read( ... );
                set_state(UI_STATE_READING_EEPROM);
            }
        } break;

        case UI_STATE_READING_EEPROM: {
            // wait here for eeprom cb to schedule ui_task
            if (printer_is_idle()) {
                printer_print(msg);
                set_state(UI_STATE_PRINTING);
            }
        } break;

        case UI_STATE_PRINTING: {
            if (printer_is_idle()) {
                set_state(UI_STATE_IDLE);
            }
        } break;
    }  // switch()
}
