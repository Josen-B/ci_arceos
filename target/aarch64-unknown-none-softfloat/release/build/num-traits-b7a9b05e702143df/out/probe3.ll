; ModuleID = 'probe3.576a7a3ccdf44ef4-cgu.0'
source_filename = "probe3.576a7a3ccdf44ef4-cgu.0"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "aarch64-unknown-none"

; probe3::probe
; Function Attrs: noredzone nounwind
define dso_local void @_ZN6probe35probe17he5decbe20e3ecfd2E() unnamed_addr #0 {
start:
  %0 = alloca [4 x i8], align 4
  store i32 -2147483648, ptr %0, align 4
  %_0.i = load i32, ptr %0, align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bitreverse.i32(i32) #1

attributes #0 = { noredzone nounwind "probe-stack"="inline-asm" "target-cpu"="generic" "target-features"="+v8a,+strict-align,-neon,-fp-armv8" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.ident = !{!0}

!0 = !{!"rustc version 1.85.0-nightly (409998c4e 2024-12-24)"}
