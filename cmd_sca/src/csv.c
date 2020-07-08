
#include "csv.h"

void CSV_stringify(char* str, unsigned int *weights, size_t len)
{
    for (size_t idx = 0; idx < len - 1; idx++)
    {
        sprintf(str + 4 * idx, "%02u, ", weights[idx]);
    }
    sprintf(str + 4 * (len - 1), "%02u", weights[len - 1]);
}
