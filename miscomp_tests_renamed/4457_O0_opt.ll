; 118373393708060894698544747858901991889
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/118373393708060894698544747858901991889_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/118373393708060894698544747858901991889.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@e = dso_local global i32 20, align 4
@u = dso_local global i32 0, align 4
@t5 = dso_local global i32 0, align 4
@n = dso_local global i8 0, align 1
@t2 = dso_local global i32 0, align 4
@b = dso_local global i32 0, align 4
@m = dso_local global i32 0, align 4
@t = dso_local global i8 0, align 1
@a = dso_local global [1 x i32] zeroinitializer, align 4
@i = dso_local global i32 0, align 4
@k = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @fn1(i32 noundef %p1) #0 {
entry:
  %p1.addr = alloca i32, align 4
  %g = alloca [1 x i32], align 4
  store i32 %p1, ptr %p1.addr, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end7, %entry
  %0 = load i32, ptr %p1.addr, align 4
  %div = sdiv i32 %0, 3
  %tobool = icmp ne i32 %div, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %lor.end, %if.then
  %1 = load i32, ptr @t5, align 4
  %tobool2 = icmp ne i32 %1, 0
  br i1 %tobool2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond1
  %2 = load i32, ptr @u, align 4
  %tobool3 = icmp ne i32 %2, 0
  br i1 %tobool3, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %for.body
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %for.body
  br label %for.cond1, !llvm.loop !6

for.end:                                          ; preds = %for.cond1
  br label %if.end

if.end:                                           ; preds = %for.end, %for.cond
  %3 = load i32, ptr %p1.addr, align 4
  %and = and i32 %3, 4
  store i32 %and, ptr @t2, align 4
  %4 = load i32, ptr @b, align 4
  %add = add nsw i32 %4, 1
  %tobool5 = icmp ne i32 %add, 0
  br i1 %tobool5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  ret i32 0

if.end7:                                          ; preds = %if.end
  %arrayidx = getelementptr inbounds [1 x i32], ptr %g, i64 0, i64 0
  %5 = load i32, ptr %arrayidx, align 4
  store i32 %5, ptr @u, align 4
  br label %for.cond
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %c = alloca i8, align 1
  store i32 0, ptr %retval, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr @e, align 4
  %cmp = icmp sge i32 %0, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr @m, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %2 = load i8, ptr @t, align 1
  store i8 %2, ptr %c, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %3 = load i8, ptr %c, align 1
  %conv = sext i8 %3 to i32
  %call = call i32 @fn1(i32 noundef %conv)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %4 = load i32, ptr @e, align 4
  %dec = add nsw i32 %4, -1
  store i32 %dec, ptr @e, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %5 = load i32, ptr @t2, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [1 x i32], ptr @a, i64 0, i64 %idxprom
  %6 = load i32, ptr %arrayidx, align 4
  %cmp1 = icmp ne i32 %6, 0
  br i1 %cmp1, label %if.then3, label %if.end4

if.then3:                                         ; preds = %for.end
  call void @abort() #2
  unreachable

if.end4:                                          ; preds = %for.end
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
