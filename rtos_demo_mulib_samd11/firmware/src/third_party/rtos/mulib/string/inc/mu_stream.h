/**
 * @file mu_stream.h
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

#ifndef _MU_STREAM_H_
#define _MU_STREAM_H_

// *****************************************************************************
// Includes

#include "mu_str.h"
#include <stdbool.h>
#include <stdint.h>
#include <stddef.h>

// =============================================================================
// C++ compatibility

#ifdef __cplusplus
extern "C" {
#endif

// *****************************************************************************
// Public types and definitions

typedef void (*mu_stream_writer_fn)(const uint8_t *data,
                                    size_t n_bytes,
                                    void *user_data);

typedef struct {
  mu_stream_writer_fn writer;
  void *user_data;
  mu_str_t str;
} mu_stream_t;

// *****************************************************************************
// Public declarations

mu_stream_t *mu_stream_init(mu_stream_t *stream,
                            const mu_strbuf_t *strbuf,
                            mu_stream_writer_fn writer,
                            void *user_data);

void mu_stream_flush(mu_stream_t *stream);

void mu_stream_write_byte(mu_stream_t *stream, uint8_t byte);

void mu_stream_write_buffer(mu_stream_t *stream,
                            const uint8_t *buffer,
                            size_t n_bytes);

void mu_stream_write_cstring(mu_stream_t *stream, const char *string);

void mu_stream_write_16be(mu_stream_t *stream, uint16_t value);

void mu_stream_write_16le(mu_stream_t *stream, uint16_t value);

void mu_stream_write_32be(mu_stream_t *stream, uint32_t value);

void mu_stream_write_32le(mu_stream_t *stream, uint32_t value);

#ifdef __cplusplus
}
#endif

#endif /* #ifndef _MU_STREAM_H_ */
