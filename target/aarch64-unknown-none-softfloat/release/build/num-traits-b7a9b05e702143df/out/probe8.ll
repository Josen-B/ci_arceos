; ModuleID = 'probe8.3e09057cf9ac78e7-cgu.0'
source_filename = "probe8.3e09057cf9ac78e7-cgu.0"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "aarch64-unknown-none"

; core::f64::<impl f64>::to_ne_bytes
; Function Attrs: inlinehint noredzone nounwind
define internal i64 @"_ZN4core3f6421_$LT$impl$u20$f64$GT$11to_ne_bytes17h9c5d41c849c0fc4cE"(i64 %0) unnamed_addr #0 {
start:
  %_0 = alloca [8 x i8], align 1
  %1 = alloca [8 x i8], align 8
  %self = alloca [8 x i8], align 8
  store i64 %0, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %self, ptr align 8 %1, i64 8, i1 false)
  %2 = load double, ptr %self, align 8
  %_2 = bitcast double %2 to i64
  store i64 %_2, ptr %_0, align 1
  %3 = load i64, ptr %_0, align 1
  ret i64 %3
}

; probe8::probe
; Function Attrs: noredzone nounwind
define dso_local void @_ZN6probe85probe17hf3ef79f3485cdf50E() unnamed_addr #1 {
start:
  %0 = alloca [8 x i8], align 8
  %1 = alloca [8 x i8], align 8
  %2 = alloca [8 x i8], align 8
  %_1 = alloca [8 x i8], align 1
  store double 3.140000e+00, ptr %2, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %1, ptr align 8 %2, i64 8, i1 false)
  %3 = load i64, ptr %1, align 8
; call core::f64::<impl f64>::to_ne_bytes
  %4 = call i64 @"_ZN4core3f6421_$LT$impl$u20$f64$GT$11to_ne_bytes17h9c5d41c849c0fc4cE"(i64 %3) #3
  store i64 %4, ptr %0, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %_1, ptr align 8 %0, i64 8, i1 false)
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
