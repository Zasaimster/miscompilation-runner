; 198161729385469154903991699940496312338
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/198161729385469154903991699940496312338.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/198161729385469154903991699940496312338.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %x = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 0, ptr %x, align 4
  %0 = load i32, ptr %x, align 4
  %mul = mul nsw i32 %0, 10
  store i32 %mul, ptr %x, align 4
  %1 = load i32, ptr %x, align 4
  %div = sdiv i32 %1, 2
  store i32 %div, ptr %x, align 4
  %2 = load i32, ptr %x, align 4
  %rem = srem i32 %2, 3
  store i32 %rem, ptr %x, align 4
  %3 = load i32, ptr %x, align 4
  %sub = sub nsw i32 %3, 2
  ret i32 %sub
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
