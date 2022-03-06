/**
 * @file printer_platform.c
 * @brief platform-specific support for printer_task
 *
 * MIT License
 *
 * Copyright (c) 2022 R. Dunbar Poor
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE.
 *
 */

// *****************************************************************************
// Includes

#include "printer_platform.h"

#include "mcc_generated_files/mcc.h"
#include "printer_task.h"
#include <stdbool.h>
#include <stdint.h>

// *****************************************************************************
// Private types and definitions

// *****************************************************************************
// Private (static, forward) declarations

/**
 * @brief Called from interrrupt level when tx operation completes.
 */
static void printer_platform_tx_cb(void);

// *****************************************************************************
// Private (static) storage

// *****************************************************************************
// Public code

void printer_platform_init(void) {
  // register to receive interrupt callbacks
  USART0_SetTXISRCb(printer_platform_tx_cb);
}

bool printer_platform_tx(const uint8_t *buf, size_t n_bytes) {
  (void)buf;
  (void)n_bytes;
  return false;
}

// *****************************************************************************
// Private (static) code

static void printer_platform_tx_cb(void) {
  // perform regular processing...
  USART0_DefaultTxIsrCb();
  // Implementation note: The usart.h API does not provide a means to know if
  // the entire buffer has been printed.  However, USART0_DefaultTxIsrCb
  // disables the USART0 TX interrupt upon completion, so we use that.
  bool printing_completed = (USART0.CTRLA & (1 << USART_DREIE_bp)) == 0;

  // If transmit buffer is empty, resume printer_task state machine at next
  // call to sched_step()
  if (printing_completed) {
    printer_task_handle_irq();
  }
}
