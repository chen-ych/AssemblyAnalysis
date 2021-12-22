///*
// ============================================================================
// Name        : psroi.c
// Author      :
// Version     :
// Copyright   : Your copyright notice
// Description : Hello World in C, ANSI-style
// ============================================================================
// */
///*
// * piroi_andes.c
// *
// *  Created on: 2021年4月13日
// *      Author: shawn.lee
// */
//
//#include <riscv_vector.h>
#include <stddef.h>
#include <stdio.h>
#include <math.h>
#include <stdlib.h>

#define inner_shift 8
#define roi_shift 4
#define src_shift 2   // out_shift = src_shift
#define post_shift 2  // post_shift = log2(pooled_w*pooledh) = log2(2*2) = 2

#define MAX(a, b) ((a) > (b) ? (a) : (b))

uint32_t bilinear_interpolate(uint8_t *data,
                            int16_t height,
                            int16_t width,
                            int16_t y,
                            int16_t x){
    uint32_t val = 0;
    if ((y >> roi_shift) >= height || (x >> roi_shift) >= width){
        return 0;
    }
    if (y <=0) y=0;
    if (x <=0) x=0;

    int y_low = (y >> roi_shift);
    int x_low = (x >> roi_shift);
    int y_high;
    int x_high;

    if (y_low >= height -1) {
        y_high = y_low = height -1;
        y = y_low << roi_shift;
    }else{
        y_high = y_low + 1;
    }

    if (x_low >= width -1) {
        x_high = x_low = width -1;
        x = x_low << roi_shift;
    }else{
        x_high = x_low + 1;
    }

    uint16_t ly = y - (y_low << roi_shift);
    uint16_t lx = x - (x_low << roi_shift);
    uint16_t hy = (1 << roi_shift) - ly;
    uint16_t hx = (1 << roi_shift) - lx;
    uint16_t v1 = data[y_low*width + x_low];
    uint16_t v2 = data[y_low*width + x_high];
    uint16_t v3 = data[y_high*width + x_low];
    uint16_t v4 = data[y_high*width + x_high];

    uint16_t w1 = (hy*hx) >> roi_shift;
    uint16_t w2 = (hy*lx) >> roi_shift;
    uint16_t w3 = (ly*hx) >> roi_shift;
    uint16_t w4 = (ly*lx) >> roi_shift;

    // val = ((uint32_t)(w1*v1 + w2*v2 + w3*v3 + w4*v4)) >> (src_shift + roi_shift);
    val = ((uint32_t)(w1*v1 + w2*v2 + w3*v3 + w4*v4)) >> (roi_shift);

    return val;
}

