; 155857994269536599749967965971689391022
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/155857994269536599749967965971689391022_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/155857994269536599749967965971689391022.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %Count = alloca i32, align 4
  %Array = alloca [10 x i32], align 16
  store i32 0, ptr %retval, align 4
  %0 = load i32, ptr %Count, align 4
  %sub = sub nsw i32 %0, 1
  store i32 %sub, ptr %Count, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %Count, align 4
  %cmp = icmp sle i32 %1, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %Count, align 4
  %3 = load i32, ptr %Count, align 4
  %mul = mul nsw i32 %2, %3
  %4 = load i32, ptr %Count, align 4
  %sub1 = sub nsw i32 %4, 1
  %idxprom = sext i32 %sub1 to i64
  %arrayidx = getelementptr inbounds [10 x i32], ptr %Array, i64 0, i64 %idxprom
  store i32 %mul, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, ptr %Count, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %Count, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %Count, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc7, %for.end
  %6 = load i32, ptr %Count, align 4
  %cmp3 = icmp slt i32 %6, 10
  br i1 %cmp3, label %for.body4, label %for.end9

for.body4:                                        ; preds = %for.cond2
  %7 = load i32, ptr %Count, align 4
  %idxprom5 = sext i32 %7 to i64
  %arrayidx6 = getelementptr inbounds [10 x i32], ptr %Array, i64 0, i64 %idxprom5
  %8 = load i32, ptr %arrayidx6, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %8)
  br label %for.inc7

for.inc7:                                         ; preds = %for.body4
  %9 = load i32, ptr %Count, align 4
  %inc8 = add nsw i32 %9, 1
  store i32 %inc8, ptr %Count, align 4
  br label %for.cond2, !llvm.loop !8

for.end9:                                         ; preds = %for.cond2
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
