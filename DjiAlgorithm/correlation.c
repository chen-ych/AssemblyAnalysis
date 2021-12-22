//#include <riscv_vector.h>
#include <stddef.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <math.h>
#include <time.h>

#define dtype int8_t
#define shape_type size_t
#define res_type int8_t
#define RANGE 256

#define d_LEN 5
#define C_LEN 58
#define H_LEN 112
#define W_LEN 88

// #define d_LEN 5
// #define C_LEN 29
// #define H_LEN 224
// #define W_LEN 176

#define SHIFT 0
#define sum_shift 6

#define total_len W_LEN *H_LEN *C_LEN

dtype image1[total_len], image2[total_len];
res_type golden_res[d_LEN * W_LEN * H_LEN];
res_type rvv_res[d_LEN * W_LEN * H_LEN] = {0};

void randTensor(dtype *data, const shape_type *shape)
{
    for (shape_type c = 0; c < shape[0]; c++)
    {
        for (shape_type h = 0; h < shape[1]; h++)
        {
            for (shape_type w = 0; w < shape[2]; w++)
            {
                *data = rand() % RANGE;
                data++;
            }
        }
    }
}

void scorrelation_golden(const dtype *img1, const dtype *img2, res_type *golden_ref)
{
    memset(golden_ref, 0, d_LEN * H_LEN * W_LEN * sizeof(res_type));
    shape_type in_idx1 = 0, in_idx2 = 0, out_idx = 0;
    for (shape_type d = 0; d < d_LEN; ++d)
    {
        for (shape_type i = 0; i < H_LEN; ++i)
            for (shape_type j = 0; j < W_LEN; ++j)
            {
                out_idx = d * W_LEN * H_LEN + i * W_LEN + j;
                __int32_t temp_data = 0;
                for (shape_type k = 0; k < C_LEN; ++k)
                {
                    if (j >= d)
                    {
                        in_idx1 = k * W_LEN * H_LEN + i * W_LEN + j;
                        in_idx2 = k * W_LEN * H_LEN + i * W_LEN + j - d;
                        __int16_t mul = (img1[in_idx1] * img2[in_idx2]) >> sum_shift;
                        temp_data += mul;
                        if (temp_data > __INT16_MAX__)
                            temp_data = __INT16_MAX__;
                        else if (temp_data < -__INT16_MAX__ - 1)
                            temp_data = -__INT16_MAX__ - 1;
                    }
                }
                golden_ref[out_idx] = (res_type)(temp_data >> SHIFT);
            }
    }
}


int main()
{
    // init
    // srand((unsigned)time(2));
    srand(2021);
    shape_type image_shape[3] = {C_LEN, H_LEN, W_LEN};
    dtype *image1_ptr = image1;
    dtype *image2_ptr = image2;
    shape_type *image_shape_ptr = image_shape;
    randTensor(image1_ptr, image_shape_ptr);
    randTensor(image2_ptr, image_shape_ptr);

    res_type *golden_ptr = golden_res;
    res_type *rvv_ptr = rvv_res;

    // golden
    scorrelation_golden(image1_ptr, image2_ptr, golden_ptr);

}
