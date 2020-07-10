#ifndef SCA_FRAMEWORK_CSV_H
#define SCA_FRAMEWORK_CSV_H

#include <stdio.h>

/**
 * @brief Transforms 32-bit registers Hamming weights into a CSV compliant string
 * @param str result string
 * @param weights Hamming weights to stringify
 * @param length of `weights`
 */
void CSV_stringify_u32(char* str, unsigned char *weights, size_t len);

#endif // SCA_FRAMEWORK_CSV_H