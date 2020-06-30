#include "aes_hw.h"

void AES_HW_clear(int encrypt)
{
    uint32_t inv_mask = encrypt == AES_HW_DECRYPT ? AES_HW_STATUS_INV : 0;
    Xil_Out32(AES_HW_ADDR(AES_HW_STATUS_POS_IN), AES_HW_STATUS_RESET | inv_mask);
    usleep(100);
    Xil_Out32(AES_HW_ADDR(AES_HW_STATUS_POS_IN), AES_HW_STATUS_NULL | inv_mask);
}

void AES_HW_write_input(const uint32_t *bytes)
{
    Xil_Out32(AES_HW_ADDR(AES_HW_DATA_POS_IN_0), bytes[0]);
    Xil_Out32(AES_HW_ADDR(AES_HW_DATA_POS_IN_1), bytes[1]);
    Xil_Out32(AES_HW_ADDR(AES_HW_DATA_POS_IN_2), bytes[2]);
    Xil_Out32(AES_HW_ADDR(AES_HW_DATA_POS_IN_3), bytes[3]);
}

void AES_HW_write_key(const uint32_t *bytes)
{
    Xil_Out32(AES_HW_ADDR(AES_HW_DATA_POS_KEY_0), bytes[0]);
    Xil_Out32(AES_HW_ADDR(AES_HW_DATA_POS_KEY_1), bytes[1]);
    Xil_Out32(AES_HW_ADDR(AES_HW_DATA_POS_KEY_2), bytes[2]);
    Xil_Out32(AES_HW_ADDR(AES_HW_DATA_POS_KEY_3), bytes[3]);
}

void AES_HW_read_input(uint32_t *bytes)
{
    bytes[0] = Xil_In32(AES_HW_ADDR(AES_HW_DATA_POS_IN_0));
    bytes[1] = Xil_In32(AES_HW_ADDR(AES_HW_DATA_POS_IN_1));
    bytes[2] = Xil_In32(AES_HW_ADDR(AES_HW_DATA_POS_IN_2));
    bytes[3] = Xil_In32(AES_HW_ADDR(AES_HW_DATA_POS_IN_3));
}

void AES_HW_read_key(uint32_t *bytes)
{
    bytes[0] = Xil_In32(AES_HW_ADDR(AES_HW_DATA_POS_KEY_0));
    bytes[1] = Xil_In32(AES_HW_ADDR(AES_HW_DATA_POS_KEY_1));
    bytes[2] = Xil_In32(AES_HW_ADDR(AES_HW_DATA_POS_KEY_2));
    bytes[3] = Xil_In32(AES_HW_ADDR(AES_HW_DATA_POS_KEY_3));
}

void AES_HW_read_output(uint32_t *bytes)
{
    bytes[0] = Xil_In32(AES_HW_ADDR(AES_HW_DATA_POS_OUT_0));
    bytes[1] = Xil_In32(AES_HW_ADDR(AES_HW_DATA_POS_OUT_1));
    bytes[2] = Xil_In32(AES_HW_ADDR(AES_HW_DATA_POS_OUT_2));
    bytes[3] = Xil_In32(AES_HW_ADDR(AES_HW_DATA_POS_OUT_3));
}

void AES_HW_launch()
{
    Xil_Out32(AES_HW_ADDR(AES_HW_STATUS_POS_IN), Xil_In32(AES_HW_ADDR(AES_HW_STATUS_POS_IN)) | AES_HW_STATUS_START);
    // while (!(Xil_In32(AES_HW_ADDR(AES_HW_STATUS_POS_OUT)) & AES_HW_STATUS_DONE))
    // {
    // }
    Xil_Out32(AES_HW_ADDR(AES_HW_STATUS_POS_IN), Xil_In32(AES_HW_ADDR(AES_HW_STATUS_POS_IN)) & ~AES_HW_STATUS_START);
}
