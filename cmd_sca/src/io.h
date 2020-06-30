//
// Created by Sami Dahoux (sami.dahoux@etu.emse.fr) on 26/06/2020.
//

#ifndef SCA_FRAMEWORK_IO_H
#define SCA_FRAMEWORK_IO_H

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef enum {
    IO_SUCCESS = -1,
    IO_FAILURE = -2
} IO_status_t;

void IO_clear_line(char *line, size_t len);

void IO_init_words(char **words, size_t len);

IO_status_t IO_get_line(char *buffer, size_t len);

size_t IO_get_words(char *line, char **words);

#endif //SCA_FRAMEWORK_IO_H


