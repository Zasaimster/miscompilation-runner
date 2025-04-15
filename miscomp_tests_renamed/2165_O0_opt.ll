; 189233031680712061580348944852596224679
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/189233031680712061580348944852596224679_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/189233031680712061580348944852596224679.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  %x = alloca [5 x [0 x [8 x [2 x float]]]], align 4
  store i32 0, ptr %retval, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc44, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 8
  br i1 %cmp, label %for.body, label %for.end46

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  store i32 %1, ptr %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc41, %for.body
  %2 = load i32, ptr %j, align 4
  %cmp2 = icmp slt i32 %2, 8
  br i1 %cmp2, label %for.body3, label %for.end43

for.body3:                                        ; preds = %for.cond1
  store i32 0, ptr %k, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc38, %for.body3
  %3 = load i32, ptr %k, align 4
  %cmp5 = icmp slt i32 %3, 2
  br i1 %cmp5, label %for.body6, label %for.end40

for.body6:                                        ; preds = %for.cond4
  store i32 0, ptr %l, align 4
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc, %for.body6
  %4 = load i32, ptr %l, align 4
  %cmp8 = icmp slt i32 %4, 2
  br i1 %cmp8, label %for.body9, label %for.end

for.body9:                                        ; preds = %for.cond7
  %5 = load i32, ptr %i, align 4
  %6 = load i32, ptr %j, align 4
  %cmp10 = icmp eq i32 %5, %6
  br i1 %cmp10, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body9
  %7 = load i32, ptr %k, align 4
  %8 = load i32, ptr %l, align 4
  %cmp11 = icmp eq i32 %7, %8
  br i1 %cmp11, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %9 = load i32, ptr %i, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds [5 x [0 x [8 x [2 x float]]]], ptr %x, i64 0, i64 %idxprom
  %10 = load i32, ptr %k, align 4
  %idxprom12 = sext i32 %10 to i64
  %arrayidx13 = getelementptr inbounds [0 x [8 x [2 x float]]], ptr %arrayidx, i64 0, i64 %idxprom12
  %11 = load i32, ptr %j, align 4
  %idxprom14 = sext i32 %11 to i64
  %arrayidx15 = getelementptr inbounds [8 x [2 x float]], ptr %arrayidx13, i64 0, i64 %idxprom14
  %12 = load i32, ptr %l, align 4
  %idxprom16 = sext i32 %12 to i64
  %arrayidx17 = getelementptr inbounds [2 x float], ptr %arrayidx15, i64 0, i64 %idxprom16
  store float 0x3FE99999A0000000, ptr %arrayidx17, align 4
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %for.body9
  %13 = load i32, ptr %i, align 4
  %idxprom18 = sext i32 %13 to i64
  %arrayidx19 = getelementptr inbounds [5 x [0 x [8 x [2 x float]]]], ptr %x, i64 0, i64 %idxprom18
  %14 = load i32, ptr %k, align 4
  %idxprom20 = sext i32 %14 to i64
  %arrayidx21 = getelementptr inbounds [0 x [8 x [2 x float]]], ptr %arrayidx19, i64 0, i64 %idxprom20
  %15 = load i32, ptr %j, align 4
  %idxprom22 = sext i32 %15 to i64
  %arrayidx23 = getelementptr inbounds [8 x [2 x float]], ptr %arrayidx21, i64 0, i64 %idxprom22
  %16 = load i32, ptr %l, align 4
  %idxprom24 = sext i32 %16 to i64
  %arrayidx25 = getelementptr inbounds [2 x float], ptr %arrayidx23, i64 0, i64 %idxprom24
  store float 0x3FE99999A0000000, ptr %arrayidx25, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %17 = load i32, ptr %i, align 4
  %idxprom26 = sext i32 %17 to i64
  %arrayidx27 = getelementptr inbounds [5 x [0 x [8 x [2 x float]]]], ptr %x, i64 0, i64 %idxprom26
  %18 = load i32, ptr %k, align 4
  %idxprom28 = sext i32 %18 to i64
  %arrayidx29 = getelementptr inbounds [0 x [8 x [2 x float]]], ptr %arrayidx27, i64 0, i64 %idxprom28
  %19 = load i32, ptr %j, align 4
  %idxprom30 = sext i32 %19 to i64
  %arrayidx31 = getelementptr inbounds [8 x [2 x float]], ptr %arrayidx29, i64 0, i64 %idxprom30
  %20 = load i32, ptr %l, align 4
  %idxprom32 = sext i32 %20 to i64
  %arrayidx33 = getelementptr inbounds [2 x float], ptr %arrayidx31, i64 0, i64 %idxprom32
  %21 = load float, ptr %arrayidx33, align 4
  %conv = fpext float %21 to double
  %cmp34 = fcmp olt double %conv, 0.000000e+00
  br i1 %cmp34, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.end
  call void @abort() #3
  unreachable

if.end37:                                         ; preds = %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end37
  %22 = load i32, ptr %l, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, ptr %l, align 4
  br label %for.cond7, !llvm.loop !6

for.end:                                          ; preds = %for.cond7
  br label %for.inc38

for.inc38:                                        ; preds = %for.end
  %23 = load i32, ptr %k, align 4
  %inc39 = add nsw i32 %23, 1
  store i32 %inc39, ptr %k, align 4
  br label %for.cond4, !llvm.loop !8

for.end40:                                        ; preds = %for.cond4
  br label %for.inc41

for.inc41:                                        ; preds = %for.end40
  %24 = load i32, ptr %j, align 4
  %inc42 = add nsw i32 %24, 1
  store i32 %inc42, ptr %j, align 4
  br label %for.cond1, !llvm.loop !9

for.end43:                                        ; preds = %for.cond1
  br label %for.inc44

for.inc44:                                        ; preds = %for.end43
  %25 = load i32, ptr %i, align 4
  %inc45 = add nsw i32 %25, 1
  store i32 %inc45, ptr %i, align 4
  br label %for.cond, !llvm.loop !10

for.end46:                                        ; preds = %for.cond
  call void @exit(i32 noundef 0) #4
  unreachable
}

; Function Attrs: noreturn nounwind
declare void @abort() #1

; Function Attrs: noreturn
declare void @exit(i32 noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }
attributes #4 = { noreturn }

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
