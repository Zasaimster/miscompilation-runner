; 104226953643886941615300898485547125624
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/104226953643886941615300898485547125624.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/104226953643886941615300898485547125624.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { [3 x i32], [1 x [2 x double]] }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f(ptr noundef %x, ptr noundef %y) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca ptr, align 8
  %y.addr = alloca ptr, align 8
  store ptr %x, ptr %x.addr, align 8
  store ptr %y, ptr %y.addr, align 8
  %0 = load ptr, ptr %x.addr, align 8
  %1 = load ptr, ptr %y.addr, align 8
  %cmp = icmp eq ptr %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #3
  unreachable

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %retval, align 4
  ret i32 %2
}

; Function Attrs: noreturn nounwind
declare void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %tp = alloca [4 x [2 x %struct.anon]], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %ki = alloca i32, align 4
  %kj = alloca i32, align 4
  %mi = alloca i32, align 4
  %mj = alloca i32, align 4
  %bdm = alloca [4 x [2 x [4 x [2 x float]]]], align 16
  store i32 0, ptr %retval, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc58, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %for.body, label %for.end60

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  store i32 %1, ptr %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc55, %for.body
  %2 = load i32, ptr %j, align 4
  %cmp2 = icmp slt i32 %2, 4
  br i1 %cmp2, label %for.body3, label %for.end57

for.body3:                                        ; preds = %for.cond1
  store i32 0, ptr %ki, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc52, %for.body3
  %3 = load i32, ptr %ki, align 4
  %cmp5 = icmp slt i32 %3, 2
  br i1 %cmp5, label %for.body6, label %for.end54

for.body6:                                        ; preds = %for.cond4
  store i32 0, ptr %kj, align 4
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc49, %for.body6
  %4 = load i32, ptr %kj, align 4
  %cmp8 = icmp slt i32 %4, 2
  br i1 %cmp8, label %for.body9, label %for.end51

for.body9:                                        ; preds = %for.cond7
  %5 = load i32, ptr %j, align 4
  %6 = load i32, ptr %i, align 4
  %cmp10 = icmp eq i32 %5, %6
  br i1 %cmp10, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body9
  %7 = load i32, ptr %ki, align 4
  %8 = load i32, ptr %kj, align 4
  %cmp11 = icmp eq i32 %7, %8
  br i1 %cmp11, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %9 = load i32, ptr %i, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds [4 x [2 x [4 x [2 x float]]]], ptr %bdm, i64 0, i64 %idxprom
  %10 = load i32, ptr %ki, align 4
  %idxprom12 = sext i32 %10 to i64
  %arrayidx13 = getelementptr inbounds [2 x [4 x [2 x float]]], ptr %arrayidx, i64 0, i64 %idxprom12
  %11 = load i32, ptr %j, align 4
  %idxprom14 = sext i32 %11 to i64
  %arrayidx15 = getelementptr inbounds [4 x [2 x float]], ptr %arrayidx13, i64 0, i64 %idxprom14
  %12 = load i32, ptr %kj, align 4
  %idxprom16 = sext i32 %12 to i64
  %arrayidx17 = getelementptr inbounds [2 x float], ptr %arrayidx15, i64 0, i64 %idxprom16
  store float 1.000000e+03, ptr %arrayidx17, align 4
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %for.body9
  store i32 0, ptr %mi, align 4
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc38, %if.else
  %13 = load i32, ptr %mi, align 4
  %cmp19 = icmp slt i32 %13, 1
  br i1 %cmp19, label %for.body20, label %for.end40

for.body20:                                       ; preds = %for.cond18
  store i32 0, ptr %mj, align 4
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc, %for.body20
  %14 = load i32, ptr %mj, align 4
  %cmp22 = icmp slt i32 %14, 1
  br i1 %cmp22, label %for.body23, label %for.end

