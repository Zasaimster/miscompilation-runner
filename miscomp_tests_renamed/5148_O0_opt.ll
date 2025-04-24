; 190963978980874426218795056849542381377
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/190963978980874426218795056849542381377_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/190963978980874426218795056849542381377.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@C = dso_local global x86_fp80 0xK40008000000000000000, align 16
@U = dso_local global x86_fp80 0xK3FFF8000000000000000, align 16
@Y2 = dso_local global x86_fp80 0xK4000C000000000000000, align 16
@Y1 = dso_local global x86_fp80 0xK3FFF8000000000000000, align 16
@X = dso_local global x86_fp80 0xK00000000000000000000, align 16
@Y = dso_local global x86_fp80 0xK00000000000000000000, align 16
@Z = dso_local global x86_fp80 0xK00000000000000000000, align 16
@T = dso_local global x86_fp80 0xK00000000000000000000, align 16
@R = dso_local global x86_fp80 0xK00000000000000000000, align 16
@S = dso_local global x86_fp80 0xK00000000000000000000, align 16

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %0 = load x86_fp80, ptr @C, align 16
  %1 = load x86_fp80, ptr @U, align 16
  %add = fadd x86_fp80 %0, %1
  %2 = load x86_fp80, ptr @Y2, align 16
  %mul = fmul x86_fp80 %add, %2
  store x86_fp80 %mul, ptr @X, align 16
  ret i32 0
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
