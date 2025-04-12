; 133864162393741426596693689866423896296
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/133864162393741426596693689866423896296_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/133864162393741426596693689866423896296.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@b = dso_local global i16 0, align 2
@a = dso_local global i32 0, align 4
@d = dso_local global i32 0, align 4
@c = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Hello, World!\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %e = alloca [1 x i32], align 4
  store i32 0, ptr %retval, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i16, ptr @b, align 2
  %conv = sext i16 %0 to i32
  %cmp = icmp slt i32 %conv, 2
  br i1 %cmp, label %for.body, label %for.end12

for.body:                                         ; preds = %for.cond
  store i32 0, ptr @a, align 4
  %1 = load i16, ptr @b, align 2
  %conv2 = sext i16 %1 to i32
  %cmp3 = icmp eq i32 %conv2, 28378
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %2 = load i16, ptr @b, align 2
  %idxprom = sext i16 %2 to i64
  %arrayidx = getelementptr inbounds [1 x i32], ptr %e, i64 0, i64 %idxprom
  %3 = load i32, ptr %arrayidx, align 4
  store i32 %3, ptr @a, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %4 = load i32, ptr @d, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.end11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %5 = load i16, ptr @b, align 2
  %conv5 = sext i16 %5 to i32
  %tobool6 = icmp ne i32 %conv5, 0
  br i1 %tobool6, label %if.end11, label %if.then7

if.then7:                                         ; preds = %lor.lhs.false
  br label %for.cond8

for.cond8:                                        ; preds = %for.body10, %if.then7
  %6 = load i32, ptr @c, align 4
  %tobool9 = icmp ne i32 %6, 0
  br i1 %tobool9, label %for.body10, label %for.end

for.body10:                                       ; preds = %for.cond8
  br label %for.cond8, !llvm.loop !6

for.end:                                          ; preds = %for.cond8
  br label %if.end11

if.end11:                                         ; preds = %for.end, %lor.lhs.false, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end11
  %7 = load i16, ptr @b, align 2
  %inc = add i16 %7, 1
  store i16 %inc, ptr @b, align 2
  br label %for.cond, !llvm.loop !8

for.end12:                                        ; preds = %for.cond
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
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
