//
// Created by Sami Dahoux (s.dahoux@emse.fr) on 26/06/2020.
//

#include "run.h"

void RUN_all_help()
{
    int option_idx = 0;
    int cmd_idx = 1;
    xil_printf("Label\t\tDescription\t\t\tOptions\n\r");
    for (; cmd_idx < CMD_COUNT_TYPE; cmd_idx++)
    {
        xil_printf("%s\t\t%s\t\t", CMD_labels[cmd_idx], CMD_descriptions[cmd_idx]);
        for (option_idx = 0; CMD_allowed_options[cmd_idx][option_idx] != CMD_NULL_OPTION; option_idx++)
        {
            xil_printf("-%c %s ",
                       CMD_allowed_options[cmd_idx][option_idx],
                       CMD_opt_type_labels[CMD_allowed_types[cmd_idx][option_idx]]);
        }
        xil_printf("\n\r");
    }
}

void RUN_cmd_help(const CMD_type_t type)
{
    size_t option_idx = 0;
    xil_printf("Label\t\tDescription\t\t\tOptions\n\r");
    xil_printf("%s\t\t%s\t\t", CMD_labels[type], CMD_descriptions[type]);

    for (; CMD_allowed_options[type][option_idx] != CMD_NULL_OPTION; option_idx++)
    {
        xil_printf("-%c %s ",
                   CMD_allowed_options[type][option_idx],
                   CMD_opt_type_labels[CMD_allowed_types[type][option_idx]]);
    }
    xil_printf("\n\r");
}

void RUN_help(const CMD_cmd_t *cmd)
{
    size_t option_idx;
    CMD_type_t help_cmd_type;
    if ((option_idx = CMD_find_option((const CMD_opt_t **)cmd->options, 'c')) == CMD_ERR_NOT_FOUND ||
        (CMD_get_type(cmd->options[option_idx]->value.string, &help_cmd_type) == CMD_ERR_NOT_FOUND))
        RUN_all_help();
    else
        RUN_cmd_help(help_cmd_type);
}

void RUN_quit()
{
    xil_printf("*** Exiting ***\n\r");
}

void RUN_tiny_aes(uint8_t *block, const uint8_t *key, int inv, int acq)
{
    struct AES_ctx ctx;

    xil_printf("*** Start tiny AES ***\n\r");

    xil_printf("Key: ");
    HEX_print_bytes(key);
    xil_printf("\n\r");

    xil_printf(inv ? "Cipher: " : "Plain: ");
    HEX_print_bytes(block);
    xil_printf("\n\r");

    if (inv)
    {
        AES_init_ctx_iv(&ctx, key, block);
    }
    else
    {
        AES_init_ctx(&ctx, key);
    }

    if (acq && inv)
    {
        FIFO_HW_clear();
        FIFO_HW_start_write();
        AES_ECB_decrypt(&ctx, block);
        FIFO_HW_stop_write();
    }
    else if (acq && !inv)
    {
        FIFO_HW_clear();
        FIFO_HW_start_write();
        AES_ECB_encrypt(&ctx, block);
        FIFO_HW_stop_write();
    }
    else if (!acq && inv)
    {
        AES_ECB_decrypt(&ctx, block);
    }
    else
    {
        AES_ECB_encrypt(&ctx, block);
    }

    xil_printf(inv ? "Plain: " : "Cipher: ");
    HEX_print_bytes(block);
    xil_printf("\n\r");
}

void RUN_hw_aes(uint32_t *block, const uint32_t *key, int inv, int acq)
{
    xil_printf("*** Start hardware AES ***\n\r");

    AES_HW_clear(inv ? AES_HW_DECRYPT : AES_HW_ENCRYPT);

    AES_HW_write_key(key);
    AES_HW_read_key(key);
    xil_printf("Key: ");
    HEX_print_words(key);
    xil_printf("\n\r");

    AES_HW_write_input(block);
    AES_HW_read_input(block);
    xil_printf(inv ? "Cipher: " : "Plain: ");
    HEX_print_words(block);
    xil_printf("\n\r");

    if (acq)
    {
        FIFO_HW_clear();
        FIFO_HW_start_write();
        AES_HW_launch();
        FIFO_HW_stop_write();
    }
    else
    {
        AES_HW_launch();
    }

    AES_HW_read_output(block);
    xil_printf(inv ? "Plain: " : "Cipher: ");
    HEX_print_words(block);
    xil_printf("\n\r");
}

