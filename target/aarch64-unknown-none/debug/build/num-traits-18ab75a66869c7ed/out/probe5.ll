; ModuleID = 'probe5.1cc584a4ff621311-cgu.0'
source_filename = "probe5.1cc584a4ff621311-cgu.0"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "aarch64-unknown-none"

@alloc_e6758488a51c40069ade2309416f0500 = private unnamed_addr constant <{ [6 x i8] }> <{ [6 x i8] c"<anon>" }>, align 1
@alloc_6007668a34df9e4e10cc122c742aa297 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_e6758488a51c40069ade2309416f0500, [16 x i8] c"\06\00\00\00\00\00\00\00\02\00\00\00\1F\00\00\00" }>, align 8

; probe5::probe
; Function Attrs: noredzone nounwind
define dso_local void @_ZN6probe55probe17hfe78feef0d390338E() unnamed_addr #0 {
start:
  ret void
}

; core::panicking::panic_const::panic_const_div_by_zero
; Function Attrs: cold noinline noredzone noreturn nounwind
declare dso_local void @_ZN4core9panicking11panic_const23panic_const_div_by_zero17h2b05d5edd426a3d3E(ptr align 8) unnamed_addr #1

attributes #0 = { noredzone nounwind "probe-stack"="inline-asm" "target-cpu"="generic" "target-features"="+v8a,+strict-align,+neon,+fp-armv8" }
attributes #1 = { cold noinline noredzone noreturn nounwind "probe-stack"="inline-asm" "target-cpu"="generic" "target-features"="+v8a,+strict-align,+neon,+fp-armv8" }

!llvm.ident = !{!0}

!0 = !{!"rustc version 1.85.0-nightly (409998c4e 2024-12-24)"}
