/**
 * @file hex.h
 * @author Sami Dahoux (s.dahoux@emse.fr)
 * @brief Module to perform 8-bits and 32-bits raw arrays serialization and conversions
 */

#ifndef SCA_FRAMEWORK_HEX_H
#define SCA_FRAMEWORK_HEX_H

#include <stdint.h>
#include <stdlib.h>
#include <stdio.h>

#include "op.h"

/**
 * @brief Parse the string given in argument to get a hexadecimal value bytes
 * @param word string to parse, must be a hexadecimal string such as `FFE1`
 * @param bytes parsed bytes
 * @param len length of ``bytes` buffer
 */
void HEX_parse_chars(const char *word, uint8_t *bytes, size_t len);

void HEX_stringify_bytes(char *str, const uint8_t *bytes, size_t len);

void HEX_stringify_words(char *str, const uint32_t *words, size_t len);

/**
 * @brief Copy `uint8_t` array to `uint32_t` array
 * @param words destination words
 * @param bytes source bytes
 * @param len length of `bytes` buffer
 */
void HEX_bytes_to_words(uint32_t *words, const uint8_t *bytes, size_t len);

/**
 * @brief Copy `uint32_t` array to `uint8_t` array
 * @param bytes destination bytes
 * @param words source words
 * @param len length of `bytes` buffer
 */
void HEX_words_to_bytes(uint8_t *bytes, const uint32_t *words, size_t len);

/**
 * @brief Generates uniformly distributed `uint32_t` array
 * @param words random words
 * @param seed random seed
 * @param len `words` length
 */
void HEX_random_words(uint32_t *words, int seed, size_t len);

#endif //SCA_FRAMEWORK_HEX_H
