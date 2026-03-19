; ModuleID = '/home/y.baran.659/fpga_hls4ml/hls_project/myproject_prj/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"struct.ap_fixed<16, 6, AP_TRN, AP_WRAP, 0>" = type { %"struct.ap_fixed_base<16, 6, true, AP_TRN, AP_WRAP, 0>" }
%"struct.ap_fixed_base<16, 6, true, AP_TRN, AP_WRAP, 0>" = type { %"struct.ssdm_int<16, true>" }
%"struct.ssdm_int<16, true>" = type { i16 }
%"struct.ap_fixed<38, 18, AP_TRN, AP_WRAP, 0>" = type { %"struct.ap_fixed_base<38, 18, true, AP_TRN, AP_WRAP, 0>" }
%"struct.ap_fixed_base<38, 18, true, AP_TRN, AP_WRAP, 0>" = type { %"struct.ssdm_int<38, true>" }
%"struct.ssdm_int<38, true>" = type { i38 }

; Function Attrs: inaccessiblemem_or_argmemonly noinline willreturn
define void @apatb_myproject_ir(%"struct.ap_fixed<16, 6, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="32" %input_layer, %"struct.ap_fixed<38, 18, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull "fpga.decayed.dim.hint"="8" "partition" %layer6_out) local_unnamed_addr #0 {
entry:
  %input_layer_copy3 = alloca i512, align 512
  %layer6_out_copy_0 = alloca i38, align 512
  %layer6_out_copy_1 = alloca i38, align 512
  %layer6_out_copy_2 = alloca i38, align 512
  %layer6_out_copy_3 = alloca i38, align 512
  %layer6_out_copy_4 = alloca i38, align 512
  %layer6_out_copy_5 = alloca i38, align 512
  %layer6_out_copy_6 = alloca i38, align 512
  %layer6_out_copy_7 = alloca i38, align 512
  %0 = bitcast %"struct.ap_fixed<16, 6, AP_TRN, AP_WRAP, 0>"* %input_layer to [32 x %"struct.ap_fixed<16, 6, AP_TRN, AP_WRAP, 0>"]*
  %1 = bitcast %"struct.ap_fixed<38, 18, AP_TRN, AP_WRAP, 0>"* %layer6_out to [8 x %"struct.ap_fixed<38, 18, AP_TRN, AP_WRAP, 0>"]*
  call void @copy_in([32 x %"struct.ap_fixed<16, 6, AP_TRN, AP_WRAP, 0>"]* nonnull %0, i512* nonnull align 512 %input_layer_copy3, [8 x %"struct.ap_fixed<38, 18, AP_TRN, AP_WRAP, 0>"]* nonnull %1, i38* nonnull align 512 %layer6_out_copy_0, i38* nonnull align 512 %layer6_out_copy_1, i38* nonnull align 512 %layer6_out_copy_2, i38* nonnull align 512 %layer6_out_copy_3, i38* nonnull align 512 %layer6_out_copy_4, i38* nonnull align 512 %layer6_out_copy_5, i38* nonnull align 512 %layer6_out_copy_6, i38* nonnull align 512 %layer6_out_copy_7)
  call void @apatb_myproject_hw(i512* %input_layer_copy3, i38* %layer6_out_copy_0, i38* %layer6_out_copy_1, i38* %layer6_out_copy_2, i38* %layer6_out_copy_3, i38* %layer6_out_copy_4, i38* %layer6_out_copy_5, i38* %layer6_out_copy_6, i38* %layer6_out_copy_7)
  call void @copy_back([32 x %"struct.ap_fixed<16, 6, AP_TRN, AP_WRAP, 0>"]* %0, i512* %input_layer_copy3, [8 x %"struct.ap_fixed<38, 18, AP_TRN, AP_WRAP, 0>"]* %1, i38* %layer6_out_copy_0, i38* %layer6_out_copy_1, i38* %layer6_out_copy_2, i38* %layer6_out_copy_3, i38* %layer6_out_copy_4, i38* %layer6_out_copy_5, i38* %layer6_out_copy_6, i38* %layer6_out_copy_7)
  ret void
}

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #1

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a8struct.ap_fixed<38, 18, AP_TRN, AP_WRAP, 0>"(i38* nocapture "orig.arg.no"="0" "unpacked"="0.0.0" %dst_0, i38* nocapture "orig.arg.no"="0" "unpacked"="0.0.1" %dst_1, i38* nocapture "orig.arg.no"="0" "unpacked"="0.0.2" %dst_2, i38* nocapture "orig.arg.no"="0" "unpacked"="0.0.3" %dst_3, i38* nocapture "orig.arg.no"="0" "unpacked"="0.0.4" %dst_4, i38* nocapture "orig.arg.no"="0" "unpacked"="0.0.5" %dst_5, i38* nocapture "orig.arg.no"="0" "unpacked"="0.0.6" %dst_6, i38* nocapture "orig.arg.no"="0" "unpacked"="0.0.7" %dst_7, [8 x %"struct.ap_fixed<38, 18, AP_TRN, AP_WRAP, 0>"]* readonly "orig.arg.no"="1" "unpacked"="1" %src, i64 "orig.arg.no"="2" "unpacked"="2" %num) #2 {
entry:
  %0 = icmp eq [8 x %"struct.ap_fixed<38, 18, AP_TRN, AP_WRAP, 0>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %dst.addr.0.0.06.exit, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %dst.addr.0.0.06.exit ]
  %src.addr.0.0.05 = getelementptr [8 x %"struct.ap_fixed<38, 18, AP_TRN, AP_WRAP, 0>"], [8 x %"struct.ap_fixed<38, 18, AP_TRN, AP_WRAP, 0>"]* %src, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  %1 = bitcast i38* %src.addr.0.0.05 to i40*
  %2 = load i40, i40* %1
  %3 = trunc i40 %2 to i38
  switch i64 %for.loop.idx2, label %dst.addr.0.0.06.case.7 [
    i64 0, label %dst.addr.0.0.06.case.0
    i64 1, label %dst.addr.0.0.06.case.1
    i64 2, label %dst.addr.0.0.06.case.2
    i64 3, label %dst.addr.0.0.06.case.3
    i64 4, label %dst.addr.0.0.06.case.4
    i64 5, label %dst.addr.0.0.06.case.5
    i64 6, label %dst.addr.0.0.06.case.6
  ]

dst.addr.0.0.06.case.0:                           ; preds = %for.loop
  store i38 %3, i38* %dst_0, align 8
  br label %dst.addr.0.0.06.exit

dst.addr.0.0.06.case.1:                           ; preds = %for.loop
  store i38 %3, i38* %dst_1, align 8
  br label %dst.addr.0.0.06.exit

dst.addr.0.0.06.case.2:                           ; preds = %for.loop
  store i38 %3, i38* %dst_2, align 8
  br label %dst.addr.0.0.06.exit

dst.addr.0.0.06.case.3:                           ; preds = %for.loop
  store i38 %3, i38* %dst_3, align 8
  br label %dst.addr.0.0.06.exit

dst.addr.0.0.06.case.4:                           ; preds = %for.loop
  store i38 %3, i38* %dst_4, align 8
  br label %dst.addr.0.0.06.exit

dst.addr.0.0.06.case.5:                           ; preds = %for.loop
  store i38 %3, i38* %dst_5, align 8
  br label %dst.addr.0.0.06.exit

dst.addr.0.0.06.case.6:                           ; preds = %for.loop
  store i38 %3, i38* %dst_6, align 8
  br label %dst.addr.0.0.06.exit

dst.addr.0.0.06.case.7:                           ; preds = %for.loop
  %4 = icmp eq i64 %for.loop.idx2, 7
  call void @llvm.assume(i1 %4)
  store i38 %3, i38* %dst_7, align 8
  br label %dst.addr.0.0.06.exit

dst.addr.0.0.06.exit:                             ; preds = %dst.addr.0.0.06.case.7, %dst.addr.0.0.06.case.6, %dst.addr.0.0.06.case.5, %dst.addr.0.0.06.case.4, %dst.addr.0.0.06.case.3, %dst.addr.0.0.06.case.2, %dst.addr.0.0.06.case.1, %dst.addr.0.0.06.case.0
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %dst.addr.0.0.06.exit, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal void @"onebyonecpy_hls.p0a8struct.ap_fixed<38, 18, AP_TRN, AP_WRAP, 0>"(i38* noalias nocapture align 512 "orig.arg.no"="0" "unpacked"="0.0.0" %dst_0, i38* noalias nocapture align 512 "orig.arg.no"="0" "unpacked"="0.0.1" %dst_1, i38* noalias nocapture align 512 "orig.arg.no"="0" "unpacked"="0.0.2" %dst_2, i38* noalias nocapture align 512 "orig.arg.no"="0" "unpacked"="0.0.3" %dst_3, i38* noalias nocapture align 512 "orig.arg.no"="0" "unpacked"="0.0.4" %dst_4, i38* noalias nocapture align 512 "orig.arg.no"="0" "unpacked"="0.0.5" %dst_5, i38* noalias nocapture align 512 "orig.arg.no"="0" "unpacked"="0.0.6" %dst_6, i38* noalias nocapture align 512 "orig.arg.no"="0" "unpacked"="0.0.7" %dst_7, [8 x %"struct.ap_fixed<38, 18, AP_TRN, AP_WRAP, 0>"]* noalias readonly "orig.arg.no"="1" "unpacked"="1" %src) #3 {
entry:
  %0 = icmp eq [8 x %"struct.ap_fixed<38, 18, AP_TRN, AP_WRAP, 0>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a8struct.ap_fixed<38, 18, AP_TRN, AP_WRAP, 0>"(i38* %dst_0, i38* %dst_1, i38* %dst_2, i38* %dst_3, i38* %dst_4, i38* %dst_5, i38* %dst_6, i38* %dst_7, [8 x %"struct.ap_fixed<38, 18, AP_TRN, AP_WRAP, 0>"]* nonnull %src, i64 8)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a8struct.ap_fixed<38, 18, AP_TRN, AP_WRAP, 0>.44"([8 x %"struct.ap_fixed<38, 18, AP_TRN, AP_WRAP, 0>"]* "orig.arg.no"="0" "unpacked"="0" %dst, i38* nocapture readonly "orig.arg.no"="1" "unpacked"="1.0.0" %src_0, i38* nocapture readonly "orig.arg.no"="1" "unpacked"="1.0.1" %src_1, i38* nocapture readonly "orig.arg.no"="1" "unpacked"="1.0.2" %src_2, i38* nocapture readonly "orig.arg.no"="1" "unpacked"="1.0.3" %src_3, i38* nocapture readonly "orig.arg.no"="1" "unpacked"="1.0.4" %src_4, i38* nocapture readonly "orig.arg.no"="1" "unpacked"="1.0.5" %src_5, i38* nocapture readonly "orig.arg.no"="1" "unpacked"="1.0.6" %src_6, i38* nocapture readonly "orig.arg.no"="1" "unpacked"="1.0.7" %src_7, i64 "orig.arg.no"="2" "unpacked"="2" %num) #2 {
entry:
  %0 = icmp eq [8 x %"struct.ap_fixed<38, 18, AP_TRN, AP_WRAP, 0>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %src.addr.0.0.05.exit, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %src.addr.0.0.05.exit ]
  %dst.addr.0.0.06 = getelementptr [8 x %"struct.ap_fixed<38, 18, AP_TRN, AP_WRAP, 0>"], [8 x %"struct.ap_fixed<38, 18, AP_TRN, AP_WRAP, 0>"]* %dst, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  switch i64 %for.loop.idx2, label %src.addr.0.0.05.case.7 [
    i64 0, label %src.addr.0.0.05.case.0
    i64 1, label %src.addr.0.0.05.case.1
    i64 2, label %src.addr.0.0.05.case.2
    i64 3, label %src.addr.0.0.05.case.3
    i64 4, label %src.addr.0.0.05.case.4
    i64 5, label %src.addr.0.0.05.case.5
    i64 6, label %src.addr.0.0.05.case.6
  ]

src.addr.0.0.05.case.0:                           ; preds = %for.loop
  %1 = bitcast i38* %src_0 to i40*
  %2 = load i40, i40* %1
  %3 = trunc i40 %2 to i38
  br label %src.addr.0.0.05.exit

src.addr.0.0.05.case.1:                           ; preds = %for.loop
  %4 = bitcast i38* %src_1 to i40*
  %5 = load i40, i40* %4
  %6 = trunc i40 %5 to i38
  br label %src.addr.0.0.05.exit

src.addr.0.0.05.case.2:                           ; preds = %for.loop
  %7 = bitcast i38* %src_2 to i40*
  %8 = load i40, i40* %7
  %9 = trunc i40 %8 to i38
  br label %src.addr.0.0.05.exit

src.addr.0.0.05.case.3:                           ; preds = %for.loop
  %10 = bitcast i38* %src_3 to i40*
  %11 = load i40, i40* %10
  %12 = trunc i40 %11 to i38
  br label %src.addr.0.0.05.exit

src.addr.0.0.05.case.4:                           ; preds = %for.loop
  %13 = bitcast i38* %src_4 to i40*
  %14 = load i40, i40* %13
  %15 = trunc i40 %14 to i38
  br label %src.addr.0.0.05.exit

src.addr.0.0.05.case.5:                           ; preds = %for.loop
  %16 = bitcast i38* %src_5 to i40*
  %17 = load i40, i40* %16
  %18 = trunc i40 %17 to i38
  br label %src.addr.0.0.05.exit

src.addr.0.0.05.case.6:                           ; preds = %for.loop
  %19 = bitcast i38* %src_6 to i40*
  %20 = load i40, i40* %19
  %21 = trunc i40 %20 to i38
  br label %src.addr.0.0.05.exit

src.addr.0.0.05.case.7:                           ; preds = %for.loop
  %22 = icmp eq i64 %for.loop.idx2, 7
  call void @llvm.assume(i1 %22)
  %23 = bitcast i38* %src_7 to i40*
  %24 = load i40, i40* %23
  %25 = trunc i40 %24 to i38
  br label %src.addr.0.0.05.exit

src.addr.0.0.05.exit:                             ; preds = %src.addr.0.0.05.case.7, %src.addr.0.0.05.case.6, %src.addr.0.0.05.case.5, %src.addr.0.0.05.case.4, %src.addr.0.0.05.case.3, %src.addr.0.0.05.case.2, %src.addr.0.0.05.case.1, %src.addr.0.0.05.case.0
  %26 = phi i38 [ %3, %src.addr.0.0.05.case.0 ], [ %6, %src.addr.0.0.05.case.1 ], [ %9, %src.addr.0.0.05.case.2 ], [ %12, %src.addr.0.0.05.case.3 ], [ %15, %src.addr.0.0.05.case.4 ], [ %18, %src.addr.0.0.05.case.5 ], [ %21, %src.addr.0.0.05.case.6 ], [ %25, %src.addr.0.0.05.case.7 ]
  store i38 %26, i38* %dst.addr.0.0.06, align 8
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %src.addr.0.0.05.exit, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal void @"onebyonecpy_hls.p0a8struct.ap_fixed<38, 18, AP_TRN, AP_WRAP, 0>.41"([8 x %"struct.ap_fixed<38, 18, AP_TRN, AP_WRAP, 0>"]* noalias "orig.arg.no"="0" "unpacked"="0" %dst, i38* noalias nocapture readonly align 512 "orig.arg.no"="1" "unpacked"="1.0.0" %src_0, i38* noalias nocapture readonly align 512 "orig.arg.no"="1" "unpacked"="1.0.1" %src_1, i38* noalias nocapture readonly align 512 "orig.arg.no"="1" "unpacked"="1.0.2" %src_2, i38* noalias nocapture readonly align 512 "orig.arg.no"="1" "unpacked"="1.0.3" %src_3, i38* noalias nocapture readonly align 512 "orig.arg.no"="1" "unpacked"="1.0.4" %src_4, i38* noalias nocapture readonly align 512 "orig.arg.no"="1" "unpacked"="1.0.5" %src_5, i38* noalias nocapture readonly align 512 "orig.arg.no"="1" "unpacked"="1.0.6" %src_6, i38* noalias nocapture readonly align 512 "orig.arg.no"="1" "unpacked"="1.0.7" %src_7) #3 {
entry:
  %0 = icmp eq [8 x %"struct.ap_fixed<38, 18, AP_TRN, AP_WRAP, 0>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a8struct.ap_fixed<38, 18, AP_TRN, AP_WRAP, 0>.44"([8 x %"struct.ap_fixed<38, 18, AP_TRN, AP_WRAP, 0>"]* nonnull %dst, i38* %src_0, i38* %src_1, i38* %src_2, i38* %src_3, i38* %src_4, i38* %src_5, i38* %src_6, i38* %src_7, i64 8)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a32struct.ap_fixed<16, 6, AP_TRN, AP_WRAP, 0>.54"(i512* nocapture "orig.arg.no"="0" "unpacked"="0.0" %dst, i64 %dst_shift, [32 x %"struct.ap_fixed<16, 6, AP_TRN, AP_WRAP, 0>"]* readonly "orig.arg.no"="1" "unpacked"="1" %src, i64 "orig.arg.no"="2" "unpacked"="2" %num) #2 {
entry:
  %0 = icmp eq [32 x %"struct.ap_fixed<16, 6, AP_TRN, AP_WRAP, 0>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [32 x %"struct.ap_fixed<16, 6, AP_TRN, AP_WRAP, 0>"], [32 x %"struct.ap_fixed<16, 6, AP_TRN, AP_WRAP, 0>"]* %src, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  %1 = mul i64 16, %for.loop.idx2
  %2 = add i64 %dst_shift, %1
  %3 = load i16, i16* %src.addr.0.0.05, align 2
  %4 = load i512, i512* %dst, align 64
  %5 = zext i64 %2 to i512
  %6 = shl i512 65535, %5
  %7 = zext i16 %3 to i512
  %8 = shl i512 %7, %5
  %thr.xor1 = xor i512 %6, -1
  %thr.and2 = and i512 %4, %thr.xor1
  %thr.or3 = or i512 %thr.and2, %8
  store i512 %thr.or3, i512* %dst, align 64
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal void @"onebyonecpy_hls.p0a32struct.ap_fixed<16, 6, AP_TRN, AP_WRAP, 0>.51"(i512* noalias nocapture align 512 "orig.arg.no"="0" "unpacked"="0.0" %dst, [32 x %"struct.ap_fixed<16, 6, AP_TRN, AP_WRAP, 0>"]* noalias readonly "orig.arg.no"="1" "unpacked"="1" %src) #3 {
entry:
  %0 = icmp eq [32 x %"struct.ap_fixed<16, 6, AP_TRN, AP_WRAP, 0>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a32struct.ap_fixed<16, 6, AP_TRN, AP_WRAP, 0>.54"(i512* %dst, i64 0, [32 x %"struct.ap_fixed<16, 6, AP_TRN, AP_WRAP, 0>"]* nonnull %src, i64 32)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal void @copy_in([32 x %"struct.ap_fixed<16, 6, AP_TRN, AP_WRAP, 0>"]* noalias readonly "orig.arg.no"="0" "unpacked"="0", i512* noalias nocapture align 512 "orig.arg.no"="1" "unpacked"="1.0", [8 x %"struct.ap_fixed<38, 18, AP_TRN, AP_WRAP, 0>"]* noalias readonly "orig.arg.no"="2" "unpacked"="2", i38* noalias nocapture align 512 "orig.arg.no"="3" "unpacked"="3.0.0" %_0, i38* noalias nocapture align 512 "orig.arg.no"="3" "unpacked"="3.0.1" %_1, i38* noalias nocapture align 512 "orig.arg.no"="3" "unpacked"="3.0.2" %_2, i38* noalias nocapture align 512 "orig.arg.no"="3" "unpacked"="3.0.3" %_3, i38* noalias nocapture align 512 "orig.arg.no"="3" "unpacked"="3.0.4" %_4, i38* noalias nocapture align 512 "orig.arg.no"="3" "unpacked"="3.0.5" %_5, i38* noalias nocapture align 512 "orig.arg.no"="3" "unpacked"="3.0.6" %_6, i38* noalias nocapture align 512 "orig.arg.no"="3" "unpacked"="3.0.7" %_7) #4 {
entry:
  call void @"onebyonecpy_hls.p0a32struct.ap_fixed<16, 6, AP_TRN, AP_WRAP, 0>.51"(i512* align 512 %1, [32 x %"struct.ap_fixed<16, 6, AP_TRN, AP_WRAP, 0>"]* %0)
  call void @"onebyonecpy_hls.p0a8struct.ap_fixed<38, 18, AP_TRN, AP_WRAP, 0>"(i38* align 512 %_0, i38* align 512 %_1, i38* align 512 %_2, i38* align 512 %_3, i38* align 512 %_4, i38* align 512 %_5, i38* align 512 %_6, i38* align 512 %_7, [8 x %"struct.ap_fixed<38, 18, AP_TRN, AP_WRAP, 0>"]* %2)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a32struct.ap_fixed<16, 6, AP_TRN, AP_WRAP, 0>"([32 x %"struct.ap_fixed<16, 6, AP_TRN, AP_WRAP, 0>"]* "orig.arg.no"="0" "unpacked"="0" %dst, i512* nocapture readonly "orig.arg.no"="1" "unpacked"="1.0" %src, i64 %src_shift, i64 "orig.arg.no"="2" "unpacked"="2" %num) #2 {
entry:
  %0 = icmp eq [32 x %"struct.ap_fixed<16, 6, AP_TRN, AP_WRAP, 0>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %1 = mul i64 16, %for.loop.idx2
  %2 = add i64 %src_shift, %1
  %dst.addr.0.0.06 = getelementptr [32 x %"struct.ap_fixed<16, 6, AP_TRN, AP_WRAP, 0>"], [32 x %"struct.ap_fixed<16, 6, AP_TRN, AP_WRAP, 0>"]* %dst, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  %3 = load i512, i512* %src, align 64
  %4 = zext i64 %2 to i512
  %5 = lshr i512 %3, %4
  %6 = trunc i512 %5 to i16
  store i16 %6, i16* %dst.addr.0.0.06, align 2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal void @"onebyonecpy_hls.p0a32struct.ap_fixed<16, 6, AP_TRN, AP_WRAP, 0>"([32 x %"struct.ap_fixed<16, 6, AP_TRN, AP_WRAP, 0>"]* noalias "orig.arg.no"="0" "unpacked"="0" %dst, i512* noalias nocapture readonly align 512 "orig.arg.no"="1" "unpacked"="1.0" %src) #3 {
entry:
  %0 = icmp eq [32 x %"struct.ap_fixed<16, 6, AP_TRN, AP_WRAP, 0>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a32struct.ap_fixed<16, 6, AP_TRN, AP_WRAP, 0>"([32 x %"struct.ap_fixed<16, 6, AP_TRN, AP_WRAP, 0>"]* nonnull %dst, i512* %src, i64 0, i64 32)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal void @copy_out([32 x %"struct.ap_fixed<16, 6, AP_TRN, AP_WRAP, 0>"]* noalias "orig.arg.no"="0" "unpacked"="0", i512* noalias nocapture readonly align 512 "orig.arg.no"="1" "unpacked"="1.0", [8 x %"struct.ap_fixed<38, 18, AP_TRN, AP_WRAP, 0>"]* noalias "orig.arg.no"="2" "unpacked"="2", i38* noalias nocapture readonly align 512 "orig.arg.no"="3" "unpacked"="3.0.0" %_0, i38* noalias nocapture readonly align 512 "orig.arg.no"="3" "unpacked"="3.0.1" %_1, i38* noalias nocapture readonly align 512 "orig.arg.no"="3" "unpacked"="3.0.2" %_2, i38* noalias nocapture readonly align 512 "orig.arg.no"="3" "unpacked"="3.0.3" %_3, i38* noalias nocapture readonly align 512 "orig.arg.no"="3" "unpacked"="3.0.4" %_4, i38* noalias nocapture readonly align 512 "orig.arg.no"="3" "unpacked"="3.0.5" %_5, i38* noalias nocapture readonly align 512 "orig.arg.no"="3" "unpacked"="3.0.6" %_6, i38* noalias nocapture readonly align 512 "orig.arg.no"="3" "unpacked"="3.0.7" %_7) #5 {
entry:
  call void @"onebyonecpy_hls.p0a32struct.ap_fixed<16, 6, AP_TRN, AP_WRAP, 0>"([32 x %"struct.ap_fixed<16, 6, AP_TRN, AP_WRAP, 0>"]* %0, i512* align 512 %1)
  call void @"onebyonecpy_hls.p0a8struct.ap_fixed<38, 18, AP_TRN, AP_WRAP, 0>.41"([8 x %"struct.ap_fixed<38, 18, AP_TRN, AP_WRAP, 0>"]* %2, i38* align 512 %_0, i38* align 512 %_1, i38* align 512 %_2, i38* align 512 %_3, i38* align 512 %_4, i38* align 512 %_5, i38* align 512 %_6, i38* align 512 %_7)
  ret void
}

declare void @apatb_myproject_hw(i512*, i38*, i38*, i38*, i38*, i38*, i38*, i38*, i38*)

; Function Attrs: argmemonly noinline norecurse willreturn
define internal void @copy_back([32 x %"struct.ap_fixed<16, 6, AP_TRN, AP_WRAP, 0>"]* noalias "orig.arg.no"="0" "unpacked"="0", i512* noalias nocapture readonly align 512 "orig.arg.no"="1" "unpacked"="1.0", [8 x %"struct.ap_fixed<38, 18, AP_TRN, AP_WRAP, 0>"]* noalias "orig.arg.no"="2" "unpacked"="2", i38* noalias nocapture readonly align 512 "orig.arg.no"="3" "unpacked"="3.0.0" %_0, i38* noalias nocapture readonly align 512 "orig.arg.no"="3" "unpacked"="3.0.1" %_1, i38* noalias nocapture readonly align 512 "orig.arg.no"="3" "unpacked"="3.0.2" %_2, i38* noalias nocapture readonly align 512 "orig.arg.no"="3" "unpacked"="3.0.3" %_3, i38* noalias nocapture readonly align 512 "orig.arg.no"="3" "unpacked"="3.0.4" %_4, i38* noalias nocapture readonly align 512 "orig.arg.no"="3" "unpacked"="3.0.5" %_5, i38* noalias nocapture readonly align 512 "orig.arg.no"="3" "unpacked"="3.0.6" %_6, i38* noalias nocapture readonly align 512 "orig.arg.no"="3" "unpacked"="3.0.7" %_7) #5 {
entry:
  call void @"onebyonecpy_hls.p0a8struct.ap_fixed<38, 18, AP_TRN, AP_WRAP, 0>.41"([8 x %"struct.ap_fixed<38, 18, AP_TRN, AP_WRAP, 0>"]* %2, i38* align 512 %_0, i38* align 512 %_1, i38* align 512 %_2, i38* align 512 %_3, i38* align 512 %_4, i38* align 512 %_5, i38* align 512 %_6, i38* align 512 %_7)
  ret void
}

define void @myproject_hw_stub_wrapper(i512*, i38*, i38*, i38*, i38*, i38*, i38*, i38*, i38*) #6 {
entry:
  %9 = alloca [32 x %"struct.ap_fixed<16, 6, AP_TRN, AP_WRAP, 0>"]
  %10 = alloca [8 x %"struct.ap_fixed<38, 18, AP_TRN, AP_WRAP, 0>"]
  call void @copy_out([32 x %"struct.ap_fixed<16, 6, AP_TRN, AP_WRAP, 0>"]* %9, i512* %0, [8 x %"struct.ap_fixed<38, 18, AP_TRN, AP_WRAP, 0>"]* %10, i38* %1, i38* %2, i38* %3, i38* %4, i38* %5, i38* %6, i38* %7, i38* %8)
  %11 = bitcast [32 x %"struct.ap_fixed<16, 6, AP_TRN, AP_WRAP, 0>"]* %9 to %"struct.ap_fixed<16, 6, AP_TRN, AP_WRAP, 0>"*
  %12 = bitcast [8 x %"struct.ap_fixed<38, 18, AP_TRN, AP_WRAP, 0>"]* %10 to %"struct.ap_fixed<38, 18, AP_TRN, AP_WRAP, 0>"*
  call void @myproject_hw_stub(%"struct.ap_fixed<16, 6, AP_TRN, AP_WRAP, 0>"* %11, %"struct.ap_fixed<38, 18, AP_TRN, AP_WRAP, 0>"* %12)
  call void @copy_in([32 x %"struct.ap_fixed<16, 6, AP_TRN, AP_WRAP, 0>"]* %9, i512* %0, [8 x %"struct.ap_fixed<38, 18, AP_TRN, AP_WRAP, 0>"]* %10, i38* %1, i38* %2, i38* %3, i38* %4, i38* %5, i38* %6, i38* %7, i38* %8)
  ret void
}

declare void @myproject_hw_stub(%"struct.ap_fixed<16, 6, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull readonly, %"struct.ap_fixed<38, 18, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull)

attributes #0 = { inaccessiblemem_or_argmemonly noinline willreturn "fpga.wrapper.func"="wrapper" }
attributes #1 = { nounwind willreturn }
attributes #2 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="arraycpy_hls" }
attributes #3 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #4 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyin" }
attributes #5 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyout" }
attributes #6 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}
!datalayout.transforms.on.top = !{!5}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
!5 = !{!6, !8, !10}
!6 = !{!7}
!7 = !{!"1.0", [8 x i38]* null}
!8 = !{!9}
!9 = !{!"array_partition", !"type=Complete", !"dim=1"}
!10 = !{!11, !12, !13, !14, !15, !16, !17, !18}
!11 = !{!"1.0.0", i38* null}
!12 = !{!"1.0.1", i38* null}
!13 = !{!"1.0.2", i38* null}
!14 = !{!"1.0.3", i38* null}
!15 = !{!"1.0.4", i38* null}
!16 = !{!"1.0.5", i38* null}
!17 = !{!"1.0.6", i38* null}
!18 = !{!"1.0.7", i38* null}
