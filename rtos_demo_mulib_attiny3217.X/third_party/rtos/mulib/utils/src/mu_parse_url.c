/**
 * @file mu_parse_url.c
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

#include "mu_parse_url.h"

#include "mu_str.h"
#include "mu_strbuf.h"
#include <stdbool.h>
#include <stdint.h>
#include <string.h>

// *****************************************************************************
// Local (private) types and definitions

#define DEFAULT_HTTP_PORT 80
#define DEFAULT_TLS_PORT 443

// *****************************************************************************
// Local (private, static) forward declarations

static bool url_starts_with_https(mu_str_t *slice);
static bool url_starts_with_http(mu_str_t *slice);
static bool url_find_hostaddr(mu_str_t *slice);
static uint32_t parse_ipv4_address(mu_str_t *slice);
static int parse_octet(mu_str_t *slice);
static uint16_t url_find_portspec(mu_str_t *slice);

// *****************************************************************************
// Local (private, static) storage

// *****************************************************************************
// Public code

mu_parse_url_err_t mu_parse_url(const char *url, mu_parsed_url_t *parsed_url) {
  mu_strbuf_t urlbuf;
  mu_str_t slice;

  if (url == NULL || parsed_url == NULL) {
    return MU_PARSE_URL_ERR_BAD_PARAM;
  }
  memset(parsed_url, 0, sizeof(mu_parsed_url_t));

  // Use a mu_strbuf to simplify parsing of the url
  mu_strbuf_init_from_cstr(&urlbuf, url);
  mu_str_init_rd(&slice, &urlbuf);

  // Does url start with http:// or is it https://?
  if (url_starts_with_https(&slice)) {
    parsed_url->use_tls = true;
  } else if (url_starts_with_http(&slice)) {
    parsed_url->use_tls = false;
  } else {
    return MU_PARSE_URL_ERR_BAD_FORMAT;
  }

  // Does url have the form example.com or 123.23.3.55?
  mu_str_reset_rd(&slice);
  if (!url_find_hostaddr(&slice)) {
    // no host name was found
    return MU_PARSE_URL_ERR_BAD_FORMAT;
  } else {
    // slice has been modified by reference to contain just the hostname
  }
  parsed_url->host_ip = parse_ipv4_address(&slice);
  if (parsed_url->host_ip != 0) {
    // The hostaddr is valid ipv4 format (dotted octets)
  } else {
    // Assume the hostname is valid.  (DNS lookup will confirm if this is true.)
    mu_str_to_cstr(
        &slice, parsed_url->host_name, MU_PARSE_URL_MAX_HOST_NAME_LENGTH);
  }

  // Does it specify a port #?
  mu_str_reset_rd(&slice);
  uint16_t portspec = url_find_portspec(&slice);
  if (portspec != 0) {
    parsed_url->host_port = portspec;
  } else if (parsed_url->use_tls == true) {
    parsed_url->host_port = DEFAULT_TLS_PORT;
  } else {
    parsed_url->host_port = DEFAULT_HTTP_PORT;
  }

  return MU_PARSE_URL_ERR_NONE;
}

// *****************************************************************************
// Local (private, static) code

static bool url_starts_with_https(mu_str_t *slice) {
  // "https://" must start at position 0
  return mu_str_find(slice, "https://") == 0;
}

static bool url_starts_with_http(mu_str_t *slice) {
  // "http://" must start at position 0
  return mu_str_find(slice, "http://") == 0;
}

static bool url_find_hostaddr(mu_str_t *slice) {
  int prefix = mu_str_find(slice, "://");
  if (prefix == -1) {
    return false;
  }
  mu_str_increment_start(slice, prefix + 3); // start after prefix
  int portspec = mu_str_find(slice, ":");
  if (portspec != -1) {
    // there's a : in the string -- assume it's a port spec
    // trim the slice to exclude the ':' and anything that follows...
    mu_str_slice(slice, slice, 0, portspec);
  }
  return true;
}

static uint32_t parse_ipv4_address(mu_str_t *slice) {
  int octet;
  uint32_t octets[4];
  uint8_t ch;
  mu_str_t temp;

  mu_str_copy(&temp, slice); // we don't want to modify slice

  for (int i = 0; i < 4; i++) {
    if ((octet = parse_octet(&temp)) == -1) {
      return 0;
    }
    octets[i] = (uint8_t)octet;
    // make sure a '.' follows each string of digits, except for last
    if (i < 3) {
      mu_str_read_byte(&temp, &ch); // consume first byte
      if (ch != '.') {
        return 0;
      }
    }
  }
  // If we got this far, octets[] contains the 4 octets.  Assemble into an
  // int and return.
  return (octets[0] << 24) | (octets[1] << 16) | (octets[2] << 8) | octets[3];
}

static int parse_octet(mu_str_t *slice) {
  // search for consecutive digits, return the decimal integer if valid,
  // -1 otherwise.  Return with slice positioned on first non-digit char
  // or at end of string.
  int total = 0;
  bool digit_seen = false;
  uint8_t ch;
  while (mu_str_available_rd(slice) > 0) {
    ch = *mu_str_ref_rd(slice); // peek at next byte
    if ((ch >= '0') && (ch <= '9')) {
      digit_seen = true;
      total = total * 10 + (ch - '0');
      mu_str_read_byte(slice, &ch); // consume first byte
    } else {
      // not a digit
      break;
    }
  }
  // arrive here at end of string or on a non-digit.
  if (digit_seen && (total < 256)) {
    return total;
  } else {
    return -1;
  }
}

static uint16_t url_find_portspec(mu_str_t *slice) {
  // search for a port specification following the *second* colon in the URL.
  // return port number if found, 0 otherwise
  int index = mu_str_find(slice, "://");
  if (index == -1) {
    return 0; // shouldn't happen.
  }
  mu_str_increment_start(slice, index + 3); // skip past '://'
  // find the next occurrence of ':' (presumably at the end of the string)
  index = mu_str_find(slice, ":");
  if (index == -1) {
    return 0; // no port specified
  }
  mu_str_increment_start(slice, index + 1); // skip past ':'

  int total = 0;
  uint8_t ch;
  while (mu_str_read_byte(slice, &ch)) {
    if ((ch >= '0') && (ch <= '9')) {
      total = total * 10 + (ch - '0');
    } else {
      // not a digit
      break;
    }
  }
  // arrive here at end of string or on a non-digit.
  if (total < 1UL << 16) {
    return (uint16_t)total;
  } else {
    return 0;
  }
}

// *****************************************************************************
// standalone test

// cc -Wall -g -o mu_parse_url mu_parse_url.c mu_str.c mu_strbuf.c ;
// ./mu_parse_url ; rm ./mu_parse_url

// un-comment the following line to enable standalone unit tests.  Compile on a
// gnu / posix system as in the above comment.

// #define MU_PARSE_URL_STANDALONE_TEST
#ifdef MU_PARSE_URL_STANDALONE_TEST

#include <stdio.h>

void print_parsed_url(mu_parsed_url_t *parsed_url) {
  printf("tls=%s name=%s ip=%x port=%d",
         parsed_url->use_tls ? "y" : "n",
         parsed_url->host_name,
         parsed_url->host_ip,
         parsed_url->host_port);
}

static void check(const char *url,
                  const char *host_name,
                  uint32_t host_ip,
                  uint16_t host_port,
                  bool use_tls,
                  mu_parse_url_err_t expected) {
  mu_parsed_url_t p;
  mu_parse_url_err_t err = mu_parse_url(url, &p);
  if (err != expected) {
    printf("\nparsing '%s' expected %d, got %d", url, expected, expected);
    return;
  }
  if (err != MU_PARSE_URL_ERR_NONE) {
    printf("\ngot error %d as expected", err);
    return;
  }
  if (strcmp(p.host_name, host_name) != 0) {
    printf("\nexpected host %s, got %s", host_name, p.host_name);
    return;
  }
  if (p.host_ip != host_ip) {
    printf("\nexpected ip %d, got %d", host_ip, p.host_ip);
    return;
  }
  if (p.host_port != host_port) {
    printf("\nexpected port %d, got %d", host_port, p.host_port);
    return;
  }
  if (p.use_tls != use_tls) {
    printf("\nexpected use_tls %d, got %d", use_tls, p.use_tls);
    return;
  }
  printf("\nparsing %s succeeded: ", url);
  print_parsed_url(&p);
}

int main(void) {
  check(
      "http://example.com", "example.com", 0, 80, false, MU_PARSE_URL_ERR_NONE);
  check("https://example.com",
        "example.com",
        0,
        443,
        true,
        MU_PARSE_URL_ERR_NONE);
  check("http://example.com:10",
        "example.com",
        0,
        10,
        false,
        MU_PARSE_URL_ERR_NONE);
  check("https://example.com:20",
        "example.com",
        0,
        20,
        true,
        MU_PARSE_URL_ERR_NONE);
  check("http://0.0.0.1", "\0", 0x1, 80, false, MU_PARSE_URL_ERR_NONE);
  check("http://0.0.1.0", "\0", 0x100, 80, false, MU_PARSE_URL_ERR_NONE);
  check("http://0.1.0.0", "\0", 0x10000, 80, false, MU_PARSE_URL_ERR_NONE);
  check("http://1.0.0.0", "\0", 0x1000000, 80, false, MU_PARSE_URL_ERR_NONE);
  check(NULL, "example.com", 0, 80, false, MU_PARSE_URL_ERR_BAD_PARAM);
  check("url://example.com",
        "example.com",
        0,
        80,
        false,
        MU_PARSE_URL_ERR_BAD_FORMAT);
  check("", "example.com", 0, 80, false, MU_PARSE_URL_ERR_BAD_FORMAT);
  printf("\ndone!\n");
  return 0;
}

#endif
