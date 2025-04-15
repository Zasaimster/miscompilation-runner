; 159880229753333636091318873344451326936
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/159880229753333636091318873344451326936_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/159880229753333636091318873344451326936.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local float @g(ptr noundef %a, ptr noundef %b, i32 noundef %e, i32 noundef %c, float noundef %d) #0 {
entry:
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %e.addr = alloca i32, align 4
  %c.addr = alloca i32, align 4
  %d.addr = alloca float, align 4
  store ptr %a, ptr %a.addr, align 8
  store ptr %b, ptr %b.addr, align 8
  store i32 %e, ptr %e.addr, align 4
  store i32 %c, ptr %c.addr, align 4
  store float %d, ptr %d.addr, align 4
  ret float 0.000000e+00
}

; Function Attrs: noinline nounwind uwtable
define dso_local float @f(ptr noundef %a, ptr noundef %b, i32 noundef %c, float noundef %d) #0 {
entry:
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %c.addr = alloca i32, align 4
  %d.addr = alloca float, align 4
  store ptr %a, ptr %a.addr, align 8
  store ptr %b, ptr %b.addr, align 8
  store i32 %c, ptr %c.addr, align 4
  store float %d, ptr %d.addr, align 4
  %0 = load ptr, ptr %a.addr, align 8
  %1 = load ptr, ptr %b.addr, align 8
  %2 = load i32, ptr %c.addr, align 4
  %3 = load float, ptr %d.addr, align 4
  %call = call float @g(ptr noundef %0, ptr noundef %1, i32 noundef 0, i32 noundef %2, float noundef %3)
  ret float %call
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call float @f(ptr noundef null, ptr noundef null, i32 noundef 1, float noundef 1.000000e+00)
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
