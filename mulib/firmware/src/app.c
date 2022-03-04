#include "app.h"

#include "i2c_task.h"
#include "mu_rtc.h"
#include "mu_sched.h"
#include "mu_time.h"
#include "printer_task.h"
#include "sensor_task.h"
#include "ui_task.h"

void APP_Initialize(void) {
  i2c_task_init();
  mu_rtc_init();
  mu_sched_init();
  mu_time_init();
  printer_task_init();
  sensor_task_init();
  ui_task_init();
}

void APP_Tasks(void) { mu_sched_step(); }

// For reasons I don't understand yet, if the following is omitted, the linker
// includes a LARGE body of code related to printing gloating point values.  But
// by defining _printf_float() here, none of that code is included.  (And as far
// as I can tell, this code never prints floating point values, so this appears
// to be safe.)
void _printf_float(void) {
  asm("nop");
}


/*******************************************************************************
 End of File
 */
