//
// Created by Sami Dahoux (sami.dahoux@etu.emse.fr) on 26/06/2020.
//

#ifndef SCA_FRAMEWORK_HEX_H
#define SCA_FRAMEWORK_HEX_H

#include <stdint.h>
#include <stdlib.h>
#include <stdio.h>

#include "xil_printf.h"

#define HEX_BYTES_SIZE 16
#define HEX_WORDS_SIZE 4

void HEX_parse_chars(const char *word, uint8_t *bytes);

void HEX_print_bytes(const uint8_t *bytes);

void HEX_print_words(const uint32_t *words);

void HEX_bytes_to_words(const uint8_t *bytes, uint32_t *words);

#endif //SCA_FRAMEWORK_HEX_H
