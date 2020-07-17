#include "tdc_hw.h"

uint32_t TDC_HW_read()
{
    return Xil_In32(TDC_HW_ADDR(TDC_HW_DATA_POS_0));
}

void TDC_HW_write_delay(uint32_t fine, uint32_t coarse, int id)
{
    if (id == -1)
    {
        Xil_Out32(TDC_HW_ADDR(TDC_HW_DELAY_POS_FINE), fine);
        Xil_Out32(TDC_HW_ADDR(TDC_HW_DELAY_POS_COARSE), coarse);
        return;
    }
    uint32_t current_fine = Xil_In32(TDC_HW_ADDR(TDC_HW_DELAY_POS_FINE));
    uint32_t current_coarse = Xil_In32(TDC_HW_ADDR(TDC_HW_DELAY_POS_COARSE));
    uint32_t mask_fine = (0xfffffff0 << (4 * id)) | (0x0ffffff >> (4 * (TDC_HW_COUNT_TDC - id + 2)));
    uint32_t mask_coarse = (0xfffffffc << (2 * id)) | (0xcffffff >> (2 * (TDC_HW_COUNT_TDC - id + 8)));
    Xil_Out32(TDC_HW_ADDR(TDC_HW_DELAY_POS_FINE), (current_fine & mask_fine) | (fine << (4 * id)));
    Xil_Out32(TDC_HW_ADDR(TDC_HW_DELAY_POS_COARSE), (current_coarse & mask_coarse) | (coarse << (2 * id)));
}

uint64_t TDC_HW_read_delay()
{
    uint64_t fine = Xil_In32(TDC_HW_ADDR(TDC_HW_DELAY_POS_FINE));
    uint64_t coarse = Xil_In32(TDC_HW_ADDR(TDC_HW_DELAY_POS_COARSE));
    return TDC_HW_DELAY_64(fine, coarse);
}

uint64_t TDC_HW_calibrate(int iterations)
{
    iterations = iterations ? iterations : TDC_HW_DEFAULT_CALIBRATE_IT;
    uint32_t best_fine = 0, best_coarse = 0;
    uint64_t value, best_value;

    TDC_HW_write_delay(0, 0, -1);
    for (int id = 0; id < TDC_HW_COUNT_TDC; id++)
    {
        best_value = UINT64_MAX;
        for (uint32_t coarse = 0; coarse <= TDC_HW_MAX_COARSE; coarse++)
        {
            for (uint32_t fine = 0; fine <= TDC_HW_MAX_FINE; fine++)
            {
                value = 0;
                TDC_HW_write_delay(fine, coarse, id);
                for (int i = 0; i < iterations; i++)
                {
                    value += TDC_HW_read();
                }
                value /= iterations;
                if (OP_hamming_distance(TDC_HW_CALIBRATE_TARGET, value) < OP_hamming_distance(TDC_HW_CALIBRATE_TARGET, best_value))
                {
                    best_value = value;
                    best_fine = fine;
                    best_coarse = coarse;
                }
            }
        }
        TDC_HW_write_delay(best_fine, best_coarse, id);
    }
    return TDC_HW_read_delay();
}
