; 125418260348140091943557312468147871172
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/125418260348140091943557312468147871172.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/125418260348140091943557312468147871172.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@i = dso_local global i32 0, align 4
@b = dso_local global i16 0, align 2
@f = dso_local global i32 0, align 4
@h = dso_local global i32 0, align 4
@d = dso_local global i32 0, align 4
@a = dso_local global i32 0, align 4
@g = dso_local global i32 0, align 4
@e = dso_local global i32 0, align 4
@c = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @fn1() #0 {
entry:
  %j = alloca [0 x i32], align 4
  %0 = load i32, ptr @i, align 4
  %1 = load i32, ptr @i, align 4
  %mul = mul nsw i32 %0, %1
  %conv = trunc i32 %mul to i16
  store i16 %conv, ptr @b, align 2
  br label %for.cond

for.cond:                                         ; preds = %if.end20, %entry
  %2 = load i32, ptr @f, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [0 x i32], ptr %j, i64 0, i64 %idxprom
  store i32 0, ptr %arrayidx, align 4
  %3 = load i32, ptr @h, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.cond
  store i32 0, ptr @d, align 4
  br label %if.end20

if.else:                                          ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %if.else
  %4 = load i32, ptr @f, align 4
  %tobool2 = icmp ne i32 %4, 0
  br i1 %tobool2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, ptr @f, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr @f, align 4
  br label %for.cond1, !llvm.loop !6

for.end:                                          ; preds = %for.cond1
  store i32 0, ptr @a, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc17, %for.end
  %6 = load i32, ptr @a, align 4
  %cmp = icmp slt i32 %6, 1
  br i1 %cmp, label %for.body5, label %for.end19

for.body5:                                        ; preds = %for.cond3
  br label %for.cond6

for.cond6:                                        ; preds = %for.body5
  %7 = load i16, ptr @b, align 2
  %conv7 = sext i16 %7 to i32
  %8 = load i16, ptr @b, align 2
  %conv8 = sext i16 %8 to i32
  %xor = xor i32 %conv8, 1
  %and = and i32 %xor, 83647
  %and9 = and i32 %conv7, %and
  %tobool10 = icmp ne i32 %and9, 0
  br i1 %tobool10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.cond6
  %9 = load i16, ptr @b, align 2
  %conv11 = sext i16 %9 to i32
  br label %cond.end

cond.false:                                       ; preds = %for.cond6
  %10 = load i16, ptr @b, align 2
  %conv12 = sext i16 %10 to i32
  %sub = sub nsw i32 %conv12, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv11, %cond.true ], [ %sub, %cond.false ]
  store i32 %cond, ptr @i, align 4
  %11 = load i32, ptr @i, align 4
  store i32 %11, ptr @g, align 4
  %arrayidx13 = getelementptr inbounds [0 x i32], ptr %j, i64 0, i64 0
  %12 = load i32, ptr %arrayidx13, align 4
  store i32 %12, ptr @e, align 4
  %13 = load i32, ptr @c, align 4
  %tobool14 = icmp ne i32 %13, 0
  br i1 %tobool14, label %if.then15, label %if.end

if.then15:                                        ; preds = %cond.end
  br label %for.end16

if.end:                                           ; preds = %cond.end
  ret i32 0

for.end16:                                        ; preds = %if.then15
  br label %for.inc17

for.inc17:                                        ; preds = %for.end16
  %14 = load i32, ptr @a, align 4
  %inc18 = add nsw i32 %14, 1
  store i32 %inc18, ptr @a, align 4
  br label %for.cond3, !llvm.loop !8

for.end19:                                        ; preds = %for.cond3
  br label %if.end20

if.end20:                                         ; preds = %for.end19, %if.then
  br label %for.cond
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call i32 @fn1()
  %0 = load i32, ptr @g, align 4
  %cmp = icmp ne i32 %0, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #2
  unreachable

if.end:                                           ; preds = %entry
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
