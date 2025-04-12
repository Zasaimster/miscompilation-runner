; 106612263635206670316735155719999843354
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/106612263635206670316735155719999843354.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/106612263635206670316735155719999843354.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local global i16 5, align 2
@f = dso_local global i32 4, align 4
@g = dso_local global i32 0, align 4
@c = dso_local global [1 x i8] zeroinitializer, align 1
@b = dso_local global i16 0, align 2
@j = dso_local global i32 0, align 4
@a = dso_local global i8 0, align 1
@h = dso_local global i16 0, align 2
@e = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc15, %entry
  %0 = load i32, ptr @f, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %for.body, label %for.end17

for.body:                                         ; preds = %for.cond
  store i32 0, ptr @g, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc12, %for.body
  %1 = load i32, ptr @g, align 4
  %cmp = icmp sle i32 %1, 32
  br i1 %cmp, label %for.body2, label %for.end14

for.body2:                                        ; preds = %for.cond1
  store i32 0, ptr %i, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body2
  %2 = load i32, ptr %i, align 4
  %cmp4 = icmp slt i32 %2, 3
  br i1 %cmp4, label %for.body5, label %for.end

for.body5:                                        ; preds = %for.cond3
  br label %while.cond

while.cond:                                       ; preds = %if.end, %for.body5
  %3 = load i16, ptr @d, align 2
  %conv = sext i16 %3 to i32
  %cmp6 = icmp sgt i32 1, %conv
  br i1 %cmp6, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i16, ptr @b, align 2
  %idxprom = sext i16 %4 to i64
  %arrayidx = getelementptr inbounds [1 x i8], ptr @c, i64 0, i64 %idxprom
  %5 = load i8, ptr %arrayidx, align 1
  %tobool8 = icmp ne i8 %5, 0
  br i1 %tobool8, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  br label %while.end

if.end:                                           ; preds = %while.body
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %if.then, %while.cond
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %6 = load i32, ptr %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond3, !llvm.loop !8

for.end:                                          ; preds = %for.cond3
  br label %L

L:                                                ; preds = %for.end
  %7 = load i32, ptr @j, align 4
  %tobool9 = icmp ne i32 %7, 0
  br i1 %tobool9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %L
  br label %for.end14

if.end11:                                         ; preds = %L
  br label %for.inc12

for.inc12:                                        ; preds = %if.end11
  %8 = load i32, ptr @g, align 4
  %inc13 = add nsw i32 %8, 1
  store i32 %inc13, ptr @g, align 4
  br label %for.cond1, !llvm.loop !9

for.end14:                                        ; preds = %if.then10, %for.cond1
  br label %for.inc15

for.inc15:                                        ; preds = %for.end14
  %9 = load i8, ptr @a, align 1
  %conv16 = sext i8 %9 to i32
  store i32 %conv16, ptr @f, align 4
  br label %for.cond, !llvm.loop !10

for.end17:                                        ; preds = %for.cond
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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
