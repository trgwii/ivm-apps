#ifndef UNCOMPRESS_H
#define UNCOMPRESS_H

#include "xz.h"

int uncompress(char *in_buf, int in_buf_size, char *out_buf, int out_buf_size);

#endif