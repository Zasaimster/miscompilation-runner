; 106255199540674486931853147295561610792
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/106255199540674486931853147295561610792.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/106255199540674486931853147295561610792.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@b = dso_local global i16 0, align 2
@f = dso_local global i32 0, align 4
@h = dso_local global i32 0, align 4
@d = dso_local global i32 0, align 4
@a = dso_local global i32 0, align 4
@i = dso_local global i32 0, align 4
@g = dso_local global i32 0, align 4
@e = dso_local global i32 0, align 4
@c = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @fn1() #0 {
entry:
  %j = alloca [0 x i32], align 4
  store i16 0, ptr @b, align 2
  br label %for.cond

for.cond:                                         ; preds = %if.end18, %entry
  %0 = load i32, ptr @f, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [0 x i32], ptr %j, i64 0, i64 %idxprom
  store i32 0, ptr %arrayidx, align 4
  %1 = load i32, ptr @h, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.cond
  store i32 0, ptr @d, align 4
  br label %if.end18

if.else:                                          ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %if.else
  %2 = load i32, ptr @f, align 4
  %tobool2 = icmp ne i32 %2, 0
  br i1 %tobool2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr @f, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr @f, align 4
  br label %for.cond1, !llvm.loop !6

for.end:                                          ; preds = %for.cond1
  store i32 0, ptr @a, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc15, %for.end
  %4 = load i32, ptr @a, align 4
  %cmp = icmp slt i32 %4, 1
  br i1 %cmp, label %for.body4, label %for.end17

for.body4:                                        ; preds = %for.cond3
  br label %for.cond5

for.cond5:                                        ; preds = %for.body4
  %5 = load i16, ptr @b, align 2
  %conv = sext i16 %5 to i32
  %6 = load i16, ptr @b, align 2
  %conv6 = sext i16 %6 to i32
  %xor = xor i32 %conv6, 1
  %and = and i32 %xor, 83647
  %and7 = and i32 %conv, %and
  %tobool8 = icmp ne i32 %and7, 0
  br i1 %tobool8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.cond5
  %7 = load i16, ptr @b, align 2
  %conv9 = sext i16 %7 to i32
  br label %cond.end

cond.false:                                       ; preds = %for.cond5
  %8 = load i16, ptr @b, align 2
  %conv10 = sext i16 %8 to i32
  %sub = sub nsw i32 %conv10, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv9, %cond.true ], [ %sub, %cond.false ]
  store i32 %cond, ptr @i, align 4
  %9 = load i32, ptr @i, align 4
  store i32 %9, ptr @g, align 4
  %arrayidx11 = getelementptr inbounds [0 x i32], ptr %j, i64 0, i64 0
  %10 = load i32, ptr %arrayidx11, align 4
  store i32 %10, ptr @e, align 4
  %11 = load i32, ptr @c, align 4
  %tobool12 = icmp ne i32 %11, 0
  br i1 %tobool12, label %if.then13, label %if.end

if.then13:                                        ; preds = %cond.end
  br label %for.end14

if.end:                                           ; preds = %cond.end
  ret i32 0

for.end14:                                        ; preds = %if.then13
  br label %for.inc15

for.inc15:                                        ; preds = %for.end14
  %12 = load i32, ptr @a, align 4
  %inc16 = add nsw i32 %12, 1
  store i32 %inc16, ptr @a, align 4
  br label %for.cond3, !llvm.loop !8

for.end17:                                        ; preds = %for.cond3
  br label %if.end18

if.end18:                                         ; preds = %for.end17, %if.then
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
