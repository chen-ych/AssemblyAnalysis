#include <stdio.h>
//#include "rivai_bare.h"
#include <stdint.h>
#include <math.h>
#include <stdlib.h>

#define MIN(a, b) ((a) < (b) ? (a) : (b))
#define height_scale_log2 1
#define width_scale_log2 1
#define hw_shift 7

void resize_golden(
		int16_t *restrict src_arr,
		int16_t *restrict dst_arr,
		uint16_t src_h,
		uint16_t src_w,
		uint16_t dst_h,
		uint16_t dst_w,
		uint16_t dst_c,
		uint16_t height_scale,
		uint16_t width_scale){
    for (uint16_t h = 0; h < dst_h; h++){
        uint16_t input_y = ((h<< hw_shift) >> height_scale_log2);
	uint16_t y0 = (input_y >> hw_shift);
	uint16_t y1 = MIN(y0+1, src_h-1);
	
	for (uint16_t w = 0; w < dst_w; w++){
	    uint16_t input_x = ((w <<hw_shift) >> width_scale_log2);
	    uint16_t x0 = (input_x >> hw_shift);
	    uint16_t x1 = MIN(x0+1, src_w-1);
	    for (uint16_t c = 0; c < dst_c; c++){
	        uint16_t factor = (uint16_t)1 << hw_shift;
	        uint16_t h1_lambda = (uint16_t)(input_y - (y0 << hw_shift));
	        uint16_t h0_lambda = factor - h1_lambda;
	        uint16_t w1_lambda = (uint16_t)(input_x - (x0 << hw_shift));
	        uint16_t w0_lambda = factor - w1_lambda;

		uint32_t y0x0_index = c*src_w*src_h + y0*src_w + x0;
		uint32_t y0x1_index = c*src_w*src_h + y0*src_w + x1;
		uint32_t y1x0_index = c*src_w*src_h + y1*src_w + x0;
		uint32_t y1x1_index = c*src_w*src_h + y1*src_w + x1;

		uint32_t dst_index = c*dst_w*dst_h + h*dst_w + w;
		int16_t sum1 = (w0_lambda * src_arr[y0x0_index] + w1_lambda * src_arr[y0x1_index]) >> hw_shift;
		int16_t sum4 = (w0_lambda * src_arr[y1x0_index] + w1_lambda * src_arr[y1x1_index]) >> hw_shift;
		dst_arr[dst_index] = (int16_t)((h0_lambda*sum1 + h1_lambda*sum4) >> hw_shift);
	    }
	}
    }
}

int main(void){
    uint16_t src_height = 112;
    uint16_t src_width = 88;
    uint16_t src_channel = 1;
    uint16_t height_scale = 2;
    uint16_t width_scale = 2;
    uint32_t SRC_SIZE = src_height * src_width * src_channel;

    uint16_t dst_height = (uint16_t)(src_height*height_scale);
    uint16_t dst_width = (uint16_t)(src_width*width_scale);
    uint32_t DST_SIZE = dst_height*dst_width*src_channel;

    int16_t src_arr[SRC_SIZE];
    int16_t out_arr[DST_SIZE];

    for(uint32_t i=0; i<SRC_SIZE; i++){
    	src_arr[i] = (int16_t)(rand()%64);
    }
    unsigned long start,end;
    start = rdcycle();
    resize_golden(src_arr,out_arr,src_height,src_width,dst_height,dst_width,src_channel,height_scale,width_scale);
    end = rdcycle();
    printf("resize process cycles: %lu\n", end - start);

}
