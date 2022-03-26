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
 * @file usart.h
 *
 * @brief mulib-aware driver for reading and writing serial data via usart
 */

#ifndef _USART_DRIVER_H_
#define _USART_DRIVER_H_

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
  USART_DRIVER_ERR_NONE,
  USART_DRIVER_ERR_BUSY,
  USART_DRIVER_ERR_BAD_PARAM,
} usart_driver_err_t;

// *****************************************************************************
// Public declarations

/**
 * @brief Initialize USART0, called once at startup.
 */
void usart_driver_init(void);

/**
 * @brief Gain exclusive access to the usart transmitter.
 *
 * When exclusive access is granted, task will be invoked.
 */
void usart_driver_reserve_tx(mu_task_t *task);

/**
 * @brief Relinquish exclusive access of the usart transmitter.
 */
void usart_driver_release_tx(mu_task_t *task);

/**
 * @brief Return true if task has exclusive ownership of the usart transmitter.
 */
bool usart_driver_owns_tx(mu_task_t *task);

/**
 * @brief Gain exclusive access to the usart receiver.
 *
 * When exclusive access is granted, task will be invoked.
 */
void usart_driver_reserve_rx(mu_task_t *task);

/**
 * @brief Relinquish exclusive access of the usart receiver.
 */
void usart_driver_release_rx(mu_task_t *task);

/**
 * @brief Return true if task has exclusive ownership of the usart receiver.
 */
bool usart_driver_owns_rx(mu_task_t *task);

/**
 * @brief Initiate a transmit operation to send n_chars from buf over the USART,
 * triggering on_completion when the last byte has been transmitted (or error).
 *
 * Note: Do not modify buf until the transmit operation has completed.
 *
 * @param buf The data bytes to be transmitted.
 * @param n_bytes The number of data bytes to be transmitted.
 * @param on_tx_complete If non-NULL, a task to be invoked after the last byte
 *        has been transmitted.
 * @return MU_UART_ERR_BUSY if the uart is busy, MU_UART_ERR_NONE on success.
 */
usart_driver_err_t
usart_driver_tx(const uint8_t *buf, size_t n_bytes, mu_task_t *on_tx_complete);

/**
 * @brief Initiate a receive operation to receive one byte from the USART,
 * triggering on_completion when a byte is received.
 *
 * @param ch Pointer to the uint8_t to receive the character.
 * @param on_rx_complete task to be invoked when a byte is received (or NULL).
 * @return MU_UART_ERR_BUSY if the uart is busy, MU_UART_ERR_NONE on success.
 */
usart_driver_err_t usart_driver_rx(uint8_t *ch, mu_task_t *on_rx_complete);

#ifdef __cplusplus
}
#endif

#endif /* #ifndef _USART_DRIVER_H_ */
