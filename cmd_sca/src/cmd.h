//
// Created by Sami Dahoux (sami.dahoux@etu.emse.fr) on 19/06/2020.
//

#ifndef SCA_FRAMEWORK_CMD_H
#define SCA_FRAMEWORK_CMD_H

#include <stdio.h>
#include <errno.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include <math.h>

#include "io.h"
#include "hex.h"

#define CMD_LINE_SIZE 512 /** maximum size of the line buffer */
#define CMD_MAX_OPTIONS 10 /** maximum number of options in a command */
#define CMD_NULL_OPTION 0 /** label code for the null option */
#define CMD_COUNT_TYPE 4 /** count of available commands */
#define CMD_COUNT_VAL_TYPE 4 /** count of available options value types */

typedef enum {
    CMD_TRUE = 1,
    CMD_FALSE = 0
} CMD_bool_t;

/**
 * @brief enumerations of errors
 */
typedef enum {
    CMD_ERR_NONE = -1,
    CMD_ERR_ALLOC = -3, /** malloc error */
    CMD_ERR_NOT_FOUND = -4, /** search failed error */
    CMD_ERR_FORMAT = -5, /** command format error */
} CMD_err_t;


/**
 * @bbrief allowed commands
 */
typedef enum {
    CMD_TYPE_NONE,
    CMD_TYPE_HELP,
    CMD_TYPE_QUIT,
    CMD_TYPE_AES
} CMD_type_t;


/**
 * @bbrief allowed option value type
 *
 * The types decimal and hexadecimal both refers to an integer value but with different radix.
 */
typedef enum {
    CMD_VAL_TYPE_NONE,
    CMD_VAL_TYPE_DECIMAL,
    CMD_VAL_TYPE_HEXADECIMAL,
    CMD_VAL_TYPE_STRING,
    CMD_VAL_TYPE_END
} CMD_opt_val_type_t;

/**
 * @brief variable type value for the option
 *
 * The members accessed must be compatible with the option type.
 * if the option type is numerical, access integer, not string.
 * If the option type is a string, access string.
 * If the option type is nine, do not access this union.
 */
typedef union {
    char string[CMD_LINE_SIZE]; /** string component of the value */
    long long integer; /** integer component of the value */
    uint8_t bytes[CMD_LINE_SIZE]; /** raw bytes of the value*/
} CMD_opt_val_t;


/**
 * @brief option handling structure
 */
typedef struct {
    char label; /** character labeling the option */
    CMD_opt_val_t value; /** value of the option */
    CMD_opt_val_type_t type; /** expected type for the option value */
} CMD_opt_t;

/**
 * @brief command handling structure
 */
typedef struct {
    CMD_type_t type; /** command type */
    CMD_opt_t *options[CMD_MAX_OPTIONS]; /** command options */
} CMD_cmd_t;


/**
 * @brief label of the given command
 */
const static char *CMD_labels[CMD_COUNT_TYPE] = {
        "",
        "help",
        "quit",
        "aes"
};

/**
 * @brief description of the given command
 */
const static char *CMD_descriptions[CMD_COUNT_TYPE] = {
        "",
        "print a helper message",
        "exit the software",
        "encrypt/decrypt 128 bits using AES",
};

/**
 * @brief allowed options for the given command
 */
const static char CMD_allowed_options[CMD_COUNT_TYPE][CMD_MAX_OPTIONS] = {
        {CMD_NULL_OPTION},
        {'c', CMD_NULL_OPTION},
        {CMD_NULL_OPTION},
        {'s', 'k', 'p', 'c', CMD_NULL_OPTION}
};

/**
 * @brief allowed option value types for the given command
 */
const static CMD_opt_val_type_t CMD_allowed_types[CMD_COUNT_TYPE][CMD_MAX_OPTIONS] = {
        {CMD_VAL_TYPE_END},
        {CMD_VAL_TYPE_STRING, CMD_VAL_TYPE_END},
        {CMD_VAL_TYPE_END},
        {CMD_VAL_TYPE_NONE,   CMD_VAL_TYPE_HEXADECIMAL, CMD_VAL_TYPE_HEXADECIMAL, CMD_VAL_TYPE_HEXADECIMAL, CMD_VAL_TYPE_END}
};

const static char *CMD_opt_type_labels[CMD_COUNT_VAL_TYPE] = {
        "",
        "[decimal]",
        "[hexadecimal]",
        "[string]"
};

void CMD_init(CMD_cmd_t *command);

void CMD_clear(CMD_cmd_t *command);

CMD_err_t CMD_get_type(const char *word, CMD_type_t *type);

CMD_err_t CMD_get_opts(char **words, size_t len, CMD_opt_t **options);

int CMD_parse_line(char *line, CMD_cmd_t *cmd);

int CMD_check_options(CMD_cmd_t cmd);

int CMD_find_option(const CMD_opt_t **options, char label);

#endif //SCA_FRAMEWORK_CMD_H
