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

void HEX_parse_word(const char *word, uint8_t bytes[HEX_BYTES_SIZE]);

void HEX_print_bytes(const uint8_t bytes[HEX_BYTES_SIZE]);

#endif //SCA_FRAMEWORK_HEX_H
