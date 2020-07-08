/**
 * @file run.h
 * @author Sami Dahoux (s.dahoux@emse.fr)
 * @brief Module containing the functions that run each command defined in the module CMD and a command prompt
 */

#ifndef SCA_FRAMEWORK_RUN_H
#define SCA_FRAMEWORK_RUN_H


#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "xil_printf.h"

#include "cmd.h"
#include "../../tiny-AES-c/aes.h"
#include "aes_hw.h"
#include "tdc_hw.h"
#include "fifo_hw.h"

typedef enum
{
    RUN_SUCCESS = -1,
    RUN_FAILURE = -2
} RUN_status_t;


/**
 * @brief Prints the help message for all commands
 */
void RUN_all_help();

/**
 * @brief Prints the help for the given command
 * @param type command as enumerated type
 */
void RUN_cmd_help(const CMD_type_t type);

/**
 * @brief Launches the help command
 * @param cmd optional command
 */
void RUN_help(const CMD_cmd_t *cmd);

/**
 * @brief Launches the quit command
 */
void RUN_quit();

/**
 * @brief Launches AES computation using tiny-AES implementation and displays results
 * @param cmd command containing key and data
 * @param plain_idx index of the plain data in the command options or CMD_ERROR_NOT_FOUND
 * @param cipher_idx index of the cipher data in the command options or CMD_ERROR_NOT_FOUND
 * @param key_idx index of the cipher data in the command options 
 */
void RUN_tiny_aes(const CMD_cmd_t *cmd, int plain_idx, int cipher_idx, int key_idx, int acq_idx);

/**
 * @brief Launch AES computation using FPGA implementation of AES and displays results
 * @param cmd command containing key and data
 * @param plain_idx index of the plain data in the command options or CMD_ERROR_NOT_FOUND
 * @param cipher_idx index of the cipher data in the command options or CMD_ERROR_NOT_FOUND
 * @param key_idx index of the cipher data in the command options 
 */
void RUN_hw_aes(const CMD_cmd_t *cmd, int plain_idx, int cipher_idx, int key_idx, int acq_idx);


/**
 * @brief Launches the aes command
 * @param non-optional command
 * @return `RUN_FAILURE` when the operation failed else `RUN_SUCCESS`
 */
RUN_status_t RUN_aes(const CMD_cmd_t *cmd);


/**
 * @brief Launches the tdc command
 * @param non-optional command
 * @return `RUN_FAILURE` when the operation failed else `RUN_SUCCESS`
 */
RUN_status_t RUN_tdc(const CMD_cmd_t *cmd);

/**
 * @brief Reads values in FIFO and prints it
 */
void RUN_fifo_read();

/**
 * @brief Flush values in FIFO
 */
void RUN_fifo_flush();

/**
 * @brief Launches the fifo command
 * @param non-optional command
 * @return `RUN_FAILURE` when the operation failed else `RUN_SUCCESS`
 */
RUN_status_t RUN_fifo(const CMD_cmd_t *cmd);

/**
 * @brief Launches the command prompts
 * @return `RUN_FAILURE` when a fatal error occurs else `RUN_SUCCESS`
 */
RUN_status_t RUN_cmd();

#endif //SCA_FRAMEWORK_RUN_H
