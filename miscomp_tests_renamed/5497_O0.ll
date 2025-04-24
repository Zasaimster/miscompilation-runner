; 19734306846827359901008970586625883859
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/19734306846827359901008970586625883859.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/19734306846827359901008970586625883859.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @func4() #0 {
entry:
  %a = alloca float, align 4
  %b = alloca float, align 4
  %c = alloca float, align 4
  store float 1.000000e+00, ptr %a, align 4
  store float 2.000000e+00, ptr %b, align 4
  %0 = load float, ptr %a, align 4
  %1 = load float, ptr %b, align 4
  %mul = fmul float %0, %1
  store float %mul, ptr %c, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %eval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call i32 (double, ptr, ...) @test(double noundef 3.000000e+00, ptr noundef %eval)
  %call1 = call i32 (double, ptr, ...) @test(double noundef 3.500000e+00, ptr noundef %eval)
  %call2 = call i32 (double, ptr, ...) @test(double noundef 4.000000e+00, ptr noundef %eval)
  %call3 = call i32 (double, ptr, ...) @test(double noundef 5.000000e+00, ptr noundef %eval)
  call void @exit(i32 noundef 0) #3
  unreachable
}

declare i32 @test(...) #1

; Function Attrs: noreturn
declare void @exit(i32 noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
