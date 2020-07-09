//
// Created by Sami Dahoux (s.dahoux@emse.fr) on 26/06/2020.
//

#include "hex.h"

void HEX_parse_chars(const char *word, uint8_t *bytes)
{
    char buffer[3] = "00";
    const char *word_ptr = (word[1] != 'x' ? word : word + 2);
    int idx = 0;
    for (; idx < HEX_BYTES_SIZE; idx++)
    {
        buffer[0] = word_ptr[2 * idx];
        buffer[1] = word_ptr[2 * idx + 1];
        bytes[idx] = strtol(buffer, NULL, 16);
    }
}

void HEX_print_bytes(const uint8_t *bytes)
{
    xil_printf("0x%02x%02x%02x%02x %02x%02x%02x%02x %02x%02x%02x%02x %02x%02x%02x%02x",
               bytes[0], bytes[1], bytes[2], bytes[3],
               bytes[4], bytes[5], bytes[6], bytes[7],
               bytes[8], bytes[9], bytes[10], bytes[11],
               bytes[12], bytes[13], bytes[14], bytes[15]);
}

void HEX_print_words(const uint32_t *words)
{
    xil_printf("0x%08x %08x %08x %08x", words[0], words[1], words[2], words[3]);
}

void HEX_bytes_to_words(const uint8_t *bytes, uint32_t *words)
{
    for (size_t idx = 0; idx < HEX_BYTES_SIZE; idx += 4)
    {
        words[idx / 4] = ((uint32_t)bytes[idx] << 24) +
                         ((uint32_t)bytes[idx + 1] << 16) +
                         ((uint32_t)bytes[idx + 2] << 8) +
                         (uint32_t)bytes[idx + 3];
    }
}

void HEX_words_to_bytes(const uint32_t *words, uint8_t* bytes)
{
    size_t words_idx;
    for (size_t idx = 0; idx < HEX_BYTES_SIZE; idx += 4)
    {
        words_idx = idx / 4;
        bytes[idx] = (words[words_idx] >> 24);
        bytes[idx + 1] = (words[words_idx] >> 16) & 0xff;
        bytes[idx + 2] = (words[words_idx] >> 8) & 0xff;
        bytes[idx + 3] = words[words_idx] & 0xff;
    }
}

void HEX_random_words(uint32_t *words)
{
    srand(0);
    for (size_t idx = 0; idx < HEX_WORDS_SIZE; idx++)
    {
        words[idx] = rand();
    }
}