//
// Created by Sami Dahoux (sami.dahoux@etu.emse.fr) on 26/06/2020.
//

#include "hex.h"

void HEX_parse_word(const char *word, uint8_t bytes[HEX_BYTES_SIZE])
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
