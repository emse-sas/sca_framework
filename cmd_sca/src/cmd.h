/**
 * @file cmd.h
 * @author Sami Dahoux (s.dahoux@emse.fr)
 * @brief Command parsing module featuring options
 * 
 * This command prompt takes command in the form `action -o value -p value -q -s value`
 * Where value can be either a string, a base 10 integer value, a base 16 raw value or none.
 */

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

#define CMD_LINE_SIZE 512  /** maximum size of the line buffer */
#define CMD_MAX_OPTIONS 10 /** maximum number of options in a command */
#define CMD_NULL_OPTION 0  /** label code for the null option */

#define CMD_OPT_BOTH_PRESENT(idx1, idx2) (idx1 != CMD_ERR_NOT_FOUND && idx2 != CMD_ERR_NOT_FOUND)
#define CMD_OPT_BOTH_MISSING(idx1, idx2) (idx1 == CMD_ERR_NOT_FOUND && idx2 == CMD_ERR_NOT_FOUND)

/**
 * @brief enumerations of errors
 */
typedef enum
{
    CMD_ERR_NONE = -1,
    CMD_ERR_ALLOC = -3,     /** malloc error */
    CMD_ERR_NOT_FOUND = -4, /** search failed error */
    CMD_ERR_FORMAT = -5,    /** command format error */
} CMD_err_t;

/**
 * @brief handled commands
 */
typedef enum
{
    CMD_TYPE_NONE,
    CMD_TYPE_HELP,
    CMD_TYPE_QUIT,
    CMD_TYPE_AES,
    CMD_TYPE_TDC,
    CMD_TYPE_FIFO,
    CMD_TYPE_SCA,
    CMD_COUNT_TYPE /** count of available commands */
} CMD_type_t;

/**
 * @brief handled option value type
 */
typedef enum
{
    CMD_VAL_TYPE_NONE,
    CMD_VAL_TYPE_DECIMAL,     /** base 10 `int` value */
    CMD_VAL_TYPE_HEXADECIMAL, /** base 16 unconstrained integer value as bytes */
    CMD_VAL_TYPE_STRING,      /** string value */
    CMD_VAL_TYPE_END,
    CMD_COUNT_VAL_TYPE /** count of available options value types */
} CMD_opt_val_type_t;

/**
 * @brief variable type value for the option
 *
 * The members accessed must be compatible with the option value type `CMD_opt_val_type_t`.
 */
typedef union {
    char string[CMD_LINE_SIZE];         /** string component of the value */
    long long integer;                  /** integer component of the value */
    uint8_t bytes[CMD_LINE_SIZE];       /** raw bytes of the value*/
    uint32_t words[CMD_LINE_SIZE >> 2]; /** 32-bit raw words of the value*/
} CMD_opt_val_t;

/**
 * @brief option handling structure
 */
typedef struct
{
    char label;              /** character labeling the option */
    CMD_opt_val_t value;     /** value of the option argument */
    CMD_opt_val_type_t type; /** type for the option argument */
} CMD_opt_t;

/**
 * @brief command handling structure
 * 
 * The options are optional, if the command does not takes option, the array `options` will be filt with `NULL` pointer
 */
typedef struct
{
    CMD_type_t type;                     /** command type */
    CMD_opt_t *options[CMD_MAX_OPTIONS]; /** command nullable options */
} CMD_cmd_t;

/**
 * @brief name of the given command
 */
const static char *CMD_labels[CMD_COUNT_TYPE] = {
    "",
    "help",
    "quit",
    "aes",
    "tdc",
    "fifo",
    "sca"};

/**
 * @brief description of the given command
 */
const static char *CMD_descriptions[CMD_COUNT_TYPE] = {
    "",
    "print a helper message",
    "exit the software",
    "AES encrypt/decrypt",
    "TDC operations",
    "FIFO operations",
    "perform SCA"};

/**
 * @brief allowed options for the given command
 */
const static char CMD_allowed_options[CMD_COUNT_TYPE][CMD_MAX_OPTIONS] = {
    {CMD_NULL_OPTION},
    {'c', CMD_NULL_OPTION},
    {CMD_NULL_OPTION},
    {'h', 'k', 'p', 'c', 'a', CMD_NULL_OPTION},
    {'c', 'c', 'r', 'd', 'v', CMD_NULL_OPTION},
    {'f', 'v', CMD_NULL_OPTION},
    {'h', 'i', 't', 'v', CMD_NULL_OPTION}};

/**
 * @brief allowed option value types for the given command
 */
const static CMD_opt_val_type_t CMD_allowed_types[CMD_COUNT_TYPE][CMD_MAX_OPTIONS] = {
    {},
    {CMD_VAL_TYPE_STRING},
    {},
    {CMD_VAL_TYPE_NONE, CMD_VAL_TYPE_HEXADECIMAL, CMD_VAL_TYPE_HEXADECIMAL, CMD_VAL_TYPE_HEXADECIMAL, CMD_VAL_TYPE_NONE},
    {CMD_VAL_TYPE_DECIMAL, CMD_VAL_TYPE_NONE, CMD_VAL_TYPE_DECIMAL, CMD_VAL_TYPE_HEXADECIMAL},
    {CMD_VAL_TYPE_NONE, CMD_VAL_TYPE_NONE, CMD_VAL_TYPE_NONE},
    {CMD_VAL_TYPE_NONE, CMD_VAL_TYPE_NONE, CMD_VAL_TYPE_DECIMAL, CMD_VAL_TYPE_NONE},
};

const static char *CMD_opt_type_labels[CMD_COUNT_VAL_TYPE] = {
    "[none]",
    "[decimal]",
    "[hexadecimal]",
    "[string]"};

/**
 * @brief Initializes the given command to the `CMD_TYPE_NONE` command
 */
void CMD_init(CMD_cmd_t *command);

/**
 * @brief Resets the given command to the `CMD_TYPE_NONE` command
 */
void CMD_clear(CMD_cmd_t *command);

/**
 * @brief Copies the source command into destination command
 */
CMD_err_t CMD_copy(const CMD_cmd_t *source, CMD_cmd_t *destination);

/**
 * @brief Tries to parse the command type from the given word
 * @param word string without ' '
 * @param type parsed command type
 * @return `CMD_ERR_NONE` on success
 */
CMD_err_t CMD_get_type(const char *word, CMD_type_t *type);

/**
 * @brief Tries to parse the command options from the given words
 * @param words words forming the option string
 * @param len count of words
 * @param options parsed options
 * @return `CMD_ERR_NONE` on success
 */
CMD_err_t CMD_get_opts(char **words, size_t len, CMD_opt_t **options);

/**
 * @brief Tries to parse a line in order to get a valid command
 * @param line line to be parsed
 * @param cmd parsed command
 * @return `CMD_ERR_NONE` on success else error (< 0) or the index of the first invalid option
 */
int CMD_parse_line(char *line, CMD_cmd_t *cmd);

/**
 * @brief Checks if the command contains the valid options and with valid value types
 * @param cmd command to be checked
 * @return `CMD_ERR_NONE` on success else the index of the first invalid option
 */
int CMD_check_options(CMD_cmd_t cmd);

/**
 * @brief Finds an option into the given option array
 * @param options option array to browse
 * @param label option label to search
 * @return `CMD_ERR_NONE` on success
 */
int CMD_find_option(const CMD_opt_t **options, char label);

#endif //SCA_FRAMEWORK_CMD_H
