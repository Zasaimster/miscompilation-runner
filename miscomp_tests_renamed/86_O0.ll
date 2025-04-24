; 101625130182403830842039354303119106253
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/101625130182403830842039354303119106253.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/101625130182403830842039354303119106253.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Link = dso_local global [1 x i32] [i32 5], align 4
@W = dso_local global [1 x i32] [i32 10], align 4

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

for.cond:                                         ; preds = %do.end37, %entry
  %0 = load i32, ptr %pdest, align 4
  %cmp = icmp sgt i32 %0, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then
  %1 = load i32, ptr %j, align 4
  %dec = add nsw i32 %1, -1
  store i32 %dec, ptr %j, align 4
  %2 = load i32, ptr %pdest, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr %pdest, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %3 = load i32, ptr %j, align 4
  %cmp1 = icmp sgt i32 %3, 2
  br i1 %cmp1, label %do.body, label %do.end, !llvm.loop !6

do.end:                                           ; preds = %do.cond
  br label %if.end

if.end:                                           ; preds = %do.end, %for.cond
  %4 = load i32, ptr %j, align 4
  %cmp2 = icmp eq i32 %4, 1
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  br label %for.end

if.end4:                                          ; preds = %if.end
  br label %while.cond

while.cond:                                       ; preds = %if.end9, %if.end4
  %5 = load i32, ptr %pdest, align 4
  %6 = load i32, ptr %p.addr, align 4
  %cmp5 = icmp sgt i32 %5, %6
  br i1 %cmp5, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load i32, ptr %j, align 4
  %8 = load i32, ptr %p.addr, align 4
  %cmp6 = icmp eq i32 %7, %8
  br i1 %cmp6, label %if.then7, label %if.end9

if.then7:                                         ; preds = %while.body
  %9 = load i32, ptr %pdest, align 4
  %inc8 = add nsw i32 %9, 1
  store i32 %inc8, ptr %pdest, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %while.body
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  br label %do.body10

do.body10:                                        ; preds = %do.cond20, %while.end
  %10 = load i32, ptr %k.addr, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds [1 x i32], ptr @W, i64 0, i64 %idxprom
  %11 = load i32, ptr %arrayidx, align 4
  store i32 %11, ptr %D1361, align 4
  br label %do.body11

do.body11:                                        ; preds = %do.cond17, %do.body10
  %12 = load i32, ptr %D1361, align 4
  %cmp12 = icmp ne i32 %12, 0
  br i1 %cmp12, label %if.then13, label %if.end16

if.then13:                                        ; preds = %do.body11
  store i32 1, ptr %pdest, align 4
  store i32 0, ptr %D1361, align 4
  %13 = load i32, ptr %k.addr, align 4
  %idxprom14 = sext i32 %13 to i64
  %arrayidx15 = getelementptr inbounds [1 x i32], ptr @W, i64 0, i64 %idxprom14
  store i32 0, ptr %arrayidx15, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %do.body11
  br label %do.cond17

do.cond17:                                        ; preds = %if.end16
  %14 = load i32, ptr %p.addr, align 4
  %cmp18 = icmp slt i32 %14, 1
  br i1 %cmp18, label %do.body11, label %do.end19, !llvm.loop !9

do.end19:                                         ; preds = %do.cond17
  br label %do.cond20

do.cond20:                                        ; preds = %do.end19
  %15 = load i32, ptr %k.addr, align 4
  %cmp21 = icmp sgt i32 %15, 0
  br i1 %cmp21, label %do.body10, label %do.end22, !llvm.loop !10

do.end22:                                         ; preds = %do.cond20
  br label %do.body23

do.body23:                                        ; preds = %do.cond35, %do.end22
  store i32 0, ptr %p.addr, align 4
  %16 = load i32, ptr %k.addr, align 4
  %idxprom24 = sext i32 %16 to i64
  %arrayidx25 = getelementptr inbounds [1 x i32], ptr @Link, i64 0, i64 %idxprom24
  %17 = load i32, ptr %arrayidx25, align 4
  store i32 %17, ptr %k.addr, align 4
  br label %while.cond26

while.cond26:                                     ; preds = %if.end33, %do.body23
  %18 = load i32, ptr %p.addr, align 4
  %19 = load i32, ptr %j, align 4
  %cmp27 = icmp slt i32 %18, %19
  br i1 %cmp27, label %while.body28, label %while.end34

while.body28:                                     ; preds = %while.cond26
  %20 = load i32, ptr %k.addr, align 4
  %cmp29 = icmp ne i32 %20, -1
  br i1 %cmp29, label %if.then30, label %if.end33

if.then30:                                        ; preds = %while.body28
  %21 = load i32, ptr %pdest, align 4
  %inc31 = add nsw i32 %21, 1
  store i32 %inc31, ptr %pdest, align 4
  %22 = load i32, ptr %p.addr, align 4
  %inc32 = add nsw i32 %22, 1
  store i32 %inc32, ptr %p.addr, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then30, %while.body28
  br label %while.cond26, !llvm.loop !11

while.end34:                                      ; preds = %while.cond26
  br label %do.cond35

do.cond35:                                        ; preds = %while.end34
  %23 = load i32, ptr %k.addr, align 4
  %cmp36 = icmp ne i32 %23, -1
  br i1 %cmp36, label %do.body23, label %do.end37, !llvm.loop !12

do.end37:                                         ; preds = %do.cond35
  store i32 1, ptr %j, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then3
  %24 = load i32, ptr %pdest, align 4
  ret i32 %24
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call i32 @f(i32 noundef 0, i32 noundef 2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

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
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
