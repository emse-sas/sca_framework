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

    char *ptr = str;
    for (size_t idx = 0; idx < len - 1; idx++)
    {
        sprintf(ptr, "%lu,", weights[idx]);
        if (weights[idx] > 9)
        {
            ptr++;
        }
        if (weights[idx] > 99)
        {
            ptr++;
        }
        ptr += 2;
    }
    sprintf(ptr, "%lu", weights[len - 1]);
}

int OP_bit_polarity(uint32_t value)
{
    if (value == UINT32_MAX || value == 0)
    {
        return -1;
    }
    else if ((value & 0x1) == 0)
    {
        return 2;
    }
    else if ((value & 0xc0000000) == 0)
    {
        return 0;
    }
    else
    {
        return -2;
    }
}
