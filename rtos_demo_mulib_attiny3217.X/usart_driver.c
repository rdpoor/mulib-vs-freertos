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

#include "mcc_generated_files/mcc.h"

#include "mu_access_mgr.h"
#include "mu_sched.h"
#include "mu_task.h"

// *****************************************************************************
// Private types and definitions

// *****************************************************************************
// Private (static) storage

static mu_access_mgr_t s_tx_access_mgr; // exclusive access to usart transmitter
static mu_access_mgr_t s_rx_access_mgr; // exclusive access to usart receiver
static mu_task_t *s_on_tx_complete;     // invoked when transmit completes
static mu_task_t *s_on_rx_complete;     // invoked when a character is received
static const uint8_t *s_tx_buf;         // first char to be transmitted
static const uint8_t *s_tx_end;         // last char (+1) to be transmitted
static uint8_t *s_rx_buf; // pointer to 1-character buffer for received byte

// *****************************************************************************
// Private (forward) declarations

/**
 * @brief Returns true if a transmit operation is underway.
 */
static bool tx_is_busy(void);

/**
 * @brief Called from interrupt level when the usart transmit buffer can accept
 * a byte
 */
static void isr_dre_cb(void);

/**
 * @brief Low-level function to write a byte to the transmit buffer
 */
static void write_tx_byte(uint8_t byte);

/**
 * @brief Enable DRE (data register empty) interrupts.
 */
static void enable_dre_interrupts(void);

/**
 * @brief Disable DRE (data register empty) interrupts.
 */
static void disable_dre_interrupts(void);

/**
 * @brief Returns true if a receive operation is underway.
 */
static bool rx_is_busy(void);

/**
 * @brief Called from interrupt level when the usart receive buffer has received
 * a byte
 */
static void isr_rxc_cb(void);

/**
 * @brief Enable RXC (receive complete) interrupts.
 */
static void enable_rxc_interrupts(void);

/**
 * @brief Disable RXC (receive complete) interrupts.
 */
static void disable_rxc_interrupts(void);

// *****************************************************************************
// Public code

void usart_driver_init(void) {
  mu_access_mgr_init(&s_tx_access_mgr);
  mu_access_mgr_init(&s_rx_access_mgr);
  s_on_tx_complete = NULL;
  s_on_rx_complete = NULL;
}

void usart_driver_reserve_tx(mu_task_t *task) {
  mu_access_mgr_request_ownership(&s_tx_access_mgr, task);
}

void usart_driver_release_tx(mu_task_t *task) {
  mu_access_mgr_release_ownership(&s_tx_access_mgr, task);
}

bool usart_driver_owns_tx(mu_task_t *task) {
  return mu_access_mgr_has_ownership(&s_tx_access_mgr, task);
}

void usart_driver_reserve_rx(mu_task_t *task) {
  mu_access_mgr_request_ownership(&s_rx_access_mgr, task);
}

void usart_driver_release_rx(mu_task_t *task) {
  mu_access_mgr_release_ownership(&s_rx_access_mgr, task);
}

bool usart_driver_owns_rx(mu_task_t *task) {
  return mu_access_mgr_has_ownership(&s_rx_access_mgr, task);
}

usart_driver_err_t usart_driver_tx(const uint8_t *buf,
                                   size_t n_bytes,
                                   mu_task_t *on_tx_complete) {
  usart_driver_err_t ret = USART_DRIVER_ERR_NONE;

  if (tx_is_busy()) {
    // Driver is currently processing another request.
    ret = USART_DRIVER_ERR_BUSY;

  } else if (buf == NULL) {
    ret = USART_DRIVER_ERR_BAD_PARAM;

  } else if (n_bytes == 0) {
    // Zero length string?  Invoke callback immediately...
    s_tx_buf = NULL;               // indicate that usart tx is not busy.
    mu_sched_now(on_tx_complete);

  } else {
    // Set up state and send first byte: DRE interrupt handler will do the rest.
    s_tx_buf = buf;
    s_tx_end = &buf[n_bytes];
    s_on_tx_complete = on_tx_complete;
    write_tx_byte(*s_tx_buf++);
    enable_dre_interrupts();
  }
  return ret;
}

usart_driver_err_t usart_driver_rx(uint8_t *rx_buf, mu_task_t *on_rx_complete) {
  usart_driver_err_t ret = USART_DRIVER_ERR_NONE;

  if (rx_is_busy()) {
    // Driver is currently processing another request.
    ret = USART_DRIVER_ERR_BUSY;

  } else if (rx_buf == NULL) {
    ret = USART_DRIVER_ERR_BAD_PARAM;

  } else {
    s_rx_buf = rx_buf;
    s_on_rx_complete = on_rx_complete;
    enable_rxc_interrupts();
  }
  return ret;
}

ISR(USART0_DRE_vect) {
  // tx data register is empty and ready to accept another byte
  isr_dre_cb();
}

ISR(USART0_RXC_vect) {
  // data received.
  isr_rxc_cb();
}

// *****************************************************************************
// Private (static) code

// ==========
// transmit

// NOTE: we use s_tx_buf != NULL to indicate that the usart tx is in use...
static bool tx_is_busy(void) { return s_tx_buf != NULL; }

static void isr_dre_cb(void) {
  // arrive here at interrupt level when the tx buffer can receive a byte
  if (s_tx_buf == s_tx_end) {
    // There are no more bytes to transmit -- disable Data Register Empty
    // interrupts and invoke the on_callback task.
    disable_dre_interrupts();
    s_tx_buf = NULL;               // indicates that usart tx is no longer busy
    mu_sched_from_isr(s_on_tx_complete);
  } else {
    // Write another byte to the USART TX data buffer
    write_tx_byte(*s_tx_buf++);
  }
}

static void write_tx_byte(uint8_t byte) { USART0.TXDATAL = byte; }

static void enable_dre_interrupts(void) { USART0.CTRLA |= USART_DREIE_bm; }

static void disable_dre_interrupts(void) { USART0.CTRLA &= ~USART_DREIE_bm; }

// ==========
// receive

// NOTE: we use s_rx_buf != NULL to indicate that the usart rx is in use...
static bool rx_is_busy(void) { return s_rx_buf != NULL; }

static void isr_rxc_cb(void) {
  // Arrive here at interrupt level with a received byte in RXDATAL
  uint8_t data;
  data = USART0.RXDATAH; // Read (and ignore) DATAH in case it was set.
  data = USART0.RXDATAL; // Read (and keep) DATAL
  disable_rxc_interrupts();
  *s_rx_buf = data; // store received char in user's buffer
  s_rx_buf = NULL;  // indicate that usart tx is no longer busy.
  mu_sched_from_isr(s_on_rx_complete);
}

static void enable_rxc_interrupts(void) { USART0.CTRLA |= USART_RXCIE_bm; }

static void disable_rxc_interrupts(void) { USART0.CTRLA &= ~USART_RXCIE_bm; }
