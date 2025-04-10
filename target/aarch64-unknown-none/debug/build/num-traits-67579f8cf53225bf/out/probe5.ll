; ModuleID = 'probe5.61631b275bc0635e-cgu.0'
source_filename = "probe5.61631b275bc0635e-cgu.0"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-none"

@alloc_e6758488a51c40069ade2309416f0500 = private unnamed_addr constant <{ [6 x i8] }> <{ [6 x i8] c"<anon>" }>, align 1
@alloc_7a1147a36efe2c0cf231da5103dd8572 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_e6758488a51c40069ade2309416f0500, [16 x i8] c"\06\00\00\00\00\00\00\00\02\00\00\00\1F\00\00\00" }>, align 8

; probe5::probe
; Function Attrs: noredzone nounwind
define dso_local void @_ZN6probe55probe17hba7a4d104b05c63dE() unnamed_addr #0 {
start:
  %0 = call i1 @llvm.expect.i1(i1 false, i1 false)
  br i1 %0, label %panic.i, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$10div_euclid17h9fd97cfc4319c052E.exit"

panic.i:                                          ; preds = %start
; call core::panicking::panic_const::panic_const_div_by_zero
  call void @_ZN4core9panicking11panic_const23panic_const_div_by_zero17h39a77f3213bb76f1E(ptr align 8 @alloc_7a1147a36efe2c0cf231da5103dd8572) #3
  unreachable

"_ZN4core3num21_$LT$impl$u20$u32$GT$10div_euclid17h9fd97cfc4319c052E.exit": ; preds = %start
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.expect.i1(i1, i1) #1

; core::panicking::panic_const::panic_const_div_by_zero
; Function Attrs: cold noinline noredzone noreturn nounwind
declare dso_local void @_ZN4core9panicking11panic_const23panic_const_div_by_zero17h39a77f3213bb76f1E(ptr align 8) unnamed_addr #2

attributes #0 = { noredzone nounwind "probe-stack"="inline-asm" "target-cpu"="generic" "target-features"="+v8a,+strict-align,+neon,+fp-armv8" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #2 = { cold noinline noredzone noreturn nounwind "probe-stack"="inline-asm" "target-cpu"="generic" "target-features"="+v8a,+strict-align,+neon,+fp-armv8" }
attributes #3 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"rustc version 1.80.0-nightly (c987ad527 2024-05-01)"}
