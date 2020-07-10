/**
 * @file tdc_hw.h
 * @author Sami Dahoux (s.dahoux@emse.fr)
 * @brief Driver for the TDC IP contained in the test system vivado_sca
 * 
 * According to the hardware configuration, only the first data words will be filt with acquisition value. The remaining bits will contain 0.
 */

#ifndef SCA_FRAMEWORK_TDC_HW_H
#define SCA_FRAMEWORK_TDC_HW_H

#include "xparameters.h"
#include "xil_io.h"
#include "op.h"
#include <stdint.h>

#define TDC_HW_WORD_SIZE 4

#define TDC_HW_BASE_ADDR XPAR_TDC_BANK_0_S_AXI_BASEADDR
#define TDC_HW_DATA_POS_0 0
#define TDC_HW_DATA_POS_1 1
#define TDC_HW_DATA_POS_2 2
#define TDC_HW_DATA_POS_3 3
#define TDC_HW_DELAY_POS 4
#define TDC_HW_ADDR(pos) (TDC_HW_BASE_ADDR + TDC_HW_WORD_SIZE * pos)
#define TDC_HW_DELAY(fine, coarse) (fine | (coarse << 4)) /** delay value formating */

#define TDC_HW_DEFAULT_CALIBRATE_IT 512 /** default iteration count for sensor calibration */
#define TDC_HW_CALIBRATE_TARGET 0xffff

#define TDC_HW_MAX_COARSE 0x3
#define TDC_HW_MAX_FINE 0xf

/**
 * @brief Reads the current value of the TDC data registers
 * @return read value
 */
uint32_t TDC_HW_read();

/**
 * @brief Writes the given value of the delay into the corresponding register
 */
void TDC_HW_set_delay(uint32_t delay);

/**
 * @brief Calibrates the TDC in order to provide the best range and sensitivity
 * 
 * The calibration tests all the delay tunning values and pick the best according to measurement.
 * For each delay tunning, an average on `iterations` acquired values is performed.
 * Depending on the value of the average the delay setting is saved or not.
 *   
 * @param iterations count of samples for average
 * @return choosen calibration delay value
 */
uint32_t TDC_HW_calibrate(int iterations);

#endif //SCA_FRAMEWORK_TDC_HW_H
