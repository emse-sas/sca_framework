//
// Created by Sami Dahoux (s.dahoux@emse.fr) on 19/06/2020.
//

#include "op.h"

const static unsigned int bit_shift = 1;


unsigned char OP_hamming_weight(unsigned int data)
{
    unsigned int weight = 0;
    for (; data > 0; data >>= bit_shift)
    {
        weight += data & bit_shift;
    }
    return weight;
}

unsigned char OP_hamming_distance(unsigned int left, unsigned int right)
{
    unsigned int bit_diff = left ^ right;
    unsigned int weight = 0;
    for (; bit_diff > 0; bit_diff >>= bit_shift)
    {
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

void OP_encode_hamming(char *str, uint32_t *weights, size_t len, char offset)
{
    for (size_t idx = 0; idx < len; idx++)
    {
        str[idx] = OP_HAMMING_TO_ASCII(weights[idx], offset);
    }
    str[len] = '\0';
}

void OP_stringify_hamming(char *str, uint32_t *weights, size_t len)
{
    if (len == 0)
    {
        return;
    }
    for (size_t idx = 0; idx < len - 1; idx++)
    {
        sprintf(str + 3 * idx, "%02u,", (char)weights[idx]);
    }
    sprintf(str + 3 * (len - 1), "%02u", (char)weights[len - 1]);
}