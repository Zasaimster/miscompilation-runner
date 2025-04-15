; 143669171713254093552427037663946422480
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/143669171713254093552427037663946422480_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/143669171713254093552427037663946422480.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"Dead code.\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local x86_fp80 @f(x86_fp80 noundef %d, i32 noundef %i) #0 {
entry:
  %d.addr = alloca x86_fp80, align 16
  %i.addr = alloca i32, align 4
  %e = alloca x86_fp80, align 16
  store x86_fp80 %d, ptr %d.addr, align 16
  store i32 %i, ptr %i.addr, align 4
  store x86_fp80 0xK00000000000000000000, ptr %d.addr, align 16
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %conv = sitofp i32 %call to x86_fp80
  store x86_fp80 %conv, ptr %e, align 16
  %0 = load i32, ptr %i.addr, align 4
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load x86_fp80, ptr %d.addr, align 16
  %mul = fmul x86_fp80 %1, 0xK40008000000000000000
  store x86_fp80 %mul, ptr %d.addr, align 16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load x86_fp80, ptr %e, align 16
  %3 = load x86_fp80, ptr %d.addr, align 16
  %4 = load x86_fp80, ptr %d.addr, align 16
  %neg = fneg x86_fp80 %2
  %5 = call x86_fp80 @llvm.fmuladd.f80(x86_fp80 %neg, x86_fp80 %3, x86_fp80 %4)
  store x86_fp80 %5, ptr %d.addr, align 16
  %6 = load x86_fp80, ptr %e, align 16
  %7 = load x86_fp80, ptr %d.addr, align 16
  %8 = load x86_fp80, ptr %d.addr, align 16
  %neg4 = fneg x86_fp80 %6
  %9 = call x86_fp80 @llvm.fmuladd.f80(x86_fp80 %neg4, x86_fp80 %7, x86_fp80 %8)
  store x86_fp80 %9, ptr %d.addr, align 16
  %10 = load x86_fp80, ptr %e, align 16
  %11 = load x86_fp80, ptr %d.addr, align 16
  %12 = load x86_fp80, ptr %d.addr, align 16
  %neg6 = fneg x86_fp80 %10
  %13 = call x86_fp80 @llvm.fmuladd.f80(x86_fp80 %neg6, x86_fp80 %11, x86_fp80 %12)
  store x86_fp80 %13, ptr %d.addr, align 16
  %14 = load x86_fp80, ptr %e, align 16
  %15 = load x86_fp80, ptr %d.addr, align 16
  %16 = load x86_fp80, ptr %d.addr, align 16
  %neg8 = fneg x86_fp80 %14
  %17 = call x86_fp80 @llvm.fmuladd.f80(x86_fp80 %neg8, x86_fp80 %15, x86_fp80 %16)
  store x86_fp80 %17, ptr %d.addr, align 16
  %18 = load x86_fp80, ptr %e, align 16
  %19 = load x86_fp80, ptr %d.addr, align 16
  %20 = load x86_fp80, ptr %d.addr, align 16
  %neg10 = fneg x86_fp80 %18
  %21 = call x86_fp80 @llvm.fmuladd.f80(x86_fp80 %neg10, x86_fp80 %19, x86_fp80 %20)
  store x86_fp80 %21, ptr %d.addr, align 16
  %22 = load x86_fp80, ptr %d.addr, align 16
  ret x86_fp80 %22
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
