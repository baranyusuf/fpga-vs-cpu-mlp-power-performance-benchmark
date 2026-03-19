set SynModuleInfo {
  {SRCNAME {dense_latency<ap_fixed<16, 6, 5, 3, 0>, ap_fixed<38, 18, 5, 3, 0>, config2>} MODELNAME dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_38_18_5_3_0_config2_s RTLNAME myproject_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_38_18_5_3_0_config2_s
    SUBMODULES {
      {MODELNAME myproject_mul_16s_14s_26_1_1 RTLNAME myproject_mul_16s_14s_26_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME myproject_mul_16s_13s_26_1_1 RTLNAME myproject_mul_16s_13s_26_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME myproject_mul_16s_12s_26_1_1 RTLNAME myproject_mul_16s_12s_26_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME {relu<ap_fixed<38, 18, 5, 3, 0>, ap_fixed<16, 6, 5, 3, 0>, relu_config3>} MODELNAME relu_ap_fixed_38_18_5_3_0_ap_fixed_16_6_5_3_0_relu_config3_s RTLNAME myproject_relu_ap_fixed_38_18_5_3_0_ap_fixed_16_6_5_3_0_relu_config3_s}
  {SRCNAME {dense_latency<ap_fixed<16, 6, 5, 3, 0>, ap_fixed<39, 19, 5, 3, 0>, config4>} MODELNAME dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_39_19_5_3_0_config4_s RTLNAME myproject_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_39_19_5_3_0_config4_s}
  {SRCNAME {relu<ap_fixed<39, 19, 5, 3, 0>, ap_fixed<16, 6, 5, 3, 0>, relu_config5>} MODELNAME relu_ap_fixed_39_19_5_3_0_ap_fixed_16_6_5_3_0_relu_config5_s RTLNAME myproject_relu_ap_fixed_39_19_5_3_0_ap_fixed_16_6_5_3_0_relu_config5_s}
  {SRCNAME {dense_latency<ap_fixed<16, 6, 5, 3, 0>, ap_fixed<38, 18, 5, 3, 0>, config6>} MODELNAME dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_38_18_5_3_0_config6_s RTLNAME myproject_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_38_18_5_3_0_config6_s}
  {SRCNAME myproject MODELNAME myproject RTLNAME myproject IS_TOP 1}
}
