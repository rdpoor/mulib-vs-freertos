#include "app.h"
#include "mu_rtc.h"
#include "mu_sched.h"

void APP_Initialize (void) {
}


void APP_Tasks (void) {
    mu_sched_step(mu_rtc_now());
}


/*******************************************************************************
 End of File
 */
