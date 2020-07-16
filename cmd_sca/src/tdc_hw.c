#include "tdc_hw.h"

uint32_t TDC_HW_max_coarse()
{
    uint32_t max_coarse = 0;
    for (size_t i = 0; i < TDC_HW_COUNT_TDC; i++)
    {
        max_coarse |= (0x3 << (2 * i));
    }
    return max_coarse;
}

uint32_t TDC_HW_max_fine()
{
    uint32_t max_fine = 0;
    for (size_t i = 0; i < TDC_HW_COUNT_TDC; i++)
    {
        max_fine |= (0xf << (4 * i));
    }
    return max_fine;
}

uint32_t TDC_HW_read()
{
    return Xil_In32(TDC_HW_ADDR(TDC_HW_DATA_POS_0));
}

void TDC_HW_write_delay(uint32_t fine, uint32_t coarse)
{
    Xil_Out32(TDC_HW_ADDR(TDC_HW_DELAY_POS_FINE), fine);
    Xil_Out32(TDC_HW_ADDR(TDC_HW_DELAY_POS_COARSE), coarse);
}

uint64_t TDC_HW_read_delay()
{
	uint32_t fine = Xil_In32(TDC_HW_ADDR(TDC_HW_DELAY_POS_FINE));
	uint32_t coarse = Xil_In32(TDC_HW_ADDR(TDC_HW_DELAY_POS_COARSE));
	return TDC_HW_DELAY(fine, coarse);
}

uint64_t TDC_HW_calibrate(int iterations)
{
    iterations = iterations ? iterations : TDC_HW_DEFAULT_CALIBRATE_IT;
    uint32_t best_fine = 0, best_coarse = 0;
    uint32_t max_coarse = TDC_HW_max_coarse(), max_fine = TDC_HW_max_fine();

    uint64_t value, best_value = UINT64_MAX;
    for (uint32_t coarse = 0; coarse <= max_coarse; coarse++)
    {
        for (uint32_t fine = 0; fine <= max_fine; fine++)
        {
            value = 0;
            TDC_HW_write_delay(fine, coarse);
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
    TDC_HW_write_delay(best_fine, best_coarse);
    return TDC_HW_read_delay();
}
