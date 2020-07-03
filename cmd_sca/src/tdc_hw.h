/**
 * @file tdc_hw.h
 * @author Sami Dahoux (s.dahoux@emse.fr)
 * @brief Driver for the TDC IP contained in the test system vivado_sca
 * 
 * The TDC sensor a maximum data with of 96 bits.
 * According to the hardware configuration only the first data registers will be filt with acquisition value.
 * Other registers will contain zero.
 */

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

#define TDC_HW_DEFAULT_CALIBRATE_IT 512 /** default iteration count for sensor calibration */


/**
 * @brief Reads the current value of the TDC data registers
 */
uint32_t TDC_HW_read();

/**
 * @brief Calibrates the TDC in order to provide the best range and sensitivity
 * 
 * The calibration tests all the delay tunning and pick the best according to measurement.
 * For each delay tunning, an average on `iterations` acquired values is performed.
 * Depending on the value of the average the delay setting is saved or not.
 *   
 * @param iterations count of samples for average 
 */
uint32_t TDC_HW_calibrate(int iterations);

#endif //SCA_FRAMEWORK_TDC_HW_H