void psroi_align_golden(uint8_t *data,
                        uint16_t *rois_arr,
                        uint16_t *out_data,
                        uint32_t rois_num,
                        uint32_t k2_index,
                        uint32_t pooled_h,
                        uint32_t pooled_w,
                        uint32_t pooled_c,
                        uint32_t src_height,
                        uint32_t src_width,
                        uint32_t out_chan_stride,
                        uint32_t out_width,
                        uint8_t sampling_ratio){
    uint8_t *data_ptr = data;

    uint16_t ph = k2_index / pooled_w;
    uint16_t pw = k2_index % pooled_w;

    for (uint32_t i=0; i<rois_num; i++){
        data_ptr = data;
        uint16_t roi_start_w = rois_arr[4 * i];
        uint16_t roi_start_h = rois_arr[4 * i + 1];
        uint16_t roi_end_w = rois_arr[4 * i + 2];
        uint16_t roi_end_h = rois_arr[4 * i + 3];

        uint16_t roi_width = MAX((roi_end_w - roi_start_w), (1 << roi_shift));
        uint16_t roi_height = MAX((roi_end_h - roi_start_h), (1 << roi_shift));

        uint16_t bin_size_ratio_w = (uint16_t)((1.0 / pooled_w) * (1 << inner_shift));
        uint16_t bin_size_ratio_h = (uint16_t)((1.0 / pooled_h) * (1 << inner_shift));
        uint16_t bin_size_w = (roi_width * bin_size_ratio_w) >> inner_shift;
        uint16_t bin_size_h = (roi_height * bin_size_ratio_h) >> inner_shift;

        int roi_bin_grid_w = sampling_ratio;
        int roi_bin_grid_h = sampling_ratio;

        uint16_t grid_w = bin_size_w / (sampling_ratio * 2);
        uint16_t grid_h = bin_size_h / (sampling_ratio * 2);

        // (C+1) channels
        for (int c = 0; c < pooled_c; c++){
            uint32_t output_val = 0;
            uint32_t index = i*out_chan_stride + c*out_width + ph*pooled_w + pw;
            for (int iy = 0; iy < roi_bin_grid_h; iy++){
                uint16_t y = roi_start_h + ph * bin_size_h + (2*iy + 1)*grid_h;
                for (int ix = 0; ix < roi_bin_grid_w; ix++){
                    uint16_t x = roi_start_w + pw * bin_size_w + (2*ix + 1)*grid_w;
                    output_val += bilinear_interpolate(
                        data_ptr,
                        src_height,
                        src_width,
                        y,
                        x);
                }// end of bin x
            }// end of bin y
            // output_val /= count
            out_data[index] = (uint16_t)(output_val >> post_shift);
            data_ptr += src_height * src_width;
        }
    }
}

void psroi_pooling_align_golden(uint8_t *src_arr,
                        uint16_t *roi_arr,
                        uint16_t *out_arr,
                        uint32_t rois_num,
                        uint32_t src_k2,
                        uint32_t pooled_h,
                        uint32_t pooled_w,
                        uint32_t pooled_c,
                        uint32_t src_height,
                        uint32_t src_width,
                        uint32_t out_chan_stride,
                        uint32_t out_width,
                        uint8_t sampling_ratio){
    uint8_t *src_ptr = src_arr;
    for (uint32_t i=0; i<src_k2; i++){
        psroi_align_golden(src_ptr,
                            roi_arr,
                            out_arr,
                            rois_num,
                            i,
                            pooled_h,
                            pooled_w,
                            pooled_c,
                            src_height,
                            src_width,
                            out_chan_stride,
                            out_width,
                            sampling_ratio);
        src_ptr += src_height * src_width * pooled_c;
    }
}

