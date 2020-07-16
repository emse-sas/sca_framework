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
    char *block_str[9 * RUN_AES_BYTES_SIZE + 3], key_str[9 * RUN_AES_BYTES_SIZE + 3];

#ifdef SCA_DEBUG
    xil_printf("*** tiny AES ***\n\r");
#endif

    HEX_stringify_bytes(key_str, key, RUN_AES_BYTES_SIZE);
    xil_printf("key: %s\n\r", key_str);

    HEX_stringify_bytes(block_str, block, RUN_AES_BYTES_SIZE);
    xil_printf("%s: %s\n\r", inv ? "cipher" : "plain", block_str);

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

    HEX_stringify_bytes(block_str, block, RUN_AES_BYTES_SIZE);
    xil_printf("%s: %s\n\r", inv ? "plain" : "cipher", block_str);
}

void RUN_hw_aes(uint32_t *block, const uint32_t *key, int inv, int acq)
{
    char *block_str[9 * RUN_AES_BYTES_SIZE + 3], key_str[9 * RUN_AES_BYTES_SIZE + 3];

#ifdef SCA_DEBUG
    xil_printf("*** hardware AES ***\n\r");
#endif

    AES_HW_clear(inv ? AES_HW_DECRYPT : AES_HW_ENCRYPT);

    AES_HW_write_key(key);
    AES_HW_read_key(key);
    HEX_stringify_words(key_str, key, RUN_AES_WORDS_SIZE);
    xil_printf("key: %s\n\r", key_str);

    AES_HW_write_input(block);
    AES_HW_read_input(block);
    HEX_stringify_words(block_str, block, RUN_AES_WORDS_SIZE);
    xil_printf("%s: %s\n\r", inv ? "cipher" : "plain", block_str);

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
    HEX_stringify_words(block_str, block, RUN_AES_WORDS_SIZE);
    xil_printf("%s: %s\n\r", inv ? "plain" : "cipher", block_str);
}

RUN_status_t RUN_aes(const CMD_cmd_t *cmd)
{
    const CMD_opt_t **options_ptr = (const CMD_opt_t **)cmd->options;
    int cipher_idx = CMD_find_option(options_ptr, 'c');
    int plain_idx = CMD_find_option(options_ptr, 'p');
    int key_idx = CMD_find_option(options_ptr, 'k');
    int hw_idx = CMD_find_option(options_ptr, 'h');
    int acq_idx = CMD_find_option(options_ptr, 'a');

    if (CMD_OPT_BOTH_MISSING(plain_idx, cipher_idx) ||
        CMD_OPT_BOTH_PRESENT(plain_idx, cipher_idx) ||
        key_idx == CMD_ERR_NOT_FOUND)
    {
        return RUN_FAILURE;
    }

    int inv = plain_idx == CMD_ERR_NOT_FOUND;
    int acq = acq_idx != CMD_ERR_NOT_FOUND;
    if (hw_idx == CMD_ERR_NOT_FOUND)
    {
        uint8_t key[RUN_AES_BYTES_SIZE], block[RUN_AES_BYTES_SIZE];
        memcpy(key, cmd->options[key_idx]->value.bytes, RUN_AES_BYTES_SIZE);
        memcpy(block, cmd->options[inv ? cipher_idx : plain_idx]->value.bytes, RUN_AES_BYTES_SIZE);
        RUN_tiny_aes(block, key, inv, acq);
    }
    else
    {
        uint32_t key[RUN_AES_WORDS_SIZE], block[RUN_AES_WORDS_SIZE];
        memcpy(key, cmd->options[key_idx]->value.words, RUN_AES_WORDS_SIZE);
        memcpy(block, cmd->options[inv ? cipher_idx : plain_idx]->value.words, RUN_AES_WORDS_SIZE);
        RUN_hw_aes(block, key, inv, acq);
    }
    return RUN_SUCCESS;
}

RUN_status_t RUN_tdc(const CMD_cmd_t *cmd)
{
    const CMD_opt_t **options_ptr = (const CMD_opt_t **)cmd->options;
    int calibrate_idx = CMD_find_option(options_ptr, 'c');
    int read_idx = CMD_find_option(options_ptr, 'r');
    int delay_idx = CMD_find_option(options_ptr, 'd');

    if (CMD_OPT_BOTH_PRESENT(calibrate_idx, delay_idx) ||
        (CMD_OPT_BOTH_MISSING(calibrate_idx, delay_idx) && read_idx == CMD_ERR_NOT_FOUND))
    {
        return RUN_FAILURE;
    }

    if (delay_idx != CMD_ERR_NOT_FOUND)
    {
        TDC_HW_write_delay(cmd->options[delay_idx]->value.words[0], cmd->options[delay_idx]->value.words[1]);
#ifdef SCA_DEBUG
        printf("delay: 0x%016llx\n\r", TDC_HW_read_delay());
#endif
    }

    if (calibrate_idx != CMD_ERR_NOT_FOUND)
    {
#ifdef SCA_DEBUG
        xil_printf("*** calibration ***\n\r");
        xil_printf("delay: 0x%016llx\n\r", TDC_HW_calibrate(cmd->options[calibrate_idx]->value.integer));
#else
        TDC_HW_calibrate(cmd->options[calibrate_idx]->value.integer);
#endif
    }

    xil_printf("value: 0x%08x\n\r", TDC_HW_read());

    return RUN_SUCCESS;
}

