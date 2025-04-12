; 108249990371959201400216191286290736771
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/108249990371959201400216191286290736771.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/108249990371959201400216191286290736771.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"Hello, World!\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local x86_fp80 @f(x86_fp80 noundef %d, i32 noundef %i) #0 {
entry:
  %d.addr = alloca x86_fp80, align 16
  %i.addr = alloca i32, align 4
  %e = alloca x86_fp80, align 16
  store x86_fp80 %d, ptr %d.addr, align 16
  store i32 %i, ptr %i.addr, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %0 = load x86_fp80, ptr %d.addr, align 16
  store x86_fp80 %0, ptr %e, align 16
  %1 = load i32, ptr %i.addr, align 4
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load x86_fp80, ptr %d.addr, align 16
  %mul = fmul x86_fp80 %2, 0xK40008000000000000000
  store x86_fp80 %mul, ptr %d.addr, align 16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load x86_fp80, ptr %e, align 16
  %4 = load x86_fp80, ptr %d.addr, align 16
  %5 = load x86_fp80, ptr %d.addr, align 16
  %neg = fneg x86_fp80 %3
  %6 = call x86_fp80 @llvm.fmuladd.f80(x86_fp80 %neg, x86_fp80 %4, x86_fp80 %5)
  store x86_fp80 %6, ptr %d.addr, align 16
  %7 = load x86_fp80, ptr %e, align 16
  %8 = load x86_fp80, ptr %d.addr, align 16
  %9 = load x86_fp80, ptr %d.addr, align 16
  %neg3 = fneg x86_fp80 %7
  %10 = call x86_fp80 @llvm.fmuladd.f80(x86_fp80 %neg3, x86_fp80 %8, x86_fp80 %9)
  store x86_fp80 %10, ptr %d.addr, align 16
  %11 = load x86_fp80, ptr %e, align 16
  %12 = load x86_fp80, ptr %d.addr, align 16
  %13 = load x86_fp80, ptr %d.addr, align 16
  %neg5 = fneg x86_fp80 %11
  %14 = call x86_fp80 @llvm.fmuladd.f80(x86_fp80 %neg5, x86_fp80 %12, x86_fp80 %13)
  store x86_fp80 %14, ptr %d.addr, align 16
  %15 = load x86_fp80, ptr %e, align 16
  %16 = load x86_fp80, ptr %d.addr, align 16
  %17 = load x86_fp80, ptr %d.addr, align 16
  %neg7 = fneg x86_fp80 %15
  %18 = call x86_fp80 @llvm.fmuladd.f80(x86_fp80 %neg7, x86_fp80 %16, x86_fp80 %17)
  store x86_fp80 %18, ptr %d.addr, align 16
  %19 = load x86_fp80, ptr %e, align 16
  %20 = load x86_fp80, ptr %d.addr, align 16
  %21 = load x86_fp80, ptr %d.addr, align 16
  %neg9 = fneg x86_fp80 %19
  %22 = call x86_fp80 @llvm.fmuladd.f80(x86_fp80 %neg9, x86_fp80 %20, x86_fp80 %21)
  store x86_fp80 %22, ptr %d.addr, align 16
  %23 = load x86_fp80, ptr %d.addr, align 16
  ret x86_fp80 %23
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare x86_fp80 @llvm.fmuladd.f80(x86_fp80, x86_fp80, x86_fp80) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call x86_fp80 @f(x86_fp80 noundef 0xK40008000000000000000, i32 noundef 1)
  %conv = fptosi x86_fp80 %call to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @abort() #5
  unreachable

if.end:                                           ; preds = %entry
  call void @exit(i32 noundef 0) #6
  unreachable
}

; Function Attrs: noreturn nounwind
declare void @abort() #3

; Function Attrs: noreturn
declare void @exit(i32 noundef) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind }
attributes #6 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
