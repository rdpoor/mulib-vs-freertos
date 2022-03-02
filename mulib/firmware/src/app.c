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

/*******************************************************************************
 End of File
 */
