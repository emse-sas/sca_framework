//
// Created by Sami Dahoux (sami.dahoux@etu.emse.fr) on 19/06/2020.
//

#ifndef SCA_FRAMEWORK_OP_H
#define SCA_FRAMEWORK_OP_H

#include <stdint.h>
#include <stdio.h>

unsigned int OP_hamming_weight(unsigned int data);

unsigned int OP_hamming_distance(unsigned int left, unsigned int right);

void OP_words_to_hamming(const uint32_t *words, unsigned int *weights, size_t len);

#endif //SCA_FRAMEWORK_OP_H
