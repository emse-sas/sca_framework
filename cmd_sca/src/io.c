//
// Created by Sami Dahoux (s.dahoux@emse.fr) on 26/06/2020.
//

#include "io.h"

void IO_clear_line(char *line, size_t len)
{
    size_t idx = 0;
    for (; idx < len; idx++)
        line[idx] = '\0';
}

void IO_init_words(char **words, size_t len)
{
    size_t idx = 0;
    for (; idx < len; idx++)
        words[idx] = NULL;
}

IO_status_t IO_get_line(char *buffer, size_t len)
{
    fflush(stdin);

    size_t idx = 0;
    do
    {
        if ((buffer[idx] = (char)getchar()) == EOF)
            return IO_FAILURE;
    } while (buffer[idx] != '\n' && buffer[idx] != '\r' && idx++ < len);
    return IO_SUCCESS;
}

size_t IO_get_words(char *line, char **words)
{
    char *token = strtok(line, " ");
    char *ret_char;
    size_t idx = 0;
    for (; token != NULL; idx++)
    {
        words[idx] = token;
        if ((ret_char = strchr(words[idx], '\n')) != NULL ||
            (ret_char = strchr(words[idx], '\r')) != NULL)
            *ret_char = '\0';
        token = strtok(NULL, " ");
    }
    return idx;
}