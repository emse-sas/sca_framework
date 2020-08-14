//
// Created by Sami Dahoux (s.dahoux@emse.fr) on 26/06/2020.
//

#include "run.h"

void RUN_all_help()
{
    int option_idx = 0;
    int cmd_idx = 1;
    printf("Label   Description\n\n");
    for (; cmd_idx < CMD_COUNT_TYPE; cmd_idx++)
    {
        printf("%-8s%-48s ", CMD_labels[cmd_idx], CMD_descriptions[cmd_idx]);
        for (option_idx = 0; CMD_allowed_options[cmd_idx][option_idx] != CMD_NULL_OPTION; option_idx++)
        {
            printf("-%c %-16s ",
                       CMD_allowed_options[cmd_idx][option_idx],
                       CMD_opt_type_labels[CMD_allowed_types[cmd_idx][option_idx]]);
        }
        printf("\n");
    }
}

void RUN_cmd_help(const CMD_type_t type)
{
    size_t option_idx = 0;
    printf("Label   Description\n");
    printf("%-8s%-128s", CMD_labels[type], CMD_descriptions[type]);

    for (; CMD_allowed_options[type][option_idx] != CMD_NULL_OPTION; option_idx++)
    {
        printf("\n\t-%c %-16s ",
                   CMD_allowed_options[type][option_idx],
                   CMD_opt_type_labels[CMD_allowed_types[type][option_idx]]);
    }
    printf("\n");
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
    printf("*** exiting ***\n");
}

void RUN_tiny_aes(uint8_t *block, const uint8_t *key, int inv, int acq)
{
    struct AES_ctx ctx;
    char block_str[9 * RUN_AES_BYTES_SIZE + 3], key_str[9 * RUN_AES_BYTES_SIZE + 3];

    printf("*** tiny aes ***\n");

    HEX_stringify_bytes(key_str, key, RUN_AES_BYTES_SIZE);
    printf("key: %s\n", key_str);

    HEX_stringify_bytes(block_str, block, RUN_AES_BYTES_SIZE);
    printf("%s: %s\n", inv ? "cipher" : "plain", block_str);

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
        FIFO_HW_clear(FIFO_HW_MODE_SW);
        FIFO_HW_start_write();
        AES_ECB_decrypt(&ctx, block);
        FIFO_HW_stop_write();
    }
    else if (acq && !inv)
    {
        FIFO_HW_clear(FIFO_HW_MODE_SW);
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
    printf("%s: %s\n", inv ? "plain" : "cipher", block_str);
}

