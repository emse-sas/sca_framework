//
// Created by Sami Dahoux (sami.dahoux@etu.emse.fr) on 19/06/2020.
//

#include "op.h"

const static unsigned int bit_shift = 1;

unsigned int OP_hamming_weight(unsigned int data) {
    unsigned int weight = 0;
    for (; data > 0; data >>= bit_shift) {
        weight += data & bit_shift;
    }
    return weight;
}

unsigned int OP_hamming_distance(unsigned int left, unsigned int right) {
    unsigned int bit_diff = left ^ right;
    unsigned int weight = 0;
    for (; bit_diff > 0; bit_diff >>= bit_shift) {
        weight += bit_diff & bit_shift;
    }
    return weight;
}
