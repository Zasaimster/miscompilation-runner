; 14869438948106936998546934920393777287
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/14869438948106936998546934920393777287.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/14869438948106936998546934920393777287.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"This won't print.\0A\00", align 1
@f = dso_local global [3 x i32] zeroinitializer, align 4
@b = dso_local global i32 0, align 4
@c = dso_local global i32 0, align 4
@e = dso_local global i32 0, align 4
@a = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %g = alloca i32, align 4
  %h = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %0 = load i32, ptr @d, align 4
  %cmp = icmp sgt i32 %0, 10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, ptr %g, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc16, %if.end
  %1 = load i32, ptr %g, align 4
  %cmp1 = icmp slt i32 %1, 21
  br i1 %cmp1, label %for.body, label %for.end17

for.body:                                         ; preds = %for.cond
  store i32 1, ptr %j, align 4
  store i32 0, ptr %h, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %2 = load i32, ptr %h, align 4
  %cmp3 = icmp slt i32 %2, 3
  br i1 %cmp3, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond2
  %3 = load i32, ptr %h, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [3 x i32], ptr @f, i64 0, i64 %idxprom
  store i32 1, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body4
  %4 = load i32, ptr %h, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %h, align 4
  br label %for.cond2, !llvm.loop !6

for.end:                                          ; preds = %for.cond2
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc13, %for.end
  %5 = load i32, ptr %j, align 4
  %cmp6 = icmp slt i32 %5, 10
  br i1 %cmp6, label %for.body7, label %for.end15

for.body7:                                        ; preds = %for.cond5
  %6 = load i32, ptr %i, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.body7
  %7 = load i32, ptr @b, align 4
  %tobool8 = icmp ne i32 %7, 0
  br i1 %tobool8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.rhs
  br label %cond.end

cond.false:                                       ; preds = %land.rhs
  %8 = load i32, ptr @c, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %8, %cond.false ]
  %tobool9 = icmp ne i32 %cond, 0
  br label %land.end

land.end:                                         ; preds = %cond.end, %for.body7
  %9 = phi i1 [ false, %for.body7 ], [ %tobool9, %cond.end ]
  %land.ext = zext i1 %9 to i32
  store i32 %land.ext, ptr @d, align 4
  store i32 1, ptr %i, align 4
  %10 = load i32, ptr %g, align 4
  %tobool10 = icmp ne i32 %10, 0
  br i1 %tobool10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %land.end
  %11 = load i32, ptr @e, align 4
  store i32 %11, ptr @a, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %land.end
  br label %for.inc13

for.inc13:                                        ; preds = %if.end12
  %12 = load i32, ptr %j, align 4
  %inc14 = add nsw i32 %12, 1
  store i32 %inc14, ptr %j, align 4
  br label %for.cond5, !llvm.loop !8

for.end15:                                        ; preds = %for.cond5
  br label %for.inc16

for.inc16:                                        ; preds = %for.end15
  %13 = load i32, ptr %g, align 4
  %add = add nsw i32 %13, 9
  store i32 %add, ptr %g, align 4
  br label %for.cond, !llvm.loop !9

for.end17:                                        ; preds = %for.cond
  call void @exit(i32 noundef 0) #3
  unreachable
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noreturn
declare void @exit(i32 noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn }

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
