//
// Created by Sami Dahoux (s.dahoux@emse.fr) on 19/06/2020.
//

#include "cmd.h"

void CMD_init(CMD_cmd_t *command)
{
    size_t idx = 0;
    command->type = CMD_TYPE_NONE;
    for (; idx < CMD_MAX_OPTIONS; idx++)
    {
        command->options[idx] = NULL;
    }
}

void CMD_clear(CMD_cmd_t *command)
{
    size_t idx = 0;
    command->type = CMD_TYPE_NONE;
    for (; idx < CMD_MAX_OPTIONS; idx++)
    {
        if (command->options[idx] != NULL)
        {
            free(command->options[idx]);
            command->options[idx] = NULL;
        }
    }
}

CMD_err_t CMD_get_type(const char *word, CMD_type_t *type)
{
    size_t idx = 0;
    for (; idx < CMD_COUNT_TYPE; idx++)
    {
        if (!strcmp(word, CMD_labels[idx]))
        {
            *type = (CMD_type_t)idx;
            return CMD_ERR_NONE;
        }
    }
    return CMD_ERR_NOT_FOUND;
}

CMD_err_t CMD_get_opts(char **words, size_t len, CMD_opt_t **options)
{
    char *char_ptr = NULL;
    size_t word_idx = 1, next_word, option_idx = 0, next_len;
    for (; word_idx < len; word_idx++)
    {
        if (words[word_idx][0] != '-' && words[word_idx - 1][0] != '-')
            return CMD_ERR_FORMAT;
        else if (words[word_idx][0] != '-')
            continue;

        if ((options[option_idx] = malloc(sizeof(CMD_opt_t))) == NULL)
            return CMD_ERR_ALLOC;

        next_word = word_idx + 1;
        if (words[next_word] != NULL && words[next_word][0] != '-')
        {
            errno = 0;
            next_len = strlen(words[next_word]);
            char_ptr = words[next_word] + next_len;

            options[option_idx]->label = words[word_idx][1];
            if (next_len > 2 && words[next_word][0] == '0' && words[next_word][1] == 'x')
            {
                options[option_idx]->type = CMD_VAL_TYPE_HEXADECIMAL;
                HEX_parse_chars(words[next_word], options[option_idx]->value.bytes, CMD_LINE_SIZE);
            }
            else
            {
                options[option_idx]->type = CMD_VAL_TYPE_DECIMAL;
                options[option_idx]->value.integer = strtol(words[next_word], &char_ptr, 10);
                if ((errno != 0 && options[option_idx]->value.integer == 0) || words[next_word] == char_ptr)
                {
                    options[option_idx]->type = CMD_VAL_TYPE_STRING;
                    strcpy(options[option_idx]->value.string, words[next_word]);
                }
            }
            option_idx++;
            word_idx++;
        }
        else if (words[word_idx + 1] == NULL || words[word_idx + 1][0] == '-')
        {
            options[option_idx]->label = words[word_idx][1];
            options[option_idx]->type = CMD_VAL_TYPE_NONE;
            option_idx++;
        }
    }
    return CMD_ERR_NONE;
}

int CMD_check_options(CMD_cmd_t cmd)
{
    size_t option_idx = 0, allowed_idx;
    int option_valid;
    for (; option_idx < CMD_MAX_OPTIONS && cmd.options[option_idx] != NULL; option_idx++)
    {
        option_valid = 0;
        for (allowed_idx = 0; CMD_allowed_options[cmd.type][allowed_idx] != CMD_NULL_OPTION; allowed_idx++)
        {
            if (CMD_allowed_options[cmd.type][allowed_idx] != cmd.options[option_idx]->label ||
                CMD_allowed_types[cmd.type][allowed_idx] != cmd.options[option_idx]->type)
                continue;
            option_valid = 1;
            break;
        }
        if (!option_valid)
        {
            return option_idx;
        }
    }
    return CMD_ERR_NONE;
}

int CMD_find_option(const CMD_opt_t **options, char label)
{
    int idx = 0;
    if (options == NULL)
    {
        return CMD_ERR_NOT_FOUND;
    }

    for (; options[idx] != NULL && idx < CMD_MAX_OPTIONS; idx++)
    {
        if (options[idx]->label != label)
            continue;
        return idx;
    }
    return CMD_ERR_NOT_FOUND;
}

int CMD_parse_line(char *line, CMD_cmd_t *cmd)
{
    char *words[CMD_LINE_SIZE];
    IO_init_words(words, CMD_LINE_SIZE);
    size_t words_count = IO_get_words(line, words);
    int error = 0;

    if ((error = CMD_get_type(words[0], &cmd->type)) != CMD_ERR_NONE)
        return error;
    if ((error = CMD_get_opts(words, words_count, cmd->options)) != CMD_ERR_NONE)
        return error;

    return CMD_ERR_NONE;
}