void RUN_fifo_flush()
{
    FIFO_HW_clear();
#ifdef SCA_DEBUG
    xil_printf("*** fifo flush successful ***\n\r");
#endif
}

void RUN_fifo_read()
{
#ifdef SCA_DEBUG
    xil_printf("*** fifo read ***\n\r");
#endif
    uint32_t buffer[FIFO_HW_STACK_SIZE];
    unsigned char weights[FIFO_HW_STACK_SIZE];
    int len = FIFO_HW_read(buffer, FIFO_HW_STACK_SIZE);
    len = len == FIFO_HW_ERR_NONE ? FIFO_HW_STACK_SIZE : len;

    xil_printf("success: %d words\n\r", len);
    if (len == 0)
    {
        return;
    }
    char str_weights[3 * FIFO_HW_STACK_SIZE + 1] = "";
    OP_words_to_hamming(buffer, weights, len);
    CSV_stringify_u32(str_weights, weights, len);
    xil_printf("%s\n\r", str_weights);
}

RUN_status_t RUN_fifo(const CMD_cmd_t *cmd)
{
    const CMD_opt_t **options_ptr = (const CMD_opt_t **)cmd->options;
    int read_idx = CMD_find_option(options_ptr, 'r');
    int flush_idx = CMD_find_option(options_ptr, 'f');
    if (CMD_OPT_BOTH_MISSING(read_idx, flush_idx) ||
        CMD_OPT_BOTH_PRESENT(read_idx, flush_idx))
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
    uint32_t key[RUN_AES_WORDS_SIZE], block[RUN_AES_WORDS_SIZE];
    uint8_t key8[RUN_AES_BYTES_SIZE], block8[RUN_AES_BYTES_SIZE];

#ifdef SCA_DEBUG
    xil_printf("*** start sca acquisition ***\n\r");
#endif

    HEX_random_words(key, INT_MAX, RUN_AES_WORDS_SIZE);
    HEX_words_to_bytes(key8, key, RUN_AES_BYTES_SIZE);
    for (int idx = 0; idx < traces_count; idx++)
    {
        HEX_random_words(block, idx + 1, RUN_AES_WORDS_SIZE);
        if (hw_idx == CMD_ERR_NOT_FOUND)
        {
            HEX_words_to_bytes(block8, block, RUN_AES_BYTES_SIZE);
            RUN_tiny_aes(block8, key8, inv, 1);
        }
        else
        {
            RUN_fifo_flush();
            RUN_hw_aes(block, key, inv, 1);
        }
        RUN_fifo_read();
    }
    xil_printf("end\n\r");
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
            fprintf(stderr, "read error: errno=%d\n\r", errno);
            return RUN_FAILURE;
        }
        strcpy(buffer, line);
        switch ((cmd_error = CMD_parse_line(buffer, &cmd)))
        {
        case CMD_ERR_NONE:
            break;
        case CMD_ERR_NOT_FOUND:
            fprintf(stderr, "unknown command: %s\n\r", strtok(line, " "));
            continue;
        case CMD_ERR_ALLOC:
            fprintf(stderr, "allocation error: errno=%d\n\r", errno);
            return RUN_FAILURE;
        case CMD_ERR_FORMAT:
            fprintf(stderr, "invalid format: %s\n\r", line);
            continue;
        default:
            fprintf(stderr, "unexpected error: %d\n\r", cmd_error);
            continue;
        }
        if ((option_idx = CMD_check_options(cmd)) != CMD_ERR_NONE)
        {
            fprintf(stderr, "invalid option: %c\n\r", cmd.options[option_idx]->label);
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
            fprintf(stderr, "not implemented: %s\n\r", strtok(line, " "));
            break;
        }
        if (run_status != RUN_SUCCESS)
        {
            fprintf(stderr, "%s failed\n\r", CMD_labels[cmd.type]);
            continue;
        }
    } while (1);
}
