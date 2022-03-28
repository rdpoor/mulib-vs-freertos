/**
 * @file mu_stream.c
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

#include "mu_stream.h"
#include "mu_str.h"
#include "mu_strbuf.h"
#include <stdbool.h>
#include <stdint.h>
#include <string.h>

// *****************************************************************************
// Local (private) types and definitions

// *****************************************************************************
// Local (private, static) forward declarations

// *****************************************************************************
// Local (private, static) storage

// *****************************************************************************
// Public code

mu_stream_t *mu_stream_init(mu_stream_t *stream,
                            const mu_strbuf_t *strbuf,
                            mu_stream_writer_fn writer,
                            void *user_data) {
  stream->writer = writer;
  stream->user_data = user_data;
  mu_str_init_wr(&stream->str, strbuf);
  return stream;
}

void mu_stream_flush(mu_stream_t *stream) {
  size_t n_bytes = mu_str_available_rd(&stream->str);
  if (n_bytes > 0) {
    stream->writer(mu_str_ref_rd(&stream->str), n_bytes, stream->user_data);
    mu_str_reset_wr(&stream->str);
  }
}

void mu_stream_write_byte(mu_stream_t *stream, uint8_t byte) {
  if (mu_str_available_wr(&stream->str) == 0) {
    mu_stream_flush(stream);
  }
  mu_str_write_byte(&stream->str, byte);
}

void mu_stream_write_buffer(mu_stream_t *stream,
                            const uint8_t *buffer,
                            size_t n_bytes) {
  for (size_t i = 0; i < n_bytes; i++) {
    mu_stream_write_byte(stream, *buffer++);
  }
}

void mu_stream_write_cstring(mu_stream_t *stream, const char *string) {
  mu_stream_write_buffer(stream, (const uint8_t *)string, strlen(string));
}

void mu_stream_write_16be(mu_stream_t *stream, uint16_t value) {
  mu_stream_write_byte(stream, (value >> 8) & 0xff);
  mu_stream_write_byte(stream, (value >> 0) & 0xff);
}

void mu_stream_write_16le(mu_stream_t *stream, uint16_t value) {
  mu_stream_write_byte(stream, (value >> 0) & 0xff);
  mu_stream_write_byte(stream, (value >> 8) & 0xff);
}

void mu_stream_write_32be(mu_stream_t *stream, uint32_t value) {
  mu_stream_write_byte(stream, (value >> 24) & 0xff);
  mu_stream_write_byte(stream, (value >> 16) & 0xff);
  mu_stream_write_byte(stream, (value >> 8) & 0xff);
  mu_stream_write_byte(stream, (value >> 0) & 0xff);
}

void mu_stream_write_32le(mu_stream_t *stream, uint32_t value) {
  mu_stream_write_byte(stream, (value >> 0) & 0xff);
  mu_stream_write_byte(stream, (value >> 8) & 0xff);
  mu_stream_write_byte(stream, (value >> 16) & 0xff);
  mu_stream_write_byte(stream, (value >> 24) & 0xff);
}

// *****************************************************************************
// Local (private, static) code

// *****************************************************************************
// Standalone unit test

// #define MU_STREAM_STANDALONE_TEST
#ifdef MU_STREAM_STANDALONE_TEST

// gcc -Wall -g -o test_mu_stream mu_stream.c mu_str.c mu_strbuf.c ;
// ./test_mu_stream
#include <stdio.h>

#define RCV_BUF_SIZE 24
#define XMT_BUF_SIZE 5

size_t idx;
uint8_t rcv_buf[RCV_BUF_SIZE];
uint8_t xmt_buf[XMT_BUF_SIZE];

void writer(const uint8_t *buf, size_t n_bytes, void *user_data) {
  for (size_t i = 0; i < n_bytes; i++) {
    rcv_buf[idx++] = *buf++;
  }
}

void reset(void) {
  idx = 0;
  memset(rcv_buf, 0, sizeof(rcv_buf));
}

int main(void) {
  mu_strbuf_t strbuf;
  mu_stream_t stream;

  printf("\nStarting mu_stream unit tests...");

  mu_stream_init(
      &stream, mu_strbuf_init_rw(&strbuf, xmt_buf, XMT_BUF_SIZE), writer, NULL);
  // test 1: write a string...
  reset();
  mu_stream_write_cstring(&stream, "Hi there!");
  // Don't expect the whole string until calling flush()...
  if (strcmp((const char *)rcv_buf, "Hi th") != 0) {
    printf("\nexpected 'Hi th', got %s", rcv_buf);
  }
  mu_stream_flush(&stream);
  if (strcmp((const char *)rcv_buf, "Hi there!") != 0) {
    printf("\nexpected 'Hi there!', got %s", rcv_buf);
  }

  // test 2: be and le
  reset();
  mu_stream_write_32be(&stream, 0x01020304);
  mu_stream_write_32le(&stream, 0x05060708);
  mu_stream_flush(&stream);
  static uint8_t expected[] = {0x01, 0x02, 0x03, 0x04, 0x08, 0x07, 0x06, 0x05};
  for (size_t i = 0; i < sizeof(expected); i++) {
    if (rcv_buf[i] != expected[i]) {
      printf("\nexpected 0x%02x, got 0x%02x", expected[i], rcv_buf[i]);
    }
  }

  printf("\n...Finished mu_stream unit tests.\n");
}

#endif
