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

/**
 * @file mu_usart0.h
 *
 * @brief Support for reading and writing serial data via usart
 */

#ifndef _MU_USART0_H_
#define _MU_USART0_H_

// *****************************************************************************
// Includes

#include "mu_task.h"
#include <stddef.h>
#include <stdint.h>

// *****************************************************************************
// C++ Compatibility

#ifdef __cplusplus
extern "C" {
#endif

// *****************************************************************************
// Public types and definitions

typedef enum {
  MU_USART0_ERR_NONE,
  MU_USART0_ERR_BUSY,
  MU_USART0_ERR_BAD_PARAM,
} mu_usart0_err_t;

// *****************************************************************************
// Public declarations

/**
 * @brief Initialize USART0, called once at startup.
 */
void mu_usart0_init(void);

/**
 * @brief Initiate a transmit operation to send n_chars from buf over the USART,
 * triggering on_completion when the last byte has been transmitted (or error).
 *
 * Note: Do not modify buf until the transmit operation has completed.
 *
 * @param buf The data bytes to be transmitted.
 * @param n_bytes The number of data bytes to be transmitted.
 * @param on_completion If non-NULL, a task to be invoked after the last byte
 *        has been transmitted.
 * @return MU_UART_ERR_BUSY if the uart is busy, MU_UART_ERR_NONE on success.
 */
mu_usart0_err_t mu_usart0_tx(const uint8_t *buf,
                             size_t n_bytes,
                             mu_task_t *on_completion);

/**
 * @brief Initiate a receive operation to receive one byte from the USART,
 * triggering on_completion when a byte is received.
 *
 * @param c Pointer to the uint8_t to receive the character.  Pass NULL if you
 *        only want to detect a keystroke.
 * @param on_completion If non-NULL, task to be invoked when a byte is received.
 * @return MU_UART_ERR_BUSY if the uart is busy, MU_UART_ERR_NONE on success.
 */
mu_usart0_err_t mu_usart0_rx(uint8_t *ch, mu_task_t *on_reception);

#ifdef __cplusplus
}
#endif

#endif /* #ifndef _MU_USART0_H_ */
