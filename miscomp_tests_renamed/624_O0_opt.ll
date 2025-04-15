; 15981883422914134899924040051292068285
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/15981883422914134899924040051292068285_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/15981883422914134899924040051292068285.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%4d\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

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
  store i32 42, ptr %rows, align 4
  store i32 1, ptr %coef, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc15, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %rows, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end17

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
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %5 = load i32, ptr %space, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %space, align 4
  br label %for.cond1, !llvm.loop !6

for.end:                                          ; preds = %for.cond1
  store i32 0, ptr %j, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc11, %for.end
  %6 = load i32, ptr %j, align 4
  %7 = load i32, ptr %i, align 4
  %cmp5 = icmp sle i32 %6, %7
  br i1 %cmp5, label %for.body6, label %for.end13

for.body6:                                        ; preds = %for.cond4
  %8 = load i32, ptr %j, align 4
  %cmp7 = icmp eq i32 %8, 0
  br i1 %cmp7, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body6
  %9 = load i32, ptr %i, align 4
  %cmp8 = icmp eq i32 %9, 0
  br i1 %cmp8, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %for.body6
  store i32 1, ptr %coef, align 4
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %10 = load i32, ptr %coef, align 4
  %11 = load i32, ptr %i, align 4
  %12 = load i32, ptr %j, align 4
  %sub9 = sub nsw i32 %11, %12
  %add = add nsw i32 %sub9, 1
  %mul = mul nsw i32 %10, %add
  %13 = load i32, ptr %j, align 4
  %div = sdiv i32 %mul, %13
  store i32 %div, ptr %coef, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %14 = load i32, ptr %coef, align 4
  %call10 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %14)
  br label %for.inc11

for.inc11:                                        ; preds = %if.end
  %15 = load i32, ptr %j, align 4
  %inc12 = add nsw i32 %15, 1
  store i32 %inc12, ptr %j, align 4
  br label %for.cond4, !llvm.loop !8

for.end13:                                        ; preds = %for.cond4
  %call14 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %for.inc15

for.inc15:                                        ; preds = %for.end13
  %16 = load i32, ptr %i, align 4
  %inc16 = add nsw i32 %16, 1
  store i32 %inc16, ptr %i, align 4
  br label %for.cond, !llvm.loop !9

for.end17:                                        ; preds = %for.cond
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
