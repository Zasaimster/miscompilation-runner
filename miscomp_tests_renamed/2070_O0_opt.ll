; 136625450114233646731514528371409996715
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/136625450114233646731514528371409996715_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/136625450114233646731514528371409996715.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"Hello, World!\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %oldrho = alloca double, align 8
  %beta = alloca double, align 8
  %work = alloca double, align 8
  %rho = alloca double, align 8
  store i32 0, ptr %retval, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %conv = sitofp i32 %call to double
  store double %conv, ptr %beta, align 8
  store double 1.000000e+00, ptr %work, align 8
  store i32 1, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp sle i32 %0, 2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load double, ptr %work, align 8
  %2 = load double, ptr %work, align 8
  %mul = fmul double %1, %2
  store double %mul, ptr %rho, align 8
  %3 = load i32, ptr %i, align 4
  %cmp2 = icmp ne i32 %3, 1
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %4 = load double, ptr %rho, align 8
  %5 = load double, ptr %oldrho, align 8
  %div = fdiv double %4, %5
  store double %div, ptr %beta, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %6 = load double, ptr %beta, align 8
  %cmp4 = fcmp oeq double %6, 1.000000e+00
  br i1 %cmp4, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  call void @abort() #3
  unreachable

if.end7:                                          ; preds = %if.end
  %7 = load double, ptr %work, align 8
  %div8 = fdiv double %7, 2.000000e+00
  store double %div8, ptr %work, align 8
  %8 = load double, ptr %rho, align 8
  store double %8, ptr %oldrho, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end7
  %9 = load i32, ptr %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  ret i32 0
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noreturn nounwind
declare void @abort() #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
