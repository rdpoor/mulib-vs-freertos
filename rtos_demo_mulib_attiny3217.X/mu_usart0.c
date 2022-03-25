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

#include "mu_usart0.h"

#include "mcc_generated_files/mcc.h"
// #include "../utils/atomic.h"
// #include "../config/clock_config.h"

#include "mu_sched.h"
#include "mu_task.h"

// *****************************************************************************
// Private types and definitions

/* Normal Mode, Baud register value */
#define USART0_BAUD_RATE(BAUD_RATE)                                            \
  (((float)10000000 * 64 / (16 * (float)BAUD_RATE)) + 0.5)

typedef struct {
  const uint8_t *tx_buf;     // first char to be transmitted
  const uint8_t *tx_end;     // last char (+1) to be transmitted
  mu_task_t *on_completion;  // invoked when transmit completes
  uint8_t *rx_buf;           // pointer to 1-character buffer for received byte
  mu_task_t *on_reception;   // invoked when a character is received
} usart_ctx_t;

// *****************************************************************************
// Private (static) storage

static usart_ctx_t s_usart_ctx;

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

void mu_usart0_init(void) {
    // already configured via MCC
}

mu_usart0_err_t mu_usart0_tx(const uint8_t *buf,
                                         size_t n_bytes,
                                         mu_task_t *on_completion) {
  mu_usart0_err_t ret = MU_USART0_ERR_NONE;

  if (tx_is_busy()) {
    // Driver is currently processing another request.
    ret = MU_USART0_ERR_BUSY;

  } else if (buf == NULL) {
    ret = MU_USART0_ERR_BAD_PARAM;

  } else if (n_bytes == 0) {
    // Zero length string?  Invoke callback immediately...
    s_usart_ctx.tx_buf = NULL;
    mu_sched_now(on_completion);

  } else {
    // Set up state and send first byte: DRE interrupt handler will do the rest.
    s_usart_ctx.tx_buf = buf;
    s_usart_ctx.tx_end = &buf[n_bytes];
    s_usart_ctx.on_completion = on_completion;
    write_tx_byte(*s_usart_ctx.tx_buf++);
    enable_dre_interrupts();
  }
  return ret;
}

mu_usart0_err_t mu_usart0_rx(uint8_t *rx_buf, mu_task_t *on_reception) {
  mu_usart0_err_t ret = MU_USART0_ERR_NONE;

  if (rx_is_busy()) {
    // Driver is currently processing another request.
    ret = MU_USART0_ERR_BUSY;

  } else {
    s_usart_ctx.rx_buf = rx_buf;
    s_usart_ctx.on_reception = on_reception;
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

static bool tx_is_busy(void) {
  return  s_usart_ctx.on_completion != NULL;
}

static void isr_dre_cb(void) {
  // arrive here at interrupt level when the tx buffer can receive a byte
  if (s_usart_ctx.tx_buf == s_usart_ctx.tx_end) {
    disable_dre_interrupts();
    mu_sched_from_isr(s_usart_ctx.on_completion);
    s_usart_ctx.on_completion = NULL;  // no longer busy
  } else {
    write_tx_byte(*s_usart_ctx.tx_buf++);
  }
}

static void write_tx_byte(uint8_t byte) { USART0.TXDATAL = byte; }

static void enable_dre_interrupts(void) { USART0.CTRLA |= USART_DREIE_bm; }

static void disable_dre_interrupts(void) { USART0.CTRLA &= ~USART_DREIE_bm; }

// ==========
// receive

static bool rx_is_busy(void) {
  return  s_usart_ctx.on_reception != NULL;
}

static void isr_rxc_cb(void) {
  // Arrive here at interrupt level with a received byte in RXDATAL
  uint8_t data;
  data = USART0.RXDATAH;    // Read (and ignore) DATAH in case it was set.
  data = USART0.RXDATAL;    // Read (and keep) DATAL
  disable_rxc_interrupts();
  if (s_usart_ctx.rx_buf != NULL) {
    *s_usart_ctx.rx_buf = data;       // store received char in user's buffer
  }
  mu_sched_from_isr(s_usart_ctx.on_reception);
  s_usart_ctx.on_reception = NULL;    // no longer busy.
}

static void enable_rxc_interrupts(void) { USART0.CTRLA |= USART_RXCIE_bm; }

static void disable_rxc_interrupts(void) { USART0.CTRLA &= ~USART_RXCIE_bm; }