for.body23:                                       ; preds = %for.cond21
  %15 = load i32, ptr %i, align 4
  %idxprom24 = sext i32 %15 to i64
  %arrayidx25 = getelementptr inbounds [4 x [2 x %struct.anon]], ptr %tp, i64 0, i64 %idxprom24
  %16 = load i32, ptr %ki, align 4
  %idxprom26 = sext i32 %16 to i64
  %arrayidx27 = getelementptr inbounds [2 x %struct.anon], ptr %arrayidx25, i64 0, i64 %idxprom26
  %x = getelementptr inbounds nuw %struct.anon, ptr %arrayidx27, i32 0, i32 1
  %17 = load i32, ptr %mi, align 4
  %idxprom28 = sext i32 %17 to i64
  %arrayidx29 = getelementptr inbounds [1 x [2 x double]], ptr %x, i64 0, i64 %idxprom28
  %arraydecay = getelementptr inbounds [2 x double], ptr %arrayidx29, i64 0, i64 0
  %18 = load i32, ptr %j, align 4
  %idxprom30 = sext i32 %18 to i64
  %arrayidx31 = getelementptr inbounds [4 x [2 x %struct.anon]], ptr %tp, i64 0, i64 %idxprom30
  %19 = load i32, ptr %kj, align 4
  %idxprom32 = sext i32 %19 to i64
  %arrayidx33 = getelementptr inbounds [2 x %struct.anon], ptr %arrayidx31, i64 0, i64 %idxprom32
  %x34 = getelementptr inbounds nuw %struct.anon, ptr %arrayidx33, i32 0, i32 1
  %20 = load i32, ptr %mj, align 4
  %idxprom35 = sext i32 %20 to i64
  %arrayidx36 = getelementptr inbounds [1 x [2 x double]], ptr %x34, i64 0, i64 %idxprom35
  %arraydecay37 = getelementptr inbounds [2 x double], ptr %arrayidx36, i64 0, i64 0
  %call = call i32 @f(ptr noundef %arraydecay, ptr noundef %arraydecay37)
  br label %for.inc

for.inc:                                          ; preds = %for.body23
  %21 = load i32, ptr %mj, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, ptr %mj, align 4
  br label %for.cond21, !llvm.loop !6

for.end:                                          ; preds = %for.cond21
  br label %for.inc38

for.inc38:                                        ; preds = %for.end
  %22 = load i32, ptr %mi, align 4
  %inc39 = add nsw i32 %22, 1
  store i32 %inc39, ptr %mi, align 4
  br label %for.cond18, !llvm.loop !8

for.end40:                                        ; preds = %for.cond18
  %23 = load i32, ptr %i, align 4
  %idxprom41 = sext i32 %23 to i64
  %arrayidx42 = getelementptr inbounds [4 x [2 x [4 x [2 x float]]]], ptr %bdm, i64 0, i64 %idxprom41
  %24 = load i32, ptr %ki, align 4
  %idxprom43 = sext i32 %24 to i64
  %arrayidx44 = getelementptr inbounds [2 x [4 x [2 x float]]], ptr %arrayidx42, i64 0, i64 %idxprom43
  %25 = load i32, ptr %j, align 4
  %idxprom45 = sext i32 %25 to i64
  %arrayidx46 = getelementptr inbounds [4 x [2 x float]], ptr %arrayidx44, i64 0, i64 %idxprom45
  %26 = load i32, ptr %kj, align 4
  %idxprom47 = sext i32 %26 to i64
  %arrayidx48 = getelementptr inbounds [2 x float], ptr %arrayidx46, i64 0, i64 %idxprom47
  store float 1.000000e+03, ptr %arrayidx48, align 4
  br label %if.end

if.end:                                           ; preds = %for.end40, %if.then
  br label %for.inc49

for.inc49:                                        ; preds = %if.end
  %27 = load i32, ptr %kj, align 4
  %inc50 = add nsw i32 %27, 1
  store i32 %inc50, ptr %kj, align 4
  br label %for.cond7, !llvm.loop !9

for.end51:                                        ; preds = %for.cond7
  br label %for.inc52

for.inc52:                                        ; preds = %for.end51
  %28 = load i32, ptr %ki, align 4
  %inc53 = add nsw i32 %28, 1
  store i32 %inc53, ptr %ki, align 4
  br label %for.cond4, !llvm.loop !10

for.end54:                                        ; preds = %for.cond4
  br label %for.inc55

for.inc55:                                        ; preds = %for.end54
  %29 = load i32, ptr %j, align 4
  %inc56 = add nsw i32 %29, 1
  store i32 %inc56, ptr %j, align 4
  br label %for.cond1, !llvm.loop !11

for.end57:                                        ; preds = %for.cond1
  br label %for.inc58

for.inc58:                                        ; preds = %for.end57
  %30 = load i32, ptr %i, align 4
  %inc59 = add nsw i32 %30, 1
  store i32 %inc59, ptr %i, align 4
  br label %for.cond, !llvm.loop !12

for.end60:                                        ; preds = %for.cond
  call void @exit(i32 noundef 0) #4
  unreachable
}

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
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
