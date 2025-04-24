; 171368228594129231318364527984980112780
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/171368228594129231318364527984980112780.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/171368228594129231318364527984980112780.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(ptr noundef %start, ptr noundef %end) #0 {
entry:
  %start.addr = alloca ptr, align 8
  %end.addr = alloca ptr, align 8
  %temp = alloca ptr, align 8
  store ptr %start, ptr %start.addr, align 8
  store ptr %end, ptr %end.addr, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %temp, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load ptr, ptr %start.addr, align 8
  %cmp = icmp ugt ptr null, %0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load ptr, ptr %temp, align 8
  %incdec.ptr = getelementptr inbounds i64, ptr %1, i32 -1
  store ptr %incdec.ptr, ptr %temp, align 8
  %2 = load i64, ptr %1, align 8
  %3 = load ptr, ptr %end.addr, align 8
  %incdec.ptr1 = getelementptr inbounds i64, ptr %3, i32 -1
  store ptr %incdec.ptr1, ptr %end.addr, align 8
  store i64 %2, ptr %3, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca [5 x i64], align 16
  %start = alloca i32, align 4
  %end = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 0, ptr %start, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc54, %entry
  %0 = load i32, ptr %start, align 4
  %cmp = icmp slt i32 %0, 5
  br i1 %cmp, label %for.body, label %for.end56

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %end, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc51, %for.body
  %1 = load i32, ptr %end, align 4
  %cmp2 = icmp slt i32 %1, 5
  br i1 %cmp2, label %for.body3, label %for.end53

for.body3:                                        ; preds = %for.cond1
  store i32 0, ptr %k, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %2 = load i32, ptr %k, align 4
  %cmp5 = icmp slt i32 %2, 5
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %3 = load i32, ptr %k, align 4
  %conv = sext i32 %3 to i64
  %4 = load i32, ptr %k, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [5 x i64], ptr %a, i64 0, i64 %idxprom
  store i64 %conv, ptr %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %5 = load i32, ptr %k, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %k, align 4
  br label %for.cond4, !llvm.loop !8

for.end:                                          ; preds = %for.cond4
  %arraydecay = getelementptr inbounds [5 x i64], ptr %a, i64 0, i64 0
  %6 = load i32, ptr %start, align 4
  %idx.ext = sext i32 %6 to i64
  %add.ptr = getelementptr inbounds i64, ptr %arraydecay, i64 %idx.ext
  %arraydecay7 = getelementptr inbounds [5 x i64], ptr %a, i64 0, i64 0
  %7 = load i32, ptr %end, align 4
  %idx.ext8 = sext i32 %7 to i64
  %add.ptr9 = getelementptr inbounds i64, ptr %arraydecay7, i64 %idx.ext8
  call void @foo(ptr noundef %add.ptr, ptr noundef %add.ptr9)
  store i32 0, ptr %k, align 4
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc19, %for.end
  %8 = load i32, ptr %k, align 4
  %9 = load i32, ptr %start, align 4
  %cmp11 = icmp sle i32 %8, %9
  br i1 %cmp11, label %for.body13, label %for.end21

for.body13:                                       ; preds = %for.cond10
  %10 = load i32, ptr %k, align 4
  %idxprom14 = sext i32 %10 to i64
  %arrayidx15 = getelementptr inbounds [5 x i64], ptr %a, i64 0, i64 %idxprom14
  %11 = load i64, ptr %arrayidx15, align 8
  %12 = load i32, ptr %k, align 4
  %conv16 = sext i32 %12 to i64
  %cmp17 = icmp ne i64 %11, %conv16
  br i1 %cmp17, label %if.then, label %if.end

if.then:                                          ; preds = %for.body13
  call void @abort() #2
  unreachable

if.end:                                           ; preds = %for.body13
  br label %for.inc19

for.inc19:                                        ; preds = %if.end
  %13 = load i32, ptr %k, align 4
  %inc20 = add nsw i32 %13, 1
  store i32 %inc20, ptr %k, align 4
  br label %for.cond10, !llvm.loop !9

for.end21:                                        ; preds = %for.cond10
  %14 = load i32, ptr %start, align 4
  %add = add nsw i32 %14, 1
  store i32 %add, ptr %k, align 4
  br label %for.cond22

for.cond22:                                       ; preds = %for.inc33, %for.end21
  %15 = load i32, ptr %k, align 4
  %16 = load i32, ptr %end, align 4
  %cmp23 = icmp sle i32 %15, %16
  br i1 %cmp23, label %for.body25, label %for.end35

for.body25:                                       ; preds = %for.cond22
  %17 = load i32, ptr %k, align 4
  %idxprom26 = sext i32 %17 to i64
  %arrayidx27 = getelementptr inbounds [5 x i64], ptr %a, i64 0, i64 %idxprom26
  %18 = load i64, ptr %arrayidx27, align 8
  %19 = load i32, ptr %k, align 4
  %sub = sub nsw i32 %19, 1
  %conv28 = sext i32 %sub to i64
  %cmp29 = icmp ne i64 %18, %conv28
  br i1 %cmp29, label %if.then31, label %if.end32

if.then31:                                        ; preds = %for.body25
  call void @abort() #2
  unreachable

if.end32:                                         ; preds = %for.body25
  br label %for.inc33

for.inc33:                                        ; preds = %if.end32
  %20 = load i32, ptr %k, align 4
  %inc34 = add nsw i32 %20, 1
  store i32 %inc34, ptr %k, align 4
  br label %for.cond22, !llvm.loop !10

for.end35:                                        ; preds = %for.cond22
  %21 = load i32, ptr %end, align 4
  %add36 = add nsw i32 %21, 1
  store i32 %add36, ptr %k, align 4
  br label %for.cond37

for.cond37:                                       ; preds = %for.inc48, %for.end35
  %22 = load i32, ptr %k, align 4
  %cmp38 = icmp slt i32 %22, 5
  br i1 %cmp38, label %for.body40, label %for.end50

for.body40:                                       ; preds = %for.cond37
  %23 = load i32, ptr %k, align 4
  %idxprom41 = sext i32 %23 to i64
  %arrayidx42 = getelementptr inbounds [5 x i64], ptr %a, i64 0, i64 %idxprom41
  %24 = load i64, ptr %arrayidx42, align 8
  %25 = load i32, ptr %k, align 4
  %conv43 = sext i32 %25 to i64
  %cmp44 = icmp ne i64 %24, %conv43
  br i1 %cmp44, label %if.then46, label %if.end47

if.then46:                                        ; preds = %for.body40
  call void @abort() #2
  unreachable

if.end47:                                         ; preds = %for.body40
  br label %for.inc48

for.inc48:                                        ; preds = %if.end47
  %26 = load i32, ptr %k, align 4
  %inc49 = add nsw i32 %26, 1
  store i32 %inc49, ptr %k, align 4
  br label %for.cond37, !llvm.loop !11

for.end50:                                        ; preds = %for.cond37
  br label %for.inc51

for.inc51:                                        ; preds = %for.end50
  %27 = load i32, ptr %end, align 4
  %inc52 = add nsw i32 %27, 1
  store i32 %inc52, ptr %end, align 4
  br label %for.cond1, !llvm.loop !12

for.end53:                                        ; preds = %for.cond1
  br label %for.inc54

for.inc54:                                        ; preds = %for.end53
  %28 = load i32, ptr %start, align 4
  %inc55 = add nsw i32 %28, 1
  store i32 %inc55, ptr %start, align 4
  br label %for.cond, !llvm.loop !13

for.end56:                                        ; preds = %for.cond
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
!13 = distinct !{!13, !7}
