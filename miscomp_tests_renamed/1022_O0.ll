; 138671972127813005454408126474905663140
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/138671972127813005454408126474905663140.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/138671972127813005454408126474905663140.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local global ptr inttoptr (i64 5 to ptr), align 8
@a = dso_local global i32 0, align 4
@c = dso_local global i32 0, align 4
@i = dso_local global i32 0, align 4
@h = dso_local global i32 0, align 4
@g = dso_local global i32 0, align 4
@f = dso_local global i8 0, align 1
@e = dso_local global i8 0, align 1
@b = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %j = alloca i8, align 1
  %k = alloca i8, align 1
  %l = alloca i8, align 1
  store i32 0, ptr %retval, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  br i1 false, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 0, ptr @a, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc4, %while.body
  %0 = load i32, ptr @a, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %for.body, label %for.end6

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, ptr @c, align 4
  %tobool2 = icmp ne i32 %1, 0
  br i1 %tobool2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %2 = load i32, ptr @c, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr @c, align 4
  br label %for.cond1, !llvm.loop !6

for.end:                                          ; preds = %for.cond1
  br label %for.inc4

for.inc4:                                         ; preds = %for.end
  %3 = load i32, ptr @a, align 4
  %inc5 = add nsw i32 %3, 1
  store i32 %inc5, ptr @a, align 4
  br label %for.cond, !llvm.loop !8

for.end6:                                         ; preds = %for.cond
  %4 = load i32, ptr @i, align 4
  %tobool7 = icmp ne i32 %4, 0
  br i1 %tobool7, label %if.then, label %if.end

if.then:                                          ; preds = %for.end6
  br label %while.end

if.end:                                           ; preds = %for.end6
  br label %while.cond

while.end:                                        ; preds = %if.then, %while.cond
  %5 = load i32, ptr @c, align 4
  %conv = trunc i32 %5 to i8
  store i8 %conv, ptr %j, align 1
  store i8 -1, ptr %k, align 1
  %6 = load i8, ptr %j, align 1
  %conv8 = sext i8 %6 to i32
  %7 = load i32, ptr @h, align 4
  %shr = ashr i32 %conv8, %7
  store i32 %shr, ptr @g, align 4
  %conv9 = trunc i32 %shr to i8
  store i8 %conv9, ptr %l, align 1
  %8 = load i8, ptr %l, align 1
  %conv10 = sext i8 %8 to i32
  %cmp = icmp eq i32 %conv10, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.end
  %9 = load i8, ptr %k, align 1
  %conv12 = sext i8 %9 to i32
  br label %cond.end

cond.false:                                       ; preds = %while.end
  %10 = load i8, ptr %k, align 1
  %conv13 = sext i8 %10 to i32
  %11 = load i8, ptr %l, align 1
  %conv14 = sext i8 %11 to i32
  %rem = srem i32 %conv13, %conv14
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv12, %cond.true ], [ %rem, %cond.false ]
  %conv15 = trunc i32 %cond to i8
  store i8 %conv15, ptr @f, align 1
  %12 = load i8, ptr @f, align 1
  %conv16 = sext i8 %12 to i32
  %conv17 = trunc i32 %conv16 to i8
  store i8 %conv17, ptr @e, align 1
  %13 = load i8, ptr @e, align 1
  %conv18 = zext i8 %13 to i32
  %14 = load ptr, ptr @d, align 8
  store i32 %conv18, ptr %14, align 4
  %15 = load i32, ptr @b, align 4
  %cmp19 = icmp ne i32 %15, 255
  br i1 %cmp19, label %if.then21, label %if.end22

if.then21:                                        ; preds = %cond.end
  call void @abort() #2
  unreachable

if.end22:                                         ; preds = %cond.end
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare void @abort() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

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
