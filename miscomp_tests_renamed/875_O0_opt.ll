; 146377120610833039178137253447034224260
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/146377120610833039178137253447034224260_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/146377120610833039178137253447034224260.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"y is %d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %my_int = alloca i32, align 4
  %result = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 924, ptr %my_int, align 4
  %0 = load i32, ptr %my_int, align 4
  %mul = mul nsw i32 %0, 2
  %add = add nsw i32 %mul, 4
  %sub = sub i32 %add, 8
  %div = udiv i32 %sub, 2
  store i32 %div, ptr %result, align 4
  %1 = load i32, ptr %result, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %1)
  %2 = load i32, ptr %result, align 4
  %cmp = icmp ne i32 %2, 922
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #4
  unreachable

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %my_int, align 4
  %mul1 = mul nsw i32 %3, 2
  %sub2 = sub i32 %mul1, 4
  %add3 = add i32 %sub2, 2
  %div4 = udiv i32 %add3, 2
  store i32 %div4, ptr %result, align 4
  %4 = load i32, ptr %result, align 4
  %cmp5 = icmp ne i32 %4, 923
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  call void @abort() #4
  unreachable

if.end7:                                          ; preds = %if.end
  %5 = load i32, ptr %my_int, align 4
  %add8 = add nsw i32 %5, 2
  %mul9 = mul nsw i32 %add8, 2
  %sub10 = sub i32 %mul9, 8
  %sub11 = sub i32 %sub10, 4
  %div12 = udiv i32 %sub11, 2
  store i32 %div12, ptr %result, align 4
  %6 = load i32, ptr %result, align 4
  %cmp13 = icmp ne i32 %6, 920
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end7
  call void @abort() #4
  unreachable

if.end15:                                         ; preds = %if.end7
  %7 = load i32, ptr %my_int, align 4
  %add16 = add nsw i32 %7, 2
  %mul17 = mul nsw i32 %add16, 2
  %sub18 = sub i32 %mul17, 12
  %div19 = udiv i32 %sub18, 2
  store i32 %div19, ptr %result, align 4
  %8 = load i32, ptr %result, align 4
  %cmp20 = icmp ne i32 %8, 920
  br i1 %cmp20, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.end15
  call void @abort() #4
  unreachable

if.end22:                                         ; preds = %if.end15
  %9 = load i32, ptr %my_int, align 4
  %mul23 = mul nsw i32 %9, 4
  %add24 = add i32 %mul23, 2
  %sub25 = sub i32 %add24, 4
  %div26 = udiv i32 %sub25, 2
  store i32 %div26, ptr %result, align 4
  %10 = load i32, ptr %result, align 4
  %cmp27 = icmp ne i32 %10, 1847
  br i1 %cmp27, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.end22
  call void @abort() #4
  unreachable

if.end29:                                         ; preds = %if.end22
  call void @exit(i32 noundef 0) #5
  unreachable
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noreturn nounwind
declare void @abort() #2

; Function Attrs: noreturn
declare void @exit(i32 noundef) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
