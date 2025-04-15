; 188435752942558784787622857761360129209
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/188435752942558784787622857761360129209_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/188435752942558784787622857761360129209.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local x86_fp80 @f(x86_fp80 noundef %d, i32 noundef %i) #0 {
entry:
  %d.addr = alloca x86_fp80, align 16
  %i.addr = alloca i32, align 4
  %e = alloca x86_fp80, align 16
  store x86_fp80 %d, ptr %d.addr, align 16
  store i32 %i, ptr %i.addr, align 4
  %0 = load x86_fp80, ptr %d.addr, align 16
  %fneg = fneg x86_fp80 %0
  store x86_fp80 %fneg, ptr %d.addr, align 16
  %1 = load x86_fp80, ptr %d.addr, align 16
  store x86_fp80 %1, ptr %e, align 16
  %2 = load i32, ptr %i.addr, align 4
  %cmp = icmp eq i32 %2, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load x86_fp80, ptr %d.addr, align 16
  %mul = fmul x86_fp80 %3, 0xK40008000000000000000
  store x86_fp80 %mul, ptr %d.addr, align 16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load x86_fp80, ptr %e, align 16
  %5 = load x86_fp80, ptr %d.addr, align 16
  %6 = load x86_fp80, ptr %d.addr, align 16
  %neg = fneg x86_fp80 %4
  %7 = call x86_fp80 @llvm.fmuladd.f80(x86_fp80 %neg, x86_fp80 %5, x86_fp80 %6)
  store x86_fp80 %7, ptr %d.addr, align 16
  %8 = load x86_fp80, ptr %e, align 16
  %9 = load x86_fp80, ptr %d.addr, align 16
  %10 = load x86_fp80, ptr %d.addr, align 16
  %neg3 = fneg x86_fp80 %8
  %11 = call x86_fp80 @llvm.fmuladd.f80(x86_fp80 %neg3, x86_fp80 %9, x86_fp80 %10)
  store x86_fp80 %11, ptr %d.addr, align 16
  %12 = load x86_fp80, ptr %e, align 16
  %13 = load x86_fp80, ptr %d.addr, align 16
  %14 = load x86_fp80, ptr %d.addr, align 16
  %neg5 = fneg x86_fp80 %12
  %15 = call x86_fp80 @llvm.fmuladd.f80(x86_fp80 %neg5, x86_fp80 %13, x86_fp80 %14)
  store x86_fp80 %15, ptr %d.addr, align 16
  %16 = load x86_fp80, ptr %e, align 16
  %17 = load x86_fp80, ptr %d.addr, align 16
  %18 = load x86_fp80, ptr %d.addr, align 16
  %neg7 = fneg x86_fp80 %16
  %19 = call x86_fp80 @llvm.fmuladd.f80(x86_fp80 %neg7, x86_fp80 %17, x86_fp80 %18)
  store x86_fp80 %19, ptr %d.addr, align 16
  %20 = load x86_fp80, ptr %e, align 16
  %21 = load x86_fp80, ptr %d.addr, align 16
  %22 = load x86_fp80, ptr %d.addr, align 16
  %neg9 = fneg x86_fp80 %20
  %23 = call x86_fp80 @llvm.fmuladd.f80(x86_fp80 %neg9, x86_fp80 %21, x86_fp80 %22)
  store x86_fp80 %23, ptr %d.addr, align 16
  %24 = load x86_fp80, ptr %d.addr, align 16
  ret x86_fp80 %24
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare x86_fp80 @llvm.fmuladd.f80(x86_fp80, x86_fp80, x86_fp80) #1

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
  call void @abort() #4
  unreachable

if.end:                                           ; preds = %entry
  call void @exit(i32 noundef 0) #5
  unreachable
}

; Function Attrs: noreturn nounwind
declare void @abort() #2

; Function Attrs: noreturn
declare void @exit(i32 noundef) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }
attributes #5 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
