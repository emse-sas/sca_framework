/**
 * @file hex.h
 * @author Sami Dahoux (s.dahoux@emse.fr)
 * @brief Module to perform 8-bits and 32-bits raw arrays printing and conversions
 */

#ifndef SCA_FRAMEWORK_HEX_H
#define SCA_FRAMEWORK_HEX_H

#include <stdint.h>
#include <stdlib.h>
#include <stdio.h>

#include "xil_printf.h"

#define HEX_BYTES_SIZE 16 /** Size of the bytes arrays to process */
#define HEX_WORDS_SIZE 4 /** Size of the words arrays to process */

/**
 * @brief Parse the string given in argument to get a hexadecimal value bytes
 * @param word string to parse, must be a hexadecimal string such as `FFE1`
 * @param bytes parsed bytes
 */
void HEX_parse_chars(const char *word, uint8_t *bytes);

void HEX_print_bytes(const uint8_t *bytes);

void HEX_print_words(const uint32_t *words);

/**
 * @brief Copy `uint8_t` array to `uint32_t` array
 * @param bytes source bytes
 * @param words destination words
 */
void HEX_bytes_to_words(const uint8_t *bytes, uint32_t *words);

#endif //SCA_FRAMEWORK_HEX_H
