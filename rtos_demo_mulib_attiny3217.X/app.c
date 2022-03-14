#include "app.h"

#include "i2c_task.h"
#include "mu_rtc.h"
#include "mu_sched.h"
#include "mu_time.h"
#include "sensor_task.h"
#include "ui_task.h"
#include <stdio.h>

static void flush_rx(void) {
    while (USART0_IsRxReady()) {
        uint8_t ch = USART0_GetData();
        (void) ch;
    }
}

void APP_Initialize(void) {
  i2c_task_init();
  mu_rtc_init();
  mu_sched_init();
  mu_time_init();
  sensor_task_init();
  ui_task_init();
  
    printf("\nwaiting for a typed char: ");
    while (1) {
      if (USART0_IsRxReady()) {
          flush_rx();
      }
    }
}

void APP_Tasks(void) {
  mu_sched_step();
}

// For reasons I don't understand yet, if the following is omitted, the linker
// includes a LARGE body of code related to printing floating point values.  But
// by defining _printf_float() here, none of that code is included.  (And as far
// as I can tell, this app never prints floating point values, so this appears
// to be safe.)
void _printf_float(void) {
  asm("nop");
}


/*******************************************************************************
 End of File
 */
