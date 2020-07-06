#include "fifo_hw.h"

int FIFO_HW_read(uint32_t *words, size_t len)
{
    Xil_Out32(FIFO_HW_ADDR(FIFO_HW_STATUS_POS_IN), FIFO_HW_STATUS_SET_1(FIFO_HW_STATUS_READ, Xil_In32(FIFO_HW_ADDR(FIFO_HW_STATUS_POS_IN))));
    for (size_t idx = 0; idx < len; idx++)
    {
        if (FIFO_HW_STATUS_GET(FIFO_HW_STATUS_EMPTY, Xil_In32(FIFO_HW_ADDR(FIFO_HW_STATUS_POS_OUT))))
        {
            Xil_Out32(FIFO_HW_ADDR(FIFO_HW_STATUS_POS_IN), FIFO_HW_STATUS_SET_0(FIFO_HW_STATUS_READ, Xil_In32(FIFO_HW_ADDR(FIFO_HW_STATUS_POS_IN))));
            return idx;
        }
        words[idx] = Xil_In32(FIFO_HW_ADDR(FIFO_HW_DATA_POS));
    }
    return FIFO_HW_ERR_NONE;
}