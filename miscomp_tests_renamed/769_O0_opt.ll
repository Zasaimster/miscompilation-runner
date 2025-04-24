; 113643442326716599011445613117118908723
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/113643442326716599011445613117118908723_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/113643442326716599011445613117118908723.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"Hello, World!\0A\00", align 1
@i = dso_local global i16 0, align 2
@b = dso_local global i32 0, align 4
@k = dso_local global i32 0, align 4
@g = dso_local global i32 0, align 4
@j = dso_local global i32 0, align 4
@c = dso_local global i32 0, align 4
@a = dso_local global i8 0, align 1
@d = dso_local global i32 0, align 4
@h = dso_local global i8 0, align 1
@e = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %m = alloca i32, align 4
  %o = alloca i8, align 1
  %p = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %0 = load i16, ptr @i, align 2
  %conv = sext i16 %0 to i32
  %xor = xor i32 %conv, %call
  %conv1 = trunc i32 %xor to i16
  store i16 %conv1, ptr @i, align 2
  %conv2 = sext i16 %conv1 to i32
  store i32 %conv2, ptr %m, align 4
  store i32 0, ptr @b, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc20, %entry
  %1 = load i32, ptr @b, align 4
  %cmp = icmp slt i32 %1, 1
  br i1 %cmp, label %for.body, label %for.end22

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %m, align 4
  %conv4 = trunc i32 %2 to i8
  store i8 %conv4, ptr %o, align 1
  %3 = load i32, ptr @k, align 4
  store i32 %3, ptr @g, align 4
  %4 = load i32, ptr @j, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %for.body
  %5 = load volatile i32, ptr @c, align 4
  %tobool5 = icmp ne i32 %5, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %for.body
  %6 = phi i1 [ true, %for.body ], [ %tobool5, %lor.rhs ]
  %lor.ext = zext i1 %6 to i32
  store i32 %lor.ext, ptr @j, align 4
  %7 = load i8, ptr @a, align 1
  %conv6 = sext i8 %7 to i32
  %8 = load i8, ptr %o, align 1
  %conv7 = sext i8 %8 to i32
  %cmp8 = icmp ne i32 %conv6, %conv7
  br i1 %cmp8, label %if.then, label %if.else

if.then:                                          ; preds = %lor.end
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc, %if.then
  %9 = load i32, ptr @d, align 4
  %cmp11 = icmp slt i32 %9, 1
  br i1 %cmp11, label %for.body13, label %for.end

for.body13:                                       ; preds = %for.cond10
  br label %for.inc

for.inc:                                          ; preds = %for.body13
  %10 = load i32, ptr @d, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, ptr @d, align 4
  br label %for.cond10, !llvm.loop !6

for.end:                                          ; preds = %for.cond10
  br label %if.end

if.else:                                          ; preds = %lor.end
  store ptr @h, ptr %p, align 8
  %11 = load ptr, ptr %p, align 8
  store i8 1, ptr %11, align 1
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc17, %if.else
  %12 = load i32, ptr @e, align 4
  %tobool15 = icmp ne i32 %12, 0
  br i1 %tobool15, label %for.body16, label %for.end19

for.body16:                                       ; preds = %for.cond14
  br label %for.inc17

for.inc17:                                        ; preds = %for.body16
  %13 = load i32, ptr @e, align 4
  %inc18 = add nsw i32 %13, 1
  store i32 %inc18, ptr @e, align 4
  br label %for.cond14, !llvm.loop !8

for.end19:                                        ; preds = %for.cond14
  br label %if.end

if.end:                                           ; preds = %for.end19, %for.end
  br label %for.inc20

for.inc20:                                        ; preds = %if.end
  %14 = load i32, ptr @b, align 4
  %inc21 = add nsw i32 %14, 1
  store i32 %inc21, ptr @b, align 4
  br label %for.cond, !llvm.loop !9

for.end22:                                        ; preds = %for.cond
  %15 = load i8, ptr @h, align 1
  %conv23 = sext i8 %15 to i32
  %cmp24 = icmp ne i32 %conv23, 0
  br i1 %cmp24, label %if.then26, label %if.end27

if.then26:                                        ; preds = %for.end22
  call void @abort() #3
  unreachable

if.end27:                                         ; preds = %for.end22
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
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
