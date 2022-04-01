/**
 * MIT License
 *
 * Copyright (c) 2021-2022 R. D. Poor <rdpoor@gmail.com>
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

#include "utils.h"
#include <stdint.h>
#include <string.h>

// *****************************************************************************
// Private types and definitions

// *****************************************************************************
// Private (static) storage

// *****************************************************************************
// Private (forward) declarations

// *****************************************************************************
// Public code

char *utils_append_string(char *dst, const char *src) {
  char *e = &dst[strlen(dst)];
  strcpy(e, src);
  return dst;
}

char *utils_append_int(char *dst, uint32_t val) {
  char *b = &dst[strlen(dst)];
  char *e = b;

  do {
    *e++ = (val % 10) + '0';
    val = val / 10;
  } while (val > 0);
  // null terminate the string
  *e = '\0';
  // str now contains the stringified number, but least significant digit first.
  // Reverse it...
  while (--e > b) {
    char tmp = *b;
    *b++ = *e;
    *e-- = tmp;
  }
  return dst;
}

char *utils_append_char(char *dst, char ch) {
  char *e = &dst[strlen(dst)];
  *e++ = ch;
  *e = '\0';
  return dst;
}

// *****************************************************************************
// Private (static) code
