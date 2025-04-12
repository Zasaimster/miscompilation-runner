; 144098823674034054004667996744055674370
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/144098823674034054004667996744055674370_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/144098823674034054004667996744055674370.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"Hello, World!\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%4d\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %rows = alloca i32, align 4
  %coef = alloca i32, align 4
  %space = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  store i32 %call, ptr %rows, align 4
  store i32 1, ptr %coef, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc16, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %rows, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end18

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
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %5 = load i32, ptr %space, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %space, align 4
  br label %for.cond1, !llvm.loop !6

for.end:                                          ; preds = %for.cond1
  store i32 0, ptr %j, align 4
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc12, %for.end
  %6 = load i32, ptr %j, align 4
  %7 = load i32, ptr %i, align 4
  %cmp6 = icmp sle i32 %6, %7
  br i1 %cmp6, label %for.body7, label %for.end14

for.body7:                                        ; preds = %for.cond5
  %8 = load i32, ptr %j, align 4
  %cmp8 = icmp eq i32 %8, 0
  br i1 %cmp8, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body7
  %9 = load i32, ptr %i, align 4
  %cmp9 = icmp eq i32 %9, 0
  br i1 %cmp9, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %for.body7
  store i32 1, ptr %coef, align 4
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %10 = load i32, ptr %coef, align 4
  %11 = load i32, ptr %i, align 4
  %12 = load i32, ptr %j, align 4
  %sub10 = sub nsw i32 %11, %12
  %add = add nsw i32 %sub10, 1
  %mul = mul nsw i32 %10, %add
  %13 = load i32, ptr %j, align 4
  %div = sdiv i32 %mul, %13
  store i32 %div, ptr %coef, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %14 = load i32, ptr %coef, align 4
  %call11 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %14)
  br label %for.inc12

for.inc12:                                        ; preds = %if.end
  %15 = load i32, ptr %j, align 4
  %inc13 = add nsw i32 %15, 1
  store i32 %inc13, ptr %j, align 4
  br label %for.cond5, !llvm.loop !8

for.end14:                                        ; preds = %for.cond5
  %call15 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %for.inc16

for.inc16:                                        ; preds = %for.end14
  %16 = load i32, ptr %i, align 4
  %inc17 = add nsw i32 %16, 1
  store i32 %inc17, ptr %i, align 4
  br label %for.cond, !llvm.loop !9

for.end18:                                        ; preds = %for.cond
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
