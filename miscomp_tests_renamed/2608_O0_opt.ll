; 145184570962449987126495035165280762725
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/145184570962449987126495035165280762725_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/145184570962449987126495035165280762725.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"Hello, optimizer!\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %space = alloca i32, align 4
  %rows = alloca i32, align 4
  %k = alloca i32, align 4
  %count = alloca i32, align 4
  %count1 = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  store i32 %call, ptr %rows, align 4
  store i32 0, ptr %k, align 4
  store i32 0, ptr %count, align 4
  store i32 0, ptr %count1, align 4
  store i32 1, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc19, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %rows, align 4
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end21

for.body:                                         ; preds = %for.cond
  store i32 1, ptr %space, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, ptr %space, align 4
  %3 = load i32, ptr %rows, align 4
  %4 = load i32, ptr %i, align 4
  %sub = sub nsw i32 %3, %4
  %cmp2 = icmp sle i32 %2, %sub
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %call4 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  %5 = load i32, ptr %count, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %count, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %6 = load i32, ptr %space, align 4
  %inc5 = add nsw i32 %6, 1
  store i32 %inc5, ptr %space, align 4
  br label %for.cond1, !llvm.loop !6

for.end:                                          ; preds = %for.cond1
  br label %while.cond

while.cond:                                       ; preds = %if.end, %for.end
  %7 = load i32, ptr %k, align 4
  %8 = load i32, ptr %i, align 4
  %mul = mul nsw i32 2, %8
  %sub6 = sub nsw i32 %mul, 1
  %cmp7 = icmp ne i32 %7, %sub6
  br i1 %cmp7, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load i32, ptr %count, align 4
  %10 = load i32, ptr %rows, align 4
  %sub8 = sub nsw i32 %10, 1
  %cmp9 = icmp sle i32 %9, %sub8
  br i1 %cmp9, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %11 = load i32, ptr %i, align 4
  %12 = load i32, ptr %k, align 4
  %add = add nsw i32 %11, %12
  %call10 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %add)
  %13 = load i32, ptr %count, align 4
  %inc11 = add nsw i32 %13, 1
  store i32 %inc11, ptr %count, align 4
  br label %if.end

if.else:                                          ; preds = %while.body
  %14 = load i32, ptr %count1, align 4
  %inc12 = add nsw i32 %14, 1
  store i32 %inc12, ptr %count1, align 4
  %15 = load i32, ptr %i, align 4
  %16 = load i32, ptr %k, align 4
  %add13 = add nsw i32 %15, %16
  %17 = load i32, ptr %count1, align 4
  %mul14 = mul nsw i32 2, %17
  %sub15 = sub nsw i32 %add13, %mul14
  %call16 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %sub15)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %18 = load i32, ptr %k, align 4
  %inc17 = add nsw i32 %18, 1
  store i32 %inc17, ptr %k, align 4
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  store i32 0, ptr %k, align 4
  store i32 0, ptr %count, align 4
  store i32 0, ptr %count1, align 4
  %call18 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %for.inc19

for.inc19:                                        ; preds = %while.end
  %19 = load i32, ptr %i, align 4
  %inc20 = add nsw i32 %19, 1
  store i32 %inc20, ptr %i, align 4
  br label %for.cond, !llvm.loop !9

for.end21:                                        ; preds = %for.cond
  ret i32 0
}

declare i32 @printf(ptr noundef, ...) #1

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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
