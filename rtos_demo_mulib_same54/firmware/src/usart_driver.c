/**
 * MIT License
 *
 * Copyright (c) 2021 R. D. Poor <rdpoor@gmail.com>
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
 */

// *****************************************************************************
// Includes

#include "usart_driver.h"

#include "definitions.h"
#include "mu_sched.h"
#include "mu_task.h"

// *****************************************************************************
// Private types and definitions

// *****************************************************************************
// Private (static) storage

static mu_task_t *s_on_tx_complete; // invoked when transmit completes
static mu_task_t *s_on_rx_complete; // invoked when a character is received

// *****************************************************************************
// Private (forward) declarations

static void usart_tx_cb(uintptr_t context);
static void usart_rx_cb(uintptr_t context);

// *****************************************************************************
// Public code

void usart_driver_init(void) {
  s_on_tx_complete = NULL;
  s_on_rx_complete = NULL;
  SERCOM2_USART_WriteCallbackRegister(usart_tx_cb, (uintptr_t)0);
  SERCOM2_USART_ReadCallbackRegister(usart_rx_cb, (uintptr_t)0);
}

usart_driver_err_t
usart_driver_tx(const uint8_t *buf, size_t n_bytes, mu_task_t *on_tx_complete) {
  usart_driver_err_t ret = USART_DRIVER_ERR_NONE;
  if (SERCOM2_USART_WriteIsBusy()) {
    ret = USART_DRIVER_ERR_BUSY;
  } else {
    s_on_tx_complete = on_tx_complete;
    if (!SERCOM2_USART_Write((void *)buf, n_bytes)) {
      ret = USART_DRIVER_ERR_BAD_PARAM;
    }
  }
  return ret;
}

usart_driver_err_t usart_driver_rx(uint8_t *rx_buf, mu_task_t *on_rx_complete) {
  usart_driver_err_t ret = USART_DRIVER_ERR_NONE;
  if (SERCOM2_USART_ReadIsBusy()) {
    ret = USART_DRIVER_ERR_BUSY;
  } else {
    s_on_rx_complete = on_rx_complete;
    SERCOM2_USART_ReadAbort(); // flush any stray input
    if (!SERCOM2_USART_Read(rx_buf, 1)) {
      ret = USART_DRIVER_ERR_BAD_PARAM;
    }
  }
  return ret;
}

// *****************************************************************************
// Private (static) code

// Called from interrupt level when printing completes
static void usart_tx_cb(uintptr_t context) {
  (void)context;
  if (s_on_tx_complete != NULL) {
    mu_sched_from_isr(s_on_tx_complete);
  }
}

// Called from interrupt level when a character is received.
static void usart_rx_cb(uintptr_t context) {
  (void)context;
  if (s_on_rx_complete != NULL) {
    mu_sched_from_isr(s_on_rx_complete);
  }
}
