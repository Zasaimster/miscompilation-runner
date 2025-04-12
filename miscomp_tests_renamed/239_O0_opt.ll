; 195583103099942056901417479122339441710
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/195583103099942056901417479122339441710_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/195583103099942056901417479122339441710.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local global i32 0, align 4
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
  br label %while.cond

while.cond:                                       ; preds = %entry
  %0 = load i32, ptr @d, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %while.body2

while.body2:                                      ; preds = %while.body2, %while.body
  br label %while.body2

while.end:                                        ; preds = %while.cond
  store i32 0, ptr %g, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc15, %while.end
  br i1 true, label %for.body, label %for.end16

for.body:                                         ; preds = %for.cond
  store i32 1, ptr %j, align 4
  store i32 0, ptr %h, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %1 = load i32, ptr %h, align 4
  %cmp = icmp slt i32 %1, 3
  br i1 %cmp, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond3
  %2 = load i32, ptr %h, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [3 x i32], ptr @f, i64 0, i64 %idxprom
  store i32 1, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body4
  %3 = load i32, ptr %h, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %h, align 4
  br label %for.cond3, !llvm.loop !6

for.end:                                          ; preds = %for.cond3
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc12, %for.end
  %4 = load i32, ptr %j, align 4
  %cmp6 = icmp slt i32 %4, 10
  br i1 %cmp6, label %for.body7, label %for.end14

for.body7:                                        ; preds = %for.cond5
  %5 = load i32, ptr %i, align 4
  %tobool8 = icmp ne i32 %5, 0
  br i1 %tobool8, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.body7
  %6 = load i32, ptr @b, align 4
  %tobool9 = icmp ne i32 %6, 0
  br i1 %tobool9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.rhs
  br label %cond.end

cond.false:                                       ; preds = %land.rhs
  %7 = load i32, ptr @c, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %7, %cond.false ]
  %tobool10 = icmp ne i32 %cond, 0
  br label %land.end

land.end:                                         ; preds = %cond.end, %for.body7
  %8 = phi i1 [ false, %for.body7 ], [ %tobool10, %cond.end ]
  %land.ext = zext i1 %8 to i32
  store i32 %land.ext, ptr @d, align 4
  store i32 1, ptr %i, align 4
  %9 = load i32, ptr %g, align 4
  %tobool11 = icmp ne i32 %9, 0
  br i1 %tobool11, label %if.then, label %if.end

if.then:                                          ; preds = %land.end
  %10 = load i32, ptr @e, align 4
  store i32 %10, ptr @a, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  br label %for.inc12

for.inc12:                                        ; preds = %if.end
  %11 = load i32, ptr %j, align 4
  %inc13 = add nsw i32 %11, 1
  store i32 %inc13, ptr %j, align 4
  br label %for.cond5, !llvm.loop !8

for.end14:                                        ; preds = %for.cond5
  br label %for.inc15

for.inc15:                                        ; preds = %for.end14
  %12 = load i32, ptr %g, align 4
  %add = add nsw i32 %12, 9
  store i32 %add, ptr %g, align 4
  br label %for.cond

for.end16:                                        ; preds = %for.cond
  call void @exit(i32 noundef 0) #2
  unreachable
}

; Function Attrs: noreturn
declare void @exit(i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn }

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