void RUN_hw_aes(uint32_t *block, const uint32_t *key, int inv, int acq)
{
    char block_str[9 * RUN_AES_BYTES_SIZE + 3], key_str[9 * RUN_AES_BYTES_SIZE + 3];

    printf("*** hardware aes ***\n");

    AES_HW_clear(inv ? AES_HW_DECRYPT : AES_HW_ENCRYPT);

    AES_HW_write_key(key);
    HEX_stringify_words(key_str, key, RUN_AES_WORDS_SIZE);
    printf("key: %s\n", key_str);

    AES_HW_write_input(block);
    HEX_stringify_words(block_str, block, RUN_AES_WORDS_SIZE);
    printf("%s: %s\n", inv ? "cipher" : "plain", block_str);

    if (acq)
    {
        FIFO_HW_clear(FIFO_HW_MODE_HW);
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
    printf("%s: %s\n", inv ? "plain" : "cipher", block_str);
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
        HEX_bytes_to_words(key, cmd->options[key_idx]->value.bytes, RUN_AES_BYTES_SIZE);
        HEX_bytes_to_words(block, cmd->options[inv ? cipher_idx : plain_idx]->value.bytes, RUN_AES_BYTES_SIZE);
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

    if (CMD_OPT_BOTH_PRESENT(calibrate_idx, delay_idx))
    {
        return RUN_FAILURE;
    }

    uint64_t delay;
    if (delay_idx != CMD_ERR_NOT_FOUND)
    {
        TDC_HW_write_delay(cmd->options[delay_idx]->value.words[0], cmd->options[delay_idx]->value.words[1], -1);
        delay = TDC_HW_read_delay(-1);
    }

    if (calibrate_idx != CMD_ERR_NOT_FOUND)
    {
        printf("*** calibration ***\n");
        delay = TDC_HW_calibrate(cmd->options[calibrate_idx]->value.integer);  
    }

    if (read_idx != CMD_ERR_NOT_FOUND)
    {
        printf("raw: %08x\n", TDC_HW_read(cmd->options[read_idx]->value.integer, TDC_HW_MODE_RAW));
        return RUN_SUCCESS;
    }
    printf("value: %08x\n", TDC_HW_read(-1, TDC_HW_MODE_WEIGHT));
    printf("delay: 0x%08x%08x\n", (unsigned int)(delay >> 32), (unsigned int)delay);

    return RUN_SUCCESS;
}

void RUN_fifo_flush()
{
    FIFO_HW_clear(FIFO_HW_MODE_SW);
    printf("*** flush successful ***\n");
}

void RUN_fifo_read(int mini)
{
    printf("*** read ***\n");

    uint32_t weights[FIFO_HW_STACK_SIZE];
    int len = FIFO_HW_read(weights, FIFO_HW_STACK_SIZE);

    for (size_t i = 0; i < len; i++)
    {
        weights[i] = OP_sum_weights(weights[i], NULL);
    }
    

    printf("samples: %d\n", len);
    if (len == 0)
    {
        return;
    }
    char str_weights[4 * FIFO_HW_STACK_SIZE + 1] = "";
    if (mini)
    {
        OP_encode_hamming(str_weights, weights, len, TDC_HW_CALIBRATE_TARGET * TDC_HW_COUNT_TDC);
        printf("code: %s\n", str_weights);
    }
    else
    {
        OP_stringify_hamming(str_weights, weights, len);
        printf("weights: %s\n", str_weights);
    }
}

RUN_status_t RUN_fifo(const CMD_cmd_t *cmd)
{
    const CMD_opt_t **options_ptr = (const CMD_opt_t **)cmd->options;
    int read_idx = CMD_find_option(options_ptr, 'r');
    int flush_idx = CMD_find_option(options_ptr, 'f');
    int min_idx = CMD_find_option(options_ptr, 'm');

    if (CMD_OPT_BOTH_MISSING(read_idx, flush_idx) ||
        CMD_OPT_BOTH_PRESENT(read_idx, flush_idx))
    {
        return RUN_FAILURE;
    }

    if (flush_idx != CMD_ERR_NOT_FOUND)
    {
        RUN_fifo_flush();
    }

    RUN_fifo_read(min_idx != CMD_ERR_NOT_FOUND);

    return RUN_SUCCESS;
}

RUN_status_t RUN_sca(const CMD_cmd_t *cmd)
{
    const CMD_opt_t **options_ptr = (const CMD_opt_t **)cmd->options;
    int traces_idx = CMD_find_option(options_ptr, 't');
    int hw_idx = CMD_find_option(options_ptr, 'h');
    int inv_idx = CMD_find_option(options_ptr, 'i');
    int min_idx = CMD_find_option(options_ptr, 'm');
    if (traces_idx == CMD_ERR_NOT_FOUND)
    {
        return RUN_FAILURE;
    }
    int traces_count = cmd->options[traces_idx]->value.integer;
    int inv = inv_idx != CMD_ERR_NOT_FOUND;
    int hw = hw_idx != CMD_ERR_NOT_FOUND;
    uint32_t key[RUN_AES_WORDS_SIZE], block[RUN_AES_WORDS_SIZE];
    uint8_t key8[RUN_AES_BYTES_SIZE], block8[RUN_AES_BYTES_SIZE];

    printf("*** start acquisition ***\n");
    printf("mode: %s\n", hw ? "hw" : "sw");
    printf("direction: %s\n", inv ? "decrypt" : "encrypt");
    printf("sensors: %d\n", TDC_HW_COUNT_TDC);
    printf("target: %d\n", TDC_HW_CALIBRATE_TARGET);

    HEX_random_words(key, INT_MAX, RUN_AES_WORDS_SIZE);
    HEX_words_to_bytes(key8, key, RUN_AES_BYTES_SIZE);
    for (int idx = 0; idx < traces_count; idx++)
    {
    	printf("\xfe\xfe\xfe\xfe\n");
        HEX_random_words(block, idx + 1, RUN_AES_WORDS_SIZE);
        if (hw)
        {
            RUN_hw_aes(block, key, inv, 1);
        }
        else
        {
            HEX_words_to_bytes(block8, block, RUN_AES_BYTES_SIZE);
            RUN_tiny_aes(block8, key8, inv, 1);
        }
        RUN_fifo_read(min_idx != CMD_ERR_NOT_FOUND);
    }
    printf("\xff\xff\xff\xff\n");
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
        printf("> ");
        if (IO_get_line(line, CMD_LINE_SIZE) != IO_SUCCESS)
        {
            fprintf(stderr, "read error: errno=%d\n", errno);
            return RUN_FAILURE;
        }
        strcpy(buffer, line);
        switch ((cmd_error = CMD_parse_line(buffer, &cmd)))
        {
        case CMD_ERR_NONE:
            break;
        case CMD_ERR_NOT_FOUND:
            fprintf(stderr, "unknown command: %s\n", strtok(line, " "));
            continue;
        case CMD_ERR_ALLOC:
            fprintf(stderr, "allocation error: errno=%d\n", errno);
            return RUN_FAILURE;
        case CMD_ERR_FORMAT:
            fprintf(stderr, "invalid format: %s\n", line);
            continue;
        default:
            fprintf(stderr, "unexpected error: %d\n", cmd_error);
            continue;
        }
        if ((option_idx = CMD_check_options(cmd)) != CMD_ERR_NONE)
        {
            fprintf(stderr, "invalid option: %c\n", cmd.options[option_idx]->label);
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
            fprintf(stderr, "not implemented: %s\n", strtok(line, " "));
            break;
        }
        if (run_status != RUN_SUCCESS)
        {
            fprintf(stderr, "%s failed\n", CMD_labels[cmd.type]);
            continue;
        }
    } while (1);
}
