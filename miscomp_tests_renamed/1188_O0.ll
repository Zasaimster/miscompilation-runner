; 121261991492891965309447660125993880321
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/121261991492891965309447660125993880321.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/121261991492891965309447660125993880321.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca i32, align 4
  %f = alloca float, align 4
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %a, align 4
  store float 0.000000e+00, ptr %f, align 4
  %0 = load float, ptr %f, align 4
  %1 = load i32, ptr %a, align 4
  %conv = sitofp i32 %1 to float
  %cmp = fcmp oeq float %0, %conv
  %conv1 = zext i1 %cmp to i32
  ret i32 %conv1
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
