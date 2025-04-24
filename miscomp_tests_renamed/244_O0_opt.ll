; 104202644958146749647954414486808055740
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/104202644958146749647954414486808055740_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/104202644958146749647954414486808055740.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Link = dso_local global [1 x i32] [i32 -1], align 4
@W = dso_local global [1 x i32] [i32 2], align 4
@.str = private unnamed_addr constant [26 x i8] c"This branch is executed.\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f(i32 noundef %k, i32 noundef %p) #0 {
entry:
  %k.addr = alloca i32, align 4
  %p.addr = alloca i32, align 4
  %pdest = alloca i32, align 4
  %j = alloca i32, align 4
  %D1361 = alloca i32, align 4
  store i32 %k, ptr %k.addr, align 4
  store i32 %p, ptr %p.addr, align 4
  store i32 0, ptr %j, align 4
  store i32 0, ptr %pdest, align 4
  br label %for.cond

for.cond:                                         ; preds = %do.end29, %entry
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %0 = load i32, ptr %j, align 4
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond
  br label %for.end

if.end:                                           ; preds = %for.cond
  br label %while.cond

while.cond:                                       ; preds = %if.end4, %if.end
  %1 = load i32, ptr %pdest, align 4
  %2 = load i32, ptr %p.addr, align 4
  %cmp1 = icmp sgt i32 %1, %2
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i32, ptr %j, align 4
  %4 = load i32, ptr %p.addr, align 4
  %cmp2 = icmp eq i32 %3, %4
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %while.body
  %5 = load i32, ptr %pdest, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %pdest, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %while.body
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  br label %do.body

do.body:                                          ; preds = %do.cond12, %while.end
  %6 = load i32, ptr %k.addr, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [1 x i32], ptr @W, i64 0, i64 %idxprom
  %7 = load i32, ptr %arrayidx, align 4
  store i32 %7, ptr %D1361, align 4
  br label %do.body5

do.body5:                                         ; preds = %do.cond, %do.body
  %8 = load i32, ptr %D1361, align 4
  %cmp6 = icmp ne i32 %8, 0
  br i1 %cmp6, label %if.then7, label %if.end10

if.then7:                                         ; preds = %do.body5
  store i32 1, ptr %pdest, align 4
  store i32 0, ptr %D1361, align 4
  %9 = load i32, ptr %k.addr, align 4
  %idxprom8 = sext i32 %9 to i64
  %arrayidx9 = getelementptr inbounds [1 x i32], ptr @W, i64 0, i64 %idxprom8
  store i32 0, ptr %arrayidx9, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %do.body5
  br label %do.cond

do.cond:                                          ; preds = %if.end10
  %10 = load i32, ptr %p.addr, align 4
  %cmp11 = icmp slt i32 %10, 1
  br i1 %cmp11, label %do.body5, label %do.end, !llvm.loop !8

do.end:                                           ; preds = %do.cond
  br label %do.cond12

do.cond12:                                        ; preds = %do.end
  %11 = load i32, ptr %k.addr, align 4
  %cmp13 = icmp sgt i32 %11, 0
  br i1 %cmp13, label %do.body, label %do.end14, !llvm.loop !9

do.end14:                                         ; preds = %do.cond12
  br label %do.body15

do.body15:                                        ; preds = %do.cond27, %do.end14
  store i32 0, ptr %p.addr, align 4
  %12 = load i32, ptr %k.addr, align 4
  %idxprom16 = sext i32 %12 to i64
  %arrayidx17 = getelementptr inbounds [1 x i32], ptr @Link, i64 0, i64 %idxprom16
  %13 = load i32, ptr %arrayidx17, align 4
  store i32 %13, ptr %k.addr, align 4
  br label %while.cond18

while.cond18:                                     ; preds = %if.end25, %do.body15
  %14 = load i32, ptr %p.addr, align 4
  %15 = load i32, ptr %j, align 4
  %cmp19 = icmp slt i32 %14, %15
  br i1 %cmp19, label %while.body20, label %while.end26

while.body20:                                     ; preds = %while.cond18
  %16 = load i32, ptr %k.addr, align 4
  %cmp21 = icmp ne i32 %16, -1
  br i1 %cmp21, label %if.then22, label %if.end25

if.then22:                                        ; preds = %while.body20
  %17 = load i32, ptr %pdest, align 4
  %inc23 = add nsw i32 %17, 1
  store i32 %inc23, ptr %pdest, align 4
  %18 = load i32, ptr %p.addr, align 4
  %inc24 = add nsw i32 %18, 1
  store i32 %inc24, ptr %p.addr, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then22, %while.body20
  br label %while.cond18, !llvm.loop !10

while.end26:                                      ; preds = %while.cond18
  br label %do.cond27

do.cond27:                                        ; preds = %while.end26
  %19 = load i32, ptr %k.addr, align 4
  %cmp28 = icmp ne i32 %19, -1
  br i1 %cmp28, label %do.body15, label %do.end29, !llvm.loop !11

do.end29:                                         ; preds = %do.cond27
  store i32 1, ptr %j, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then
  %20 = load i32, ptr %pdest, align 4
  ret i32 %20
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call i32 @f(i32 noundef 0, i32 noundef 2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @abort() #3
  unreachable

if.end:                                           ; preds = %entry
  ret i32 0
}

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
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