RUN_status_t RUN_aes(const CMD_cmd_t *cmd)
{
    const CMD_opt_t **options_ptr = (const CMD_opt_t **)cmd->options;
    int cipher_idx = CMD_find_option(options_ptr, 'c');
    int plain_idx = CMD_find_option(options_ptr, 'p');
    int key_idx = CMD_find_option(options_ptr, 'k');
    int hw_idx = CMD_find_option(options_ptr, 'h');
    int acq_idx = CMD_find_option(options_ptr, 'a');

    if ((cipher_idx != CMD_ERR_NOT_FOUND && plain_idx != CMD_ERR_NOT_FOUND) ||
        (cipher_idx == CMD_ERR_NOT_FOUND && plain_idx == CMD_ERR_NOT_FOUND) ||
        key_idx == CMD_ERR_NOT_FOUND)
    {
        return RUN_FAILURE;
    }

    int inv = plain_idx == CMD_ERR_NOT_FOUND;
    int acq = acq_idx != CMD_ERR_NOT_FOUND;
    if (hw_idx == CMD_ERR_NOT_FOUND)
    {
        uint8_t key[HEX_BYTES_SIZE], block[HEX_BYTES_SIZE];
        memcpy(key, cmd->options[key_idx]->value.bytes, HEX_BYTES_SIZE);
        memcpy(block, cmd->options[inv ? cipher_idx : plain_idx]->value.bytes, HEX_BYTES_SIZE);
        RUN_tiny_aes(block, key, inv, acq);
    }
    else
    {
        uint32_t key[HEX_WORDS_SIZE], block[HEX_WORDS_SIZE];
        HEX_bytes_to_words(cmd->options[key_idx]->value.bytes, key);
        HEX_bytes_to_words(cmd->options[inv ? cipher_idx : plain_idx]->value.bytes, block);
        RUN_hw_aes(block, key, inv, acq);
    }
    return RUN_SUCCESS;
}

RUN_status_t RUN_tdc(const CMD_cmd_t *cmd)
{
    const CMD_opt_t **options_ptr = (const CMD_opt_t **)cmd->options;
    int calibrate_idx = CMD_find_option(options_ptr, 'c');
    int read_idx = CMD_find_option(options_ptr, 'r');
    if ((read_idx != CMD_ERR_NOT_FOUND && calibrate_idx != CMD_ERR_NOT_FOUND) ||
        (read_idx == CMD_ERR_NOT_FOUND && calibrate_idx == CMD_ERR_NOT_FOUND))
    {
        return RUN_FAILURE;
    }

    if (read_idx == CMD_ERR_NOT_FOUND)
    {
        printf("*** Start calibration ***\n\r");
        printf("Best settings: 0x%08x\n\r", TDC_HW_calibrate(cmd->options[calibrate_idx]->value.integer));
    }
    printf("Current value: 0x%08x\n\r", TDC_HW_read());
    return RUN_SUCCESS;
}

void RUN_fifo_flush()
{
    FIFO_HW_clear();
    printf("FIFO flushed!\n\r");
}

void RUN_fifo_read()
{
    printf("*** Start FIFO read ***\n\r");
    uint32_t buffer[FIFO_HW_STACK_SIZE];
    unsigned int weights[FIFO_HW_STACK_SIZE];
    int len = FIFO_HW_read(buffer, FIFO_HW_STACK_SIZE);
    len = len == FIFO_HW_ERR_NONE ? FIFO_HW_STACK_SIZE : len;

    xil_printf("Read successful: %d words\n\r", len);
    OP_words_to_hamming(buffer, weights, len);
    char str_weights[4 * FIFO_HW_STACK_SIZE + 1];
    CSV_stringify(str_weights, weights, len);
    xil_printf("Hamming weights:\n\r%s\n\r", str_weights);
}

RUN_status_t RUN_fifo(const CMD_cmd_t *cmd)
{
    const CMD_opt_t **options_ptr = (const CMD_opt_t **)cmd->options;
    int read_idx = CMD_find_option(options_ptr, 'r');
    int flush_idx = CMD_find_option(options_ptr, 'f');
    if ((read_idx != CMD_ERR_NOT_FOUND && flush_idx != CMD_ERR_NOT_FOUND) ||
        (read_idx == CMD_ERR_NOT_FOUND && flush_idx == CMD_ERR_NOT_FOUND))
    {
        return RUN_FAILURE;
    }
    if (read_idx != CMD_ERR_NOT_FOUND)
    {
        RUN_fifo_read();
    }
    if (flush_idx != CMD_ERR_NOT_FOUND)
    {
        RUN_fifo_flush();
    }

    return RUN_SUCCESS;
}

