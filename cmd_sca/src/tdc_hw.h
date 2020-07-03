
#ifndef SCA_FRAMEWORK_TDC_HW_H
#define SCA_FRAMEWORK_TDC_HW_H

#include "xparameters.h"
#include "xil_io.h"
#include <stdint.h>
#include <math.h>

#define TDC_HW_WORD_SIZE 4
#define TDC_HW_BASE_ADDR XPAR_TDC_SENSOR_0_S_AXI_BASEADDR
#define TDC_HW_DATA_POS_0 0
#define TDC_HW_DATA_POS_1 1
#define TDC_HW_DATA_POS_2 2
#define TDC_HW_STATUS_POS 3
#define TDC_HW_ADDR(pos) (TDC_HW_BASE_ADDR + TDC_HW_WORD_SIZE * pos)
#define TDC_HW_SET_DELAY(fine, coarse) (fine | (coarse << 10))

#define TDC_HW_DEFAULT_CALIBRATE_IT 512

uint32_t TDC_HW_read();

uint32_t TDC_HW_calibrate(int iterations);

#endif //SCA_FRAMEWORK_TDC_HW_H
