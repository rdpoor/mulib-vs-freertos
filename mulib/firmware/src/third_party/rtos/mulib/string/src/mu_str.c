/**
 * MIT License
 *
 * Copyright (c) 2020 R. Dunbar Poor <rdpoor@gmail.com>
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

// =============================================================================
// includes

#include "mu_str.h"
#include "mu_strbuf.h"

#include <stdarg.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

// =============================================================================
// local types and definitions

// =============================================================================
// local (forward) declarations

static size_t str_capacity(const mu_str_t *str);

static uint8_t str_append(mu_str_t *dst, const uint8_t *src, int count);

// =============================================================================
// local storage

// =============================================================================
// public code

mu_str_t *mu_str_init_rd(mu_str_t *str, const mu_strbuf_t *buf) {
  str->buf = buf;
  return mu_str_reset_rd(str);
}

mu_str_t *mu_str_init_wr(mu_str_t *str, const mu_strbuf_t *buf) {
  str->buf = buf;
  return mu_str_reset_wr(str);
}

mu_str_t *mu_str_reset_rd(mu_str_t *str) {
  str->s = 0;
  str->e = str_capacity(str);
  return str;
}

mu_str_t *mu_str_reset_wr(mu_str_t *str) {
  str->s = 0;
  str->e = 0;
  return str;
}

mu_str_t *mu_str_copy(mu_str_t *dst, const mu_str_t *src) {
  return (mu_str_t *)memcpy(dst, src, sizeof(mu_str_t));
}

int mu_str_index(mu_str_t *str, uint8_t byte) {
  for (int i = str->s; i < str->e; i++) {
    uint8_t b = mu_strbuf_rdata(str->buf)[i];
    if (b == byte) {
      return i - str->s;
    }
  }
  // not found
  return -1;
}

mu_str_t *mu_str_slice(mu_str_t *dst, const mu_str_t *src, int start, int end) {
  size_t len = mu_str_available_rd(src);
  size_t s1, e1;

  if (dst != src) {
    mu_str_copy(dst, src);
  }

  if (start >= 0) {
    s1 = start;
  } else {
    s1 = len + start;
  }

  if (end >= 0) {
    e1 = end;
  } else {
    e1 = len + end;
  }

  // clamp
  if (s1 > len) {
    s1 = len;
  }
  if (e1 < 0) {
    e1 = 0;
  }
  if (s1 > e1) {
    s1 = e1;
  }

  // here, s1 and e1 refer to the start and end of the slice, relative to s.
  dst->e = dst->s + e1;
  dst->s = dst->s + s1;

  return dst;
}

size_t mu_str_available_rd(const mu_str_t *str) { return str->e - str->s; }

size_t mu_str_available_wr(const mu_str_t *str) {
  return str_capacity(str) - str->e;
}

size_t mu_str_increment_start(mu_str_t *str, size_t n_bytes) {
  size_t s1 = str->s;

  str->s += n_bytes;
  if (str->s > str->e) {
    str->s = str->e;
  }
  return str->s - s1; // return amount by which s incremented
}

size_t mu_str_increment_end(mu_str_t *str, size_t n_bytes) {
  size_t e1 = str->e;

  str->e += n_bytes;
  if (str->e > str_capacity(str)) {
    str->e = str_capacity(str);
  }
  return str->e - e1; // return amount by which e incremented
}

const uint8_t *mu_str_ref_rd(const mu_str_t *str) {
  return &mu_strbuf_rdata(str->buf)[str->s];
}

uint8_t *mu_str_ref_wr(const mu_str_t *str) {
  return &mu_strbuf_wdata(str->buf)[str->e];
}

bool mu_str_read_byte(mu_str_t *str, uint8_t *byte) {
  if (mu_str_available_rd(str) == 0) {
    return false;
  }
  *byte = *mu_str_ref_rd(str);
  str->s += 1;
  return true;
}

bool mu_str_write_byte(mu_str_t *str, uint8_t byte) {
  if (mu_str_available_wr(str) == 0) {
    return false;
  }
  *mu_str_ref_wr(str) = byte;
  str->e += 1;
  return true;
}

size_t mu_str_append(mu_str_t *dst, const mu_str_t *src) {
  return str_append(dst, mu_str_ref_rd(src), mu_str_available_rd(src));
}

size_t mu_str_append_cstr(mu_str_t *dst, const char *cstr) {
  return str_append(dst, (const uint8_t *)cstr, strlen(cstr));
}

size_t mu_str_printf(mu_str_t *dst, const char *fmt, ...) {
  size_t avail = mu_str_available_wr(dst);
  size_t written = 0;

  if (avail > 0) {
    va_list ap;
    va_start(ap, fmt);
    written = vsnprintf((char *)mu_str_ref_wr(dst), avail, fmt, ap);
    va_end(ap);
    // Note: written is the number of bytes that *would* have been written if
    // there was enough room, NOT the number of bytes actually written.
    if (written > avail) {
      written = avail;
    }
    mu_str_increment_end(dst, written);
  }
  return written;
}

size_t mu_str_to_cstr(const mu_str_t *src, char *cstr, size_t len) {
  size_t copied = mu_str_available_rd(src);
  if (copied > len - 1) {
    copied = len - 1; // always leave room for null termination
  }
  memcpy(cstr, mu_str_ref_rd(src), copied);
  cstr[copied] = '\0'; // null terminate

  return copied; // # of bytes copied, not including null
}

int mu_str_strncmp(mu_str_t *str1, mu_str_t *str2, size_t len) {
  return strncmp((const char *)mu_str_ref_rd(str1),
                 (const char *)mu_str_ref_rd(str2),
                 len);
}

int mu_str_strcmp(mu_str_t *str1, mu_str_t *str2) {
  size_t len1 = mu_str_available_rd(str1);
  size_t len2 = mu_str_available_rd(str2);
  return strncmp((const char *)mu_str_ref_rd(str1),
                 (const char *)mu_str_ref_rd(str2),
                 len1 < len2 ? len1 : len2);
}

int mu_str_find(mu_str_t *str, char *substring) {
  uint8_t *a, *b;
  const uint8_t *string = mu_str_ref_rd(str) - str->s; // includes ->s
  int st = str->s;
  int nd = st + mu_str_available_rd(str);
  if (*substring == 0) // mimick the behavior of c lib strstr function, which a
                       // ptr to the beginning of the searched string
    return 0;

  for (int i = st; i < nd; i++) {
    a = (uint8_t *)string + i;
    b = (uint8_t *)substring; // reset to beginning of substring
    if (*a != *b)
      continue;
    while (1) {
      if (*b == 0)
        return i - st; // at the end of substring, we must have found it!
      if (*a++ != *b++)
        break;
    }
  }
  return -1;
}

mu_str_t *mu_str_trim_left(mu_str_t *str, bool (*predicate)(char ch)) {
  while ((str->s < str->e) && predicate(mu_strbuf_rdata(str->buf)[str->s])) {
    str->s += 1;
  }
  return str;
}

mu_str_t *mu_str_trim_right(mu_str_t *str, bool (*predicate)(char ch)) {
  while ((str->s < str->e) && predicate(mu_strbuf_rdata(str->buf)[str->e-1])) {
    str->e -= 1;
  }
  return str;
}

mu_str_t *mu_str_trim(mu_str_t *str, bool (*predicate)(char ch)) {
  return mu_str_trim_right(mu_str_trim_left(str, predicate), predicate);
}

// =============================================================================
// local (static) code

static size_t str_capacity(const mu_str_t *str) {
  return mu_strbuf_capacity(str->buf);
}

static uint8_t str_append(mu_str_t *dst, const uint8_t *src, int count) {
  size_t available = mu_str_available_wr(dst);
  if (count > available) {
    count = available;
  }
  memcpy(mu_str_ref_wr(dst), src, count);
  mu_str_increment_end(dst, count);
  return count;
}