int main(){

    int pass = 1;
    uint32_t src_height = 23;
    uint32_t src_width = 40;
    uint32_t pooled_h = 7;
    uint32_t pooled_w = 7;
    uint32_t src_k2 = pooled_h * pooled_w;
    uint32_t pooled_c = 8;
    uint32_t src_channel = pooled_c * src_k2;
    uint32_t out_chan_stride = pooled_h * pooled_w * pooled_c;
    uint32_t out_hw_stride = pooled_h * pooled_w;
    uint32_t sampling_ratio = 2;

    uint32_t rois_num = 300;
    uint32_t rois_persize = 4;

    uint32_t ROI_SIZE = rois_persize * rois_num;
    uint32_t SRC_SIZE = src_height * src_width * src_channel;
    uint32_t DST_SIZE = rois_num*pooled_h * pooled_w * pooled_c;
    uint32_t INDEX_SIZE = rois_num * src_k2;

    uint8_t src_arr[SRC_SIZE];
    uint8_t src_arr_nhwc[SRC_SIZE];
    uint16_t roi_arr[ROI_SIZE];
    uint16_t out_arr[DST_SIZE];
    uint16_t out_arr_vec[DST_SIZE];
    uint16_t out_arr_vec_nchw[DST_SIZE];

    uint32_t b0_index_arr[INDEX_SIZE];
	uint32_t b1_index_arr[INDEX_SIZE];
	uint32_t b2_index_arr[INDEX_SIZE];
	uint32_t b3_index_arr[INDEX_SIZE];
	uint32_t b4_index_arr[INDEX_SIZE];
	uint32_t b5_index_arr[INDEX_SIZE];
	uint32_t b6_index_arr[INDEX_SIZE];
	uint32_t b7_index_arr[INDEX_SIZE];
	uint32_t b8_index_arr[INDEX_SIZE];
	uint32_t b9_index_arr[INDEX_SIZE];
	uint32_t b10_index_arr[INDEX_SIZE];
	uint32_t b11_index_arr[INDEX_SIZE];
	uint32_t b12_index_arr[INDEX_SIZE];
	uint32_t b13_index_arr[INDEX_SIZE];
	uint32_t b14_index_arr[INDEX_SIZE];
	uint32_t b15_index_arr[INDEX_SIZE];

	uint8_t w0_index_arr[INDEX_SIZE];
	uint8_t w1_index_arr[INDEX_SIZE];
	uint8_t w2_index_arr[INDEX_SIZE];
	uint8_t w3_index_arr[INDEX_SIZE];
	uint8_t w4_index_arr[INDEX_SIZE];
	uint8_t w5_index_arr[INDEX_SIZE];
	uint8_t w6_index_arr[INDEX_SIZE];
	uint8_t w7_index_arr[INDEX_SIZE];
	uint8_t w8_index_arr[INDEX_SIZE];
	uint8_t w9_index_arr[INDEX_SIZE];
	uint8_t w10_index_arr[INDEX_SIZE];
	uint8_t w11_index_arr[INDEX_SIZE];
	uint8_t w12_index_arr[INDEX_SIZE];
	uint8_t w13_index_arr[INDEX_SIZE];
	uint8_t w14_index_arr[INDEX_SIZE];
	uint8_t w15_index_arr[INDEX_SIZE];

    uint16_t height_border = src_height -1;
    uint16_t width_border = src_width -1;
    // maskedoff_height [height-1,...]
    // maskedoff_width [width-1,...]
    uint16_t maskedoff_height_arr[rois_num];
    uint16_t maskedoff_width_arr[rois_num];
    for (uint32_t i = 0; i < rois_num; i++){
        maskedoff_height_arr[i] = height_border;
        maskedoff_width_arr[i] = width_border;
    }

    for (int i=0; i<SRC_SIZE; i++){
        // src_arr[i] = (i % 230);
        src_arr[i] = ((i % 64) << src_shift);
        // src_arr[i] = 1 * (1 << roi_shift);
        // src_arr[i] = (rand())%64;
        // printf("src_arr is %d.\n", src_arr[i]);
    }

    for(int i=0; i< rois_num/2; i++){
        roi_arr[i*8]   = (uint16_t)(1 * (1 << roi_shift));
        roi_arr[i*8+1] = (uint16_t)(1 * (1 << roi_shift));
        roi_arr[i*8+2] = (uint16_t)(5 * (1 << roi_shift));
        roi_arr[i*8+3] = (uint16_t)(5 * (1 << roi_shift));

        roi_arr[i*8+4] = (uint16_t)(11 * (1 << roi_shift));
        roi_arr[i*8+5] = (uint16_t)(11 * (1 << roi_shift));
        roi_arr[i*8+6] = (uint16_t)(15 * (1 << roi_shift));
        roi_arr[i*8+7] = (uint16_t)(15 * (1 << roi_shift));
    }

    psroi_pooling_align_golden(src_arr,
                            roi_arr,
                            out_arr,
                            rois_num,
                            src_k2,
                            pooled_h,
                            pooled_w,
                            pooled_c,
                            src_height,
                            src_width,
                            out_chan_stride,
                            out_hw_stride,
                            sampling_ratio);

	for (int i=0; i< DST_SIZE; i++){
        if (!((uint16_t)out_arr_vec_nchw[i] == (uint16_t)out_arr[i])){
            printf("failed, %d != %d\n", out_arr_vec_nchw[i], out_arr[i]);
            pass = 0;
        }
	}
	if (pass)
		printf("passed\n");
	return (pass == 0);
}
