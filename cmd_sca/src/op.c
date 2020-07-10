//
// Created by Sami Dahoux (s.dahoux@emse.fr) on 19/06/2020.
//

#include "op.h"

const static unsigned int bit_shift = 1;

unsigned char OP_hamming_weight(unsigned int data) {
    unsigned int weight = 0;
    for (; data > 0; data >>= bit_shift) {
        weight += data & bit_shift;
    }
    return weight;
}

unsigned char OP_hamming_distance(unsigned int left, unsigned int right) {
    unsigned int bit_diff = left ^ right;
    unsigned int weight = 0;
    for (; bit_diff > 0; bit_diff >>= bit_shift) {
        weight += bit_diff & bit_shift;
    }
    return weight;
}

void OP_words_to_hamming(const uint32_t *words, unsigned char *weights, size_t len)
{
    for (size_t idx = 0; idx < len; idx++)
    {
        weights[idx] = OP_hamming_weight(words[idx]);
    }
}