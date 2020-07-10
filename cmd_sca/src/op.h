/**
 * @file op.h
 * @author Sami Dahoux (s.dahoux@emse.fr)
 * @brief Module to perform mathematical operations over 32-bit data
 */

#ifndef SCA_FRAMEWORK_OP_H
#define SCA_FRAMEWORK_OP_H

#include <stdint.h>
#include <stdio.h>

/**
 * @brief Computes Hamming weight of the given data
 * @param data 32-bit raw data
 * @return value of the weight
 */
unsigned char OP_hamming_weight(unsigned int data);

/**
 * @brief Computes Hamming distance between the two given data
 * @param left first 32-bit raw data
 * @param right second 32-bit raw data
 * @return value of the distance
 */
unsigned char OP_hamming_distance(unsigned int left, unsigned int right);

/**
 * @brief Computes the Hamming weight of the given words
 * @param words 32-bit values to process
 * @param weights computed weights
 * @param len length of `words`
 */
void OP_words_to_hamming(const uint32_t *words, unsigned char *weights, size_t len);

#endif //SCA_FRAMEWORK_OP_H
