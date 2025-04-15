; 17489292847855181559751562260214272975
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/17489292847855181559751562260214272975_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/17489292847855181559751562260214272975.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %x = alloca float, align 4
  %y = alloca float, align 4
  %z = alloca float, align 4
  %r = alloca float, align 4
  store i32 0, ptr %retval, align 4
  %0 = load float, ptr %x, align 4
  %add = fadd float %0, 1.000000e+00
  store float %add, ptr %x, align 4
  %1 = load float, ptr %x, align 4
  %add1 = fadd float %1, 1.000000e+00
  store float %add1, ptr %y, align 4
  %2 = load float, ptr %x, align 4
  %sub = fsub float %2, 1.000000e+00
  store float %sub, ptr %z, align 4
  %3 = load float, ptr %y, align 4
  %4 = load float, ptr %z, align 4
  %sub2 = fsub float %3, %4
  store float %sub2, ptr %r, align 4
  %5 = load float, ptr %r, align 4
  %cmp = fcmp oeq float %5, 2.000000e+00
  %conv = zext i1 %cmp to i32
  %call = call i32 (i32, ...) @assert(i32 noundef %conv)
  ret i32 0
}

declare i32 @assert(...) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
