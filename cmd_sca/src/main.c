#include "run.h"
#include "tdc_hw.h"
#define SCA_PROJECT_VERSION "1.1.0"

int main(int argc, char *argv[])
{
    printf("\n\n*** cmd_sca %s ***\n\n", SCA_PROJECT_VERSION);
    TDC_HW_calibrate(0);
    RUN_cmd();
    return 0;
}
