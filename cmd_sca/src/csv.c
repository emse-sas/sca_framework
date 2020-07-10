
#include "csv.h"

void CSV_stringify_u32(char *str, unsigned char *weights, size_t len)
{
	if(len == 0) {
		return;
	}

    for (size_t idx = 0; idx < len - 1; idx++)
    {
        sprintf(str + 3 * idx, "%02u,", weights[idx]);
    }
	sprintf(str + 3 * (len - 1), "%02u", weights[len - 1]);
}
