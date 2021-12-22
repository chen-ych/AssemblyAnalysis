//#include <riscv_vector.h>
#include <stddef.h>
#include <stdio.h>
#include <math.h>
#include <stdlib.h>

// #define SRC_CHANNEL 1
// #define SRC_HEIGHT 2
// #define SRC_WIDTH 128

// #define SRC_SIZE 128*2
// #define DISP_SIZE 128*2

// #define SRC_CHANNEL 58
// #define SRC_HEIGHT 112
// #define SRC_WIDTH 88

#define SRC_CHANNEL 58
#define SRC_HEIGHT 112
#define SRC_WIDTH 88
#define ARA_PARA 4

#define SRC_SIZE SRC_HEIGHT*SRC_WIDTH*SRC_CHANNEL
#define DISP_SIZE SRC_HEIGHT*SRC_WIDTH

int8_t src_arr[SRC_SIZE+DISP_SIZE];
int16_t offset_arr[DISP_SIZE];
int8_t l_mask_arr[DISP_SIZE];
int8_t r_mask_arr[DISP_SIZE];
int8_t golden_arr[SRC_SIZE];
int8_t out_arr[SRC_SIZE];
uint16_t right_idx_arr[DISP_SIZE];
uint16_t left_idx_arr[DISP_SIZE];
int8_t offset_fraction_arr[DISP_SIZE];

void warp_golden(int8_t *src_arr,
                int16_t *offset_arr,
                int8_t *golden_arr){
    size_t offset_idx, feat_idx;
    int16_t offset_ratio, offset_val, offset_int, left_weight, right_weight;
    int16_t left_val, right_val;

    for (size_t c = 0; c < SRC_CHANNEL; c++){
        for (size_t h = 0; h < SRC_HEIGHT; h++){
            for (size_t w = 0; w < SRC_WIDTH; w++){
            // get offset
            offset_idx = h*SRC_WIDTH + w;
            offset_val = offset_arr[offset_idx];
            offset_int = offset_val >> 8;
            
            // judge whether idx out of boundary
            feat_idx = (c*SRC_HEIGHT + h) * SRC_WIDTH + w;
            left_val = ((int16_t)(w - offset_int - 1) >= 0) ? (int16_t)src_arr[feat_idx - offset_int - 1] : 0;
            right_val = ((int16_t)(w - offset_int) >= 0) ? (int16_t)src_arr[feat_idx - offset_int] : 0;

            // linear interpolation             
            left_weight = offset_val - (offset_int << 8);
            right_weight = (0x0001 << 8) - left_weight;
            golden_arr[feat_idx] = (int8_t)((left_val * left_weight + right_val * right_weight) >> 8);

            }
        }
    }
}


int main(){
    int pass = 1;
    int idx = 0;
    for (int i=0; i<SRC_SIZE+DISP_SIZE; i++){
        src_arr[i] = (rand())%128; 
    }

        
    for (int i=0; i<SRC_HEIGHT; i++){
        for (int j=0; j<SRC_WIDTH; j++){
            idx = i*SRC_WIDTH + j;

            offset_arr[idx] = (rand()%128) + (rand()%128)*256;
            //offset_arr[idx] = 5 + 10*256;
            
            //printf("offset_arr idx: %d, val: %d.\n", idx, offset_arr[idx]);
        }
    }
    // printf("##################################.\n");
    // for (int i=0; i<DISP_SIZE; i++){
    //     printf("offset_arr : %d.\n", offset_arr[i]);
    // }
    warp_golden(src_arr, offset_arr, golden_arr);
}
