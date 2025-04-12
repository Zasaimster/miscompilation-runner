; 181221584073440605217172607858748294596
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/181221584073440605217172607858748294596_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/181221584073440605217172607858748294596.c"
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
  %saved_stack = alloca ptr, align 8
  %__vla_expr0 = alloca i64, align 8
  store i32 0, ptr %retval, align 4
  %0 = load i32, ptr %i, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, ptr %i, align 4
  %1 = zext i32 %0 to i64
  %2 = call ptr @llvm.stacksave.p0()
  store ptr %2, ptr %saved_stack, align 8
  %3 = mul nuw i64 8, %1
  %vla = alloca [8 x [2 x float]], i64 %3, align 16
  store i64 %1, ptr %__vla_expr0, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc45, %entry
  %4 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %4, 8
  br i1 %cmp, label %for.body, label %for.end47

for.body:                                         ; preds = %for.cond
  %5 = load i32, ptr %i, align 4
  store i32 %5, ptr %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc42, %for.body
  %6 = load i32, ptr %j, align 4
  %cmp2 = icmp slt i32 %6, 8
  br i1 %cmp2, label %for.body3, label %for.end44

for.body3:                                        ; preds = %for.cond1
  store i32 0, ptr %k, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc39, %for.body3
  %7 = load i32, ptr %k, align 4
  %cmp5 = icmp slt i32 %7, 2
  br i1 %cmp5, label %for.body6, label %for.end41

for.body6:                                        ; preds = %for.cond4
  store i32 0, ptr %l, align 4
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc, %for.body6
  %8 = load i32, ptr %l, align 4
  %cmp8 = icmp slt i32 %8, 2
  br i1 %cmp8, label %for.body9, label %for.end

for.body9:                                        ; preds = %for.cond7
  %9 = load i32, ptr %i, align 4
  %10 = load i32, ptr %j, align 4
  %cmp10 = icmp eq i32 %9, %10
  br i1 %cmp10, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body9
  %11 = load i32, ptr %k, align 4
  %12 = load i32, ptr %l, align 4
  %cmp11 = icmp eq i32 %11, %12
  br i1 %cmp11, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %13 = load i32, ptr %i, align 4
  %idxprom = sext i32 %13 to i64
  %14 = mul nsw i64 %idxprom, %1
  %arrayidx = getelementptr inbounds [8 x [2 x float]], ptr %vla, i64 %14
  %15 = load i32, ptr %k, align 4
  %idxprom12 = sext i32 %15 to i64
  %arrayidx13 = getelementptr inbounds [8 x [2 x float]], ptr %arrayidx, i64 %idxprom12
  %16 = load i32, ptr %j, align 4
  %idxprom14 = sext i32 %16 to i64
  %arrayidx15 = getelementptr inbounds [8 x [2 x float]], ptr %arrayidx13, i64 0, i64 %idxprom14
  %17 = load i32, ptr %l, align 4
  %idxprom16 = sext i32 %17 to i64
  %arrayidx17 = getelementptr inbounds [2 x float], ptr %arrayidx15, i64 0, i64 %idxprom16
  store float 0x3FE99999A0000000, ptr %arrayidx17, align 4
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %for.body9
  %18 = load i32, ptr %i, align 4
  %idxprom18 = sext i32 %18 to i64
  %19 = mul nsw i64 %idxprom18, %1
  %arrayidx19 = getelementptr inbounds [8 x [2 x float]], ptr %vla, i64 %19
  %20 = load i32, ptr %k, align 4
  %idxprom20 = sext i32 %20 to i64
  %arrayidx21 = getelementptr inbounds [8 x [2 x float]], ptr %arrayidx19, i64 %idxprom20
  %21 = load i32, ptr %j, align 4
  %idxprom22 = sext i32 %21 to i64
  %arrayidx23 = getelementptr inbounds [8 x [2 x float]], ptr %arrayidx21, i64 0, i64 %idxprom22
  %22 = load i32, ptr %l, align 4
  %idxprom24 = sext i32 %22 to i64
  %arrayidx25 = getelementptr inbounds [2 x float], ptr %arrayidx23, i64 0, i64 %idxprom24
  store float 0x3FE99999A0000000, ptr %arrayidx25, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %23 = load i32, ptr %i, align 4
  %idxprom26 = sext i32 %23 to i64
  %24 = mul nsw i64 %idxprom26, %1
  %arrayidx27 = getelementptr inbounds [8 x [2 x float]], ptr %vla, i64 %24
  %25 = load i32, ptr %k, align 4
  %idxprom28 = sext i32 %25 to i64
  %arrayidx29 = getelementptr inbounds [8 x [2 x float]], ptr %arrayidx27, i64 %idxprom28
  %26 = load i32, ptr %j, align 4
  %idxprom30 = sext i32 %26 to i64
  %arrayidx31 = getelementptr inbounds [8 x [2 x float]], ptr %arrayidx29, i64 0, i64 %idxprom30
  %27 = load i32, ptr %l, align 4
  %idxprom32 = sext i32 %27 to i64
  %arrayidx33 = getelementptr inbounds [2 x float], ptr %arrayidx31, i64 0, i64 %idxprom32
  %28 = load float, ptr %arrayidx33, align 4
  %conv = fpext float %28 to double
  %cmp34 = fcmp olt double %conv, 0.000000e+00
  br i1 %cmp34, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.end
  call void @abort() #4
  unreachable

if.end37:                                         ; preds = %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end37
  %29 = load i32, ptr %l, align 4
  %inc38 = add nsw i32 %29, 1
  store i32 %inc38, ptr %l, align 4
  br label %for.cond7, !llvm.loop !6

for.end:                                          ; preds = %for.cond7
  br label %for.inc39

for.inc39:                                        ; preds = %for.end
  %30 = load i32, ptr %k, align 4
  %inc40 = add nsw i32 %30, 1
  store i32 %inc40, ptr %k, align 4
  br label %for.cond4, !llvm.loop !8

for.end41:                                        ; preds = %for.cond4
  br label %for.inc42

for.inc42:                                        ; preds = %for.end41
  %31 = load i32, ptr %j, align 4
  %inc43 = add nsw i32 %31, 1
  store i32 %inc43, ptr %j, align 4
  br label %for.cond1, !llvm.loop !9

for.end44:                                        ; preds = %for.cond1
  br label %for.inc45

for.inc45:                                        ; preds = %for.end44
  %32 = load i32, ptr %i, align 4
  %inc46 = add nsw i32 %32, 1
  store i32 %inc46, ptr %i, align 4
  br label %for.cond, !llvm.loop !10

for.end47:                                        ; preds = %for.cond
  call void @exit(i32 noundef 0) #5
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #1

; Function Attrs: noreturn nounwind
declare void @abort() #2

; Function Attrs: noreturn
declare void @exit(i32 noundef) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }
attributes #5 = { noreturn }

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