RUN_status_t RUN_sca(const CMD_cmd_t *cmd)
{
    const CMD_opt_t **options_ptr = (const CMD_opt_t **)cmd->options;
    int traces_idx = CMD_find_option(options_ptr, 't');
    int hw_idx = CMD_find_option(options_ptr, 'h');
    int inv_idx = CMD_find_option(options_ptr, 'i');
    if (traces_idx == CMD_ERR_NOT_FOUND)
    {
        return RUN_FAILURE;
    }
    int traces_count = cmd->options[traces_idx]->value.integer;
    int inv = inv_idx != CMD_ERR_NOT_FOUND;
    uint32_t key[HEX_WORDS_SIZE], block[HEX_WORDS_SIZE];
    uint8_t key8[HEX_BYTES_SIZE], block8[HEX_BYTES_SIZE];

    printf("*** Start SCA power analysis ***\n\r");
    HEX_random_words(key, INT_MAX);
    HEX_words_to_bytes(key, key8);
    for (int idx = 0; idx < traces_count; idx++)
    {
        HEX_random_words(block, idx + 1);
        if (hw_idx == CMD_ERR_NOT_FOUND)
        {
            HEX_words_to_bytes(block, block8);
            RUN_tiny_aes(block8, key8, inv, 1);
        }
        else
        {
            RUN_tiny_aes(block, key, inv, 1);
        }
        RUN_fifo_read();
    }

    return RUN_SUCCESS;
}

RUN_status_t RUN_cmd()
{
    char line[CMD_LINE_SIZE], buffer[CMD_LINE_SIZE];
    CMD_cmd_t cmd;
    CMD_err_t cmd_error;
    RUN_status_t run_status;
    int option_idx;

    CMD_init(&cmd);
    do
    {
        IO_clear_line(line, CMD_LINE_SIZE);
        CMD_clear(&cmd);
        xil_printf(">");
        if (IO_get_line(line, CMD_LINE_SIZE) != IO_SUCCESS)
        {
            fprintf(stderr, "Read error: errno=%d\n\r", errno);
            return RUN_FAILURE;
        }
        strcpy(buffer, line);
        switch ((cmd_error = CMD_parse_line(buffer, &cmd)))
        {
        case CMD_ERR_NONE:
            break;
        case CMD_ERR_NOT_FOUND:
            fprintf(stderr, "Unknown command: %s\n\r", strtok(line, " "));
            continue;
        case CMD_ERR_ALLOC:
            fprintf(stderr, "Allocation error: errno=%d\n\r", errno);
            return RUN_FAILURE;
        case CMD_ERR_FORMAT:
            fprintf(stderr, "Invalid format: %s\n\r", line);
            continue;
        default:
            fprintf(stderr, "Unexpected error: %d\n\r", cmd_error);
            continue;
        }
        if ((option_idx = CMD_check_options(cmd)) != CMD_ERR_NONE)
        {
            fprintf(stderr, "Invalid option: %c\n\r", cmd.options[option_idx]->label);
            continue;
        }
        run_status = RUN_SUCCESS;
        switch (cmd.type)
        {
        case CMD_TYPE_NONE:
            break;
        case CMD_TYPE_HELP:
            RUN_help(&cmd);
            break;
        case CMD_TYPE_QUIT:
            RUN_quit();
            return RUN_SUCCESS;
        case CMD_TYPE_AES:
            run_status = RUN_aes(&cmd);
            break;
        case CMD_TYPE_TDC:
            run_status = RUN_tdc(&cmd);
            break;
        case CMD_TYPE_FIFO:
            run_status = RUN_fifo(&cmd);
            break;
        case CMD_TYPE_SCA:
            run_status = RUN_sca(&cmd);
            break;
        default:
            fprintf(stderr, "Not implemented: %s\n\r", strtok(line, " "));
            break;
        }
        if (run_status != RUN_SUCCESS)
        {
            fprintf(stderr, "%s failed\n\r", CMD_labels[cmd.type]);
            continue;
        }
    } while (1);
}
