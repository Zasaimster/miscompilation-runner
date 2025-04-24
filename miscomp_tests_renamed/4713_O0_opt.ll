; 183163218142872692488853738013828966259
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/183163218142872692488853738013828966259_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/183163218142872692488853738013828966259.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local global i16 5, align 2
@f = dso_local global i32 4, align 4
@g = dso_local global i32 0, align 4
@c = dso_local global [1 x i8] zeroinitializer, align 1
@b = dso_local global i16 0, align 2
@j = dso_local global i32 0, align 4
@a = dso_local global i8 0, align 1
@e = dso_local global i32 0, align 4
@h = dso_local global i16 0, align 2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %i18 = alloca i32, align 4
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

L:                                                ; preds = %for.body36, %for.end
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
  store i32 0, ptr %i18, align 4
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc27, %for.end17
  %10 = load i32, ptr %i18, align 4
  %cmp20 = icmp slt i32 %10, 10
  br i1 %cmp20, label %for.body22, label %for.end29

for.body22:                                       ; preds = %for.cond19
  %11 = load i32, ptr %i18, align 4
  %cmp23 = icmp eq i32 %11, 5
  br i1 %cmp23, label %if.then25, label %if.end26

if.then25:                                        ; preds = %for.body22
  br label %for.end29

if.end26:                                         ; preds = %for.body22
  br label %for.inc27

for.inc27:                                        ; preds = %if.end26
  %12 = load i32, ptr %i18, align 4
  %inc28 = add nsw i32 %12, 1
  store i32 %inc28, ptr %i18, align 4
  br label %for.cond19, !llvm.loop !11

for.end29:                                        ; preds = %if.then25, %for.cond19
  store i32 0, ptr @e, align 4
  br label %for.cond30

for.cond30:                                       ; preds = %for.inc38, %for.end29
  %13 = load i32, ptr @e, align 4
  %tobool31 = icmp ne i32 %13, 0
  br i1 %tobool31, label %for.body32, label %for.end39

for.body32:                                       ; preds = %for.cond30
  %14 = load i16, ptr @d, align 2
  %inc33 = add i16 %14, 1
  store i16 %inc33, ptr @d, align 2
  br label %for.cond34

for.cond34:                                       ; preds = %for.body32
  %15 = load i16, ptr @h, align 2
  %tobool35 = icmp ne i16 %15, 0
  br i1 %tobool35, label %for.body36, label %for.end37

for.body36:                                       ; preds = %for.cond34
  br label %L

for.end37:                                        ; preds = %for.cond34
  br label %for.inc38

for.inc38:                                        ; preds = %for.end37
  store i32 0, ptr @e, align 4
  br label %for.cond30, !llvm.loop !12

for.end39:                                        ; preds = %for.cond30
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
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
