; ModuleID = 'probe6.6ff382511c15b66d-cgu.0'
source_filename = "probe6.6ff382511c15b66d-cgu.0"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-none"

; core::f64::<impl f64>::is_subnormal
; Function Attrs: inlinehint noredzone nounwind
define internal zeroext i1 @"_ZN4core3f6421_$LT$impl$u20$f64$GT$12is_subnormal17hd635e517f4c73794E"(double %self) unnamed_addr #0 {
start:
  %_2 = alloca [1 x i8], align 1
  %_4 = fcmp une double %self, %self
  br i1 %_4, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %b = bitcast double %self to i64
  %_6 = and i64 %b, 4503599627370495
  %_7 = and i64 %b, 9218868437227405312
  %0 = icmp eq i64 %_6, 0
  br i1 %0, label %bb7, label %bb5

bb1:                                              ; preds = %start
  store i8 0, ptr %_2, align 1
  br label %bb3

bb7:                                              ; preds = %bb2
  switch i64 %_7, label %bb5 [
    i64 9218868437227405312, label %bb8
    i64 0, label %bb9
  ]

bb5:                                              ; preds = %bb7, %bb2
  %1 = icmp eq i64 %_7, 0
  br i1 %1, label %bb10, label %bb6

bb8:                                              ; preds = %bb7
  store i8 1, ptr %_2, align 1
  br label %bb4

bb9:                                              ; preds = %bb7
  store i8 2, ptr %_2, align 1
  br label %bb4

bb4:                                              ; preds = %bb6, %bb10, %bb9, %bb8
  br label %bb3

bb10:                                             ; preds = %bb5
  store i8 3, ptr %_2, align 1
  br label %bb4

bb6:                                              ; preds = %bb5
  store i8 4, ptr %_2, align 1
  br label %bb4

bb3:                                              ; preds = %bb1, %bb4
  %2 = load i8, ptr %_2, align 1
  %_3 = zext i8 %2 to i64
  %_0 = icmp eq i64 %_3, 3
  ret i1 %_0
}

; probe6::probe
; Function Attrs: noredzone nounwind
define dso_local void @_ZN6probe65probe17h5a53618d56754faaE() unnamed_addr #1 {
start:
; call core::f64::<impl f64>::is_subnormal
  %_1 = call zeroext i1 @"_ZN4core3f6421_$LT$impl$u20$f64$GT$12is_subnormal17hd635e517f4c73794E"(double 1.000000e+00) #2
  ret void
}

attributes #0 = { inlinehint noredzone nounwind "probe-stack"="inline-asm" "target-cpu"="generic" "target-features"="+v8a,+strict-align,+neon,+fp-armv8" }
attributes #1 = { noredzone nounwind "probe-stack"="inline-asm" "target-cpu"="generic" "target-features"="+v8a,+strict-align,+neon,+fp-armv8" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"rustc version 1.80.0-nightly (c987ad527 2024-05-01)"}
