; 149013210985783843192208127133483253285
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/149013210985783843192208127133483253285_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/149013210985783843192208127133483253285.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@array = dso_local global [16 x i32] zeroinitializer, align 16
@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @swap(i32 noundef %a, i32 noundef %b) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %a, ptr %a.addr, align 4
  store i32 %b, ptr %b.addr, align 4
  %0 = load i32, ptr %a.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [16 x i32], ptr @array, i64 0, i64 %idxprom
  %1 = load i32, ptr %arrayidx, align 4
  store i32 %1, ptr %tmp, align 4
  %cmp = icmp ugt ptr @array, inttoptr (i64 5 to ptr)
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, ptr %tmp, align 4
  %3 = load i32, ptr %b.addr, align 4
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [16 x i32], ptr @array, i64 0, i64 %idxprom1
  store i32 %2, ptr %arrayidx2, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @partition(i32 noundef %left, i32 noundef %right) #0 {
entry:
  %left.addr = alloca i32, align 4
  %right.addr = alloca i32, align 4
  %pivotIndex = alloca i32, align 4
  %pivotValue = alloca i32, align 4
  %index = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %left, ptr %left.addr, align 4
  store i32 %right, ptr %right.addr, align 4
  %0 = load i32, ptr %left.addr, align 4
  store i32 %0, ptr %pivotIndex, align 4
  %1 = load i32, ptr %pivotIndex, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [16 x i32], ptr @array, i64 0, i64 %idxprom
  %2 = load i32, ptr %arrayidx, align 4
  store i32 %2, ptr %pivotValue, align 4
  %3 = load i32, ptr %left.addr, align 4
  store i32 %3, ptr %index, align 4
  %4 = load i32, ptr %pivotIndex, align 4
  %5 = load i32, ptr %right.addr, align 4
  call void @swap(i32 noundef %4, i32 noundef %5)
  %6 = load i32, ptr %left.addr, align 4
  store i32 %6, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, ptr %i, align 4
  %8 = load i32, ptr %right.addr, align 4
  %cmp = icmp slt i32 %7, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, ptr %i, align 4
  %idxprom1 = sext i32 %9 to i64
  %arrayidx2 = getelementptr inbounds [16 x i32], ptr @array, i64 0, i64 %idxprom1
  %10 = load i32, ptr %arrayidx2, align 4
  %11 = load i32, ptr %pivotValue, align 4
  %cmp3 = icmp slt i32 %10, %11
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %12 = load i32, ptr %i, align 4
  %13 = load i32, ptr %index, align 4
  call void @swap(i32 noundef %12, i32 noundef %13)
  %14 = load i32, ptr %index, align 4
  %add = add nsw i32 %14, 1
  store i32 %add, ptr %index, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %15 = load i32, ptr %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %16 = load i32, ptr %right.addr, align 4
  %17 = load i32, ptr %index, align 4
  call void @swap(i32 noundef %16, i32 noundef %17)
  %18 = load i32, ptr %index, align 4
  ret i32 %18
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @quicksort(i32 noundef %left, i32 noundef %right) #0 {
entry:
  %left.addr = alloca i32, align 4
  %right.addr = alloca i32, align 4
  %index = alloca i32, align 4
  store i32 %left, ptr %left.addr, align 4
  store i32 %right, ptr %right.addr, align 4
  %0 = load i32, ptr %left.addr, align 4
  %1 = load i32, ptr %right.addr, align 4
  %cmp = icmp sge i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %left.addr, align 4
  %3 = load i32, ptr %right.addr, align 4
  %call = call i32 @partition(i32 noundef %2, i32 noundef %3)
  store i32 %call, ptr %index, align 4
  %4 = load i32, ptr %left.addr, align 4
  %5 = load i32, ptr %index, align 4
  %sub = sub nsw i32 %5, 1
  call void @quicksort(i32 noundef %4, i32 noundef %sub)
  %6 = load i32, ptr %index, align 4
  %add = add nsw i32 %6, 1
  %7 = load i32, ptr %right.addr, align 4
  call void @quicksort(i32 noundef %add, i32 noundef %7)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 62, ptr @array, align 16
  store i32 83, ptr getelementptr inbounds ([16 x i32], ptr @array, i64 0, i64 1), align 4
  store i32 4, ptr getelementptr inbounds ([16 x i32], ptr @array, i64 0, i64 2), align 8
  store i32 89, ptr getelementptr inbounds ([16 x i32], ptr @array, i64 0, i64 3), align 4
  store i32 36, ptr getelementptr inbounds ([16 x i32], ptr @array, i64 0, i64 4), align 16
  store i32 21, ptr getelementptr inbounds ([16 x i32], ptr @array, i64 0, i64 5), align 4
  store i32 74, ptr getelementptr inbounds ([16 x i32], ptr @array, i64 0, i64 6), align 8
  store i32 37, ptr getelementptr inbounds ([16 x i32], ptr @array, i64 0, i64 7), align 4
  store i32 65, ptr getelementptr inbounds ([16 x i32], ptr @array, i64 0, i64 8), align 16
  store i32 33, ptr getelementptr inbounds ([16 x i32], ptr @array, i64 0, i64 9), align 4
  store i32 96, ptr getelementptr inbounds ([16 x i32], ptr @array, i64 0, i64 10), align 8
  store i32 38, ptr getelementptr inbounds ([16 x i32], ptr @array, i64 0, i64 11), align 4
  store i32 53, ptr getelementptr inbounds ([16 x i32], ptr @array, i64 0, i64 12), align 16
  store i32 16, ptr getelementptr inbounds ([16 x i32], ptr @array, i64 0, i64 13), align 4
  store i32 74, ptr getelementptr inbounds ([16 x i32], ptr @array, i64 0, i64 14), align 8
  store i32 55, ptr getelementptr inbounds ([16 x i32], ptr @array, i64 0, i64 15), align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [16 x i32], ptr @array, i64 0, i64 %idxprom
  %2 = load i32, ptr %arrayidx, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %2)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  call void @quicksort(i32 noundef 0, i32 noundef 15)
  store i32 0, ptr %i, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc8, %for.end
  %4 = load i32, ptr %i, align 4
  %cmp3 = icmp slt i32 %4, 16
  br i1 %cmp3, label %for.body4, label %for.end10

for.body4:                                        ; preds = %for.cond2
  %5 = load i32, ptr %i, align 4
  %idxprom5 = sext i32 %5 to i64
  %arrayidx6 = getelementptr inbounds [16 x i32], ptr @array, i64 0, i64 %idxprom5
  %6 = load i32, ptr %arrayidx6, align 4
  %call7 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %6)
  br label %for.inc8

for.inc8:                                         ; preds = %for.body4
  %7 = load i32, ptr %i, align 4
  %inc9 = add nsw i32 %7, 1
  store i32 %inc9, ptr %i, align 4
  br label %for.cond2, !llvm.loop !9

for.end10:                                        ; preds = %for.cond2
  %call11 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  ret i32 0
}

declare i32 @printf(ptr noundef, ...) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
