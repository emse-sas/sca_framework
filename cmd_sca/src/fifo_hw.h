#ifndef SCA_FRAMEWORK_FIFO_HW_H
#define SCA_FRAMEWORK_FIFO_HW_H

#include "xparameters.h"
#include "xil_io.h"
#include "aes_hw.h"

#define FIFO_HW_WORD_SIZE 4

#define FIFO_HW_BASE_ADDR XPAR_FIFO_CONTROLLER_0_S_AXI_BASEADDR

#define FIFO_HW_DATA_POS 0
#define FIFO_HW_STATUS_POS_IN 1
#define FIFO_HW_STATUS_POS_OUT 2

#define FIFO_HW_STATUS_READ 1
#define FIFO_HW_STATUS_EMPTY 1
#define FIFO_HW_STATUS_FULL 2

#define FIFO_HW_ADDR(pos) (FIFO_HW_DATA_POS + FIFO_HW_WORD_SIZE * pos)
#define FIFO_HW_STATUS_SET_1(status, status_reg) (status_reg | status)
#define FIFO_HW_STATUS_SET_0(status, status_reg) (status_reg & ~status)
#define FIFO_HW_STATUS_GET(status, status_reg) (status_reg & status)

#define FIFO_HW_STACK_SIZE 1024

int FIFO_HW_read(uint32_t *words, size_t len);

typedef enum
{
    FIFO_HW_ERR_NONE = -1,
    FIFO_HW_ERR_FULL = -2,
    FIFO_HW_ERR_EMPTY = -3
} FIFO_HW_err_t;

#endif