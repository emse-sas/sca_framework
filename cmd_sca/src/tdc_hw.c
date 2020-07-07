#include "tdc_hw.h"

uint32_t TDC_HW_read()
{
    return Xil_In32(TDC_HW_ADDR(TDC_HW_DATA_POS_0));
}

void TDC_HW_set_delay(uint32_t delay)
{
    Xil_Out32(TDC_HW_ADDR(TDC_HW_DELAY_POS), delay);
}

uint32_t TDC_HW_calibrate(int iterations)
{
    iterations = iterations ? iterations : TDC_HW_DEFAULT_CALIBRATE_IT;
    uint32_t delay, best_delay = 0x00000000;
    char best_coarse = 0;
    uint64_t value, best_value = 0xffffffffffffffff;
    for (uint32_t coarse = 0; coarse <= 0x3; coarse++)
    {
        for (uint32_t fine = 0; fine <= 0xf; fine++)
        {
            delay = TDC_HW_DELAY(coarse, fine);
            value = 0;
            TDC_HW_set_delay(delay);
            for (int i = 0; i < iterations; i++)
            {
                value += TDC_HW_read();
            }
            value /= iterations;
            if (value < best_value && value >= 0xffff)
            {
                best_delay = delay;
                best_value = value;
            }
        }
    }
    TDC_HW_set_delay(best_delay);
    return best_delay;
}
