#include "app.h"

#include "mu_rtc.h"
#include "mu_sched.h"
#include "mu_time.h"
#include "printer_task.h"
#include "sensor_task.h"

void APP_Initialize(void) {
  mu_rtc_init();
  mu_sched_init();
  mu_time_init();
  printer_task_init();
  sensor_task_init();
}

void APP_Tasks(void) { mu_sched_step(); }

/*******************************************************************************
 End of File
 */
