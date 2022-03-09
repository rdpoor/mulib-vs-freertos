/**
 * @file i2c_platform.h
 * @brief platform-specific support for i2c_task
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

#ifndef _I2C_PLATFORM_H_
#define _I2C_PLATFORM_H_

// *****************************************************************************
// Includes

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

// =============================================================================
// C++ compatibility

#ifdef __cplusplus
extern "C" {
#endif

// *****************************************************************************
// Public types and definitions

// *****************************************************************************
// Public declarations

/**
 * @brief Perform platform-specific initialization.  Called once at startup.
 */
void i2c_platform_init(void);

/**
 * @brief Initiate an asynchronous i2c transfer.
 *
 * @param addr The i2c peripheral address
 * @param tx_buf The bytes to be transmitted
 * @param tx_size The number of bytes to be transmitted
 * @param rx_buf The buffer to receive the result
 * @param rx_size The number of bytes to read.
 * @return true on any failure, false on success.
 */
bool i2c_platform_xfer(uint8_t addr,
                       const uint8_t *tx_buf,
                       size_t tx_size,
                       uint8_t *rx_buf,
                       size_t rx_size);

#ifdef __cplusplus
}
#endif

#endif /* #ifndef _I2C_PLATFORM_H_ */
