//
// Created by Sami Dahoux (sami.dahoux@etu.emse.fr) on 26/06/2020.
//

#ifndef SCA_FRAMEWORK_RUN_H
#define SCA_FRAMEWORK_RUN_H

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "xil_printf.h"

#include "cmd.h"
#include "aes.h"

typedef enum {
    RUN_SUCCESS = -1,
    RUN_FAILURE = -2
} RUN_status_t;

/**
 * @brief launch the cmd client loop
 * @return error code if the cmd was quit unexpectedly else 0
 */
RUN_status_t RUN_cmd();

void RUN_help(const CMD_cmd_t *cmd);

void RUN_quit();

RUN_status_t RUN_aes(const CMD_cmd_t *cmd);

#endif //SCA_FRAMEWORK_RUN_H
