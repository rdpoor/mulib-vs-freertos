/**
 * @file ui_platform.c
 * @brief platform-specific support for ui_task
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

#include "ui_platform.h"

#include "definitions.h"
#include "ui_task.h"
#include <stdbool.h>
#include <stdint.h>

// *****************************************************************************
// Private types and definitions

// *****************************************************************************
// Private (static, forward) declarations

/**
 * @brief Called from interrupt level when a character is received on usart.
 */
static void ui_platform_rx_cb(uintptr_t context);

// *****************************************************************************
// Private (static) storage

// *****************************************************************************
// Public code

// *****************************************************************************
// Platform specific code below here.

void ui_platform_init(void) {
  SERCOM2_USART_ReadCallbackRegister(ui_platform_rx_cb, 0);
}

void ui_platform_rx(void) {
  static char ch;

  SERCOM2_USART_ReadAbort();    // flush any stray input
  SERCOM2_USART_Read(&ch, 1);   // start a read of one byte.
}

// *****************************************************************************
// Private (static) code

static void ui_platform_rx_cb(uintptr_t context) {
  (void)context;
  ui_task_handle_irq();
}
