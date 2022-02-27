/**
 * @file mu_parse_url.h
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

#ifndef _MU_PARSE_URL_H_
#define _MU_PARSE_URL_H_

// *****************************************************************************
// Includes

#include <stdint.h>
#include <stdbool.h>

// =============================================================================
// C++ compatibility

#ifdef __cplusplus
extern "C" {
#endif

// *****************************************************************************
// Public types and definitions

#define MU_PARSE_URL_MAX_HOST_NAME_LENGTH 40

typedef enum {
  MU_PARSE_URL_ERR_NONE,
  MU_PARSE_URL_ERR_BAD_PARAM,
  MU_PARSE_URL_ERR_BAD_FORMAT,
} mu_parse_url_err_t;

/**
 * @brief A structure to hold the results of mu_parse_url()
 */
typedef struct {
  char host_name[MU_PARSE_URL_MAX_HOST_NAME_LENGTH];
  uint32_t host_ip;
  uint16_t host_port;
  bool use_tls;
} mu_parsed_url_t;

// *****************************************************************************
// Public declarations

/**
 * @brief Parse an HTTP style URL
 *
 * This function parses a URL and stores the result in a mu_parsed_url_t
 * structure, containing the following fields:
 *
 * * host_name: if the URL's address is NOT ipv4 dotted octets, this field
 *   will contain the host name and the host_ip field will be zero.
 * * host_ip: if the URL's address is in ipv4 dotted octet format, this field
 *   will be filled in with the address and host_name will be blank.
 * * host_port: If the URL ends in a colon followed by zero or more digits,
 *   the host_port will be set to that value.  Otherwise, if the url starts with
 *   'http://', the host_port will be set to 80.  Otherwise, if the URL starts
 *   with 'https://', the host_port wil be set to 443.
 * * use_tls: If the URL starts with `http://`, use_tls will be set to false.
 *   Otherwise, if the URL starts with 'https://', use_tls wil be set to true.
 *
 * @param url A null-terminated string.
 * @param parsed_url A pointer to a user-supplied mu_parsed_url_t struct which
 *        will be filled by mu_parse_url.
 * @return MU_PARSE_ERR_NONE on success, other values on failure.
 */
mu_parse_url_err_t mu_parse_url(const char *url, mu_parsed_url_t *parsed_url);

#ifdef __cplusplus
}
#endif

#endif /* #ifndef _MU_PARSE_URL_H_ */
