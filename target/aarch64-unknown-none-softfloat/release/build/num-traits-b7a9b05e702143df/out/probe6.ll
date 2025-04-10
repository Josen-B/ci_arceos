; ModuleID = 'probe6.160a9ae229eebbf7-cgu.0'
source_filename = "probe6.160a9ae229eebbf7-cgu.0"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "aarch64-unknown-none"

; core::f64::<impl f64>::is_subnormal
; Function Attrs: inlinehint noredzone nounwind
define internal zeroext i1 @"_ZN4core3f6421_$LT$impl$u20$f64$GT$12is_subnormal17ha9ae263c93a4b0fdE"(i64 %0) unnamed_addr #0 {
start:
  %_2 = alloca [1 x i8], align 1
  %1 = alloca [8 x i8], align 8
  %self = alloca [8 x i8], align 8
  store i64 %0, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %self, ptr align 8 %1, i64 8, i1 false)
  %2 = load double, ptr %self, align 8
  %b = bitcast double %2 to i64
  %_5 = and i64 %b, 4503599627370495
  %_6 = and i64 %b, 9218868437227405312
  %3 = icmp eq i64 %_5, 0
  br i1 %3, label %bb3, label %bb2

bb3:                                              ; preds = %start
  %4 = icmp eq i64 %_6, 9218868437227405312
  br i1 %4, label %bb9, label %bb2

bb2:                                              ; preds = %bb3, %start
  switch i64 %_6, label %bb4 [
    i64 9218868437227405312, label %bb8
    i64 0, label %bb5
  ]

bb9:                                              ; preds = %bb3
  store i8 1, ptr %_2, align 1
  br label %bb1

bb1:                                              ; preds = %bb4, %bb6, %bb7, %bb8, %bb9
  %5 = load i8, ptr %_2, align 1
  %_3 = zext i8 %5 to i64
  %_0 = icmp eq i64 %_3, 3
  ret i1 %_0

bb4:                                              ; preds = %bb2
  store i8 4, ptr %_2, align 1
  br label %bb1

bb8:                                              ; preds = %bb2
  store i8 0, ptr %_2, align 1
  br label %bb1

bb5:                                              ; preds = %bb2
  %6 = icmp eq i64 %_5, 0
  br i1 %6, label %bb7, label %bb6

bb7:                                              ; preds = %bb5
  store i8 2, ptr %_2, align 1
  br label %bb1

bb6:                                              ; preds = %bb5
  store i8 3, ptr %_2, align 1
  br label %bb1
}

; probe6::probe
; Function Attrs: noredzone nounwind
define dso_local void @_ZN6probe65probe17h0e7f99837c0f0d21E() unnamed_addr #1 {
start:
  %0 = alloca [8 x i8], align 8
  %1 = alloca [8 x i8], align 8
  store double 1.000000e+00, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %0, ptr align 8 %1, i64 8, i1 false)
  %2 = load i64, ptr %0, align 8
; call core::f64::<impl f64>::is_subnormal
  %_1 = call zeroext i1 @"_ZN4core3f6421_$LT$impl$u20$f64$GT$12is_subnormal17ha9ae263c93a4b0fdE"(i64 %2) #3
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { inlinehint noredzone nounwind "probe-stack"="inline-asm" "target-cpu"="generic" "target-features"="+v8a,+strict-align,-neon,-fp-armv8" }
attributes #1 = { noredzone nounwind "probe-stack"="inline-asm" "target-cpu"="generic" "target-features"="+v8a,+strict-align,-neon,-fp-armv8" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"rustc version 1.85.0-nightly (409998c4e 2024-12-24)"}
