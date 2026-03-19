#ifndef DEFINES_H_
#define DEFINES_H_

#include "ap_fixed.h"
#include "ap_int.h"
#include "nnet_utils/nnet_types.h"
#include <array>
#include <cstddef>
#include <cstdio>
#include <tuple>
#include <tuple>


// hls-fpga-machine-learning insert numbers

// hls-fpga-machine-learning insert layer-precision
typedef ap_fixed<16,6> input_t;
typedef ap_fixed<16,6> model_default_t;
typedef ap_fixed<38,18> dense_result_t;
typedef ap_fixed<16,6> dense_weight_t;
typedef ap_fixed<16,6> dense_bias_t;
typedef ap_uint<1> layer2_index;
typedef ap_fixed<16,6> layer3_t;
typedef ap_fixed<18,8> dense_relu_table_t;
typedef ap_fixed<39,19> dense_1_result_t;
typedef ap_fixed<16,6> dense_1_weight_t;
typedef ap_fixed<16,6> dense_1_bias_t;
typedef ap_uint<1> layer4_index;
typedef ap_fixed<16,6> layer5_t;
typedef ap_fixed<18,8> dense_1_relu_table_t;
typedef ap_fixed<38,18> result_t;
typedef ap_fixed<16,6> dense_2_weight_t;
typedef ap_fixed<16,6> dense_2_bias_t;
typedef ap_uint<1> layer6_index;

// hls-fpga-machine-learning insert emulator-defines


#endif
