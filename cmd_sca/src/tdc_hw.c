#include "tdc_hw.h"

uint32_t TDC_HW_read()
{
    return Xil_In32(TDC_HW_ADDR(TDC_HW_DATA_POS_0));
}

uint32_t TDC_HW_calibrate(int iterations)
{
    iterations = iterations ? iterations : TDC_HW_DEFAULT_CALIBRATE_IT;
    uint32_t delay, best_delay;
    uint64_t value, best_value = 0xffffffffffffffff;
    for (uint32_t coarse = 0; coarse <= 0x0000003; coarse++)
    {
        for (uint32_t fine = 0; fine <= 0x00001ff; fine++)
        {
            delay = TDC_HW_SET_DELAY(fine, coarse);
            Xil_Out32(TDC_HW_ADDR(TDC_HW_STATUS_POS), delay);
            value = 0;
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
    Xil_Out32(TDC_HW_ADDR(TDC_HW_STATUS_POS), best_delay);
    return best_delay;
}
