; 188664595938630598821898500797489922932
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/188664595938630598821898500797489922932.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/188664595938630598821898500797489922932.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"%d: %d\0A\00", align 1
@__const.main.Array2 = private unnamed_addr constant [10 x i32] [i32 12, i32 34, i32 56, i32 78, i32 90, i32 123, i32 456, i32 789, i32 8642, i32 9753], align 16

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %Count = alloca i32, align 4
  %Array = alloca [0 x i32], align 4
  %Array2 = alloca [10 x i32], align 16
  store i32 0, ptr %retval, align 4
  store i32 0, ptr %Count, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %Count, align 4
  %cmp = icmp slt i32 %0, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %Count, align 4
  %2 = load i32, ptr %Count, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [0 x i32], ptr %Array, i64 0, i64 %idxprom
  %3 = load i32, ptr %arrayidx, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %1, i32 noundef %3)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, ptr %Count, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %Count, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %Array2, ptr align 16 @__const.main.Array2, i64 40, i1 false)
  store i32 0, ptr %Count, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc7, %for.end
  %5 = load i32, ptr %Count, align 4
  %cmp2 = icmp slt i32 %5, 10
  br i1 %cmp2, label %for.body3, label %for.end9

for.body3:                                        ; preds = %for.cond1
  %6 = load i32, ptr %Count, align 4
  %7 = load i32, ptr %Count, align 4
  %idxprom4 = sext i32 %7 to i64
  %arrayidx5 = getelementptr inbounds [10 x i32], ptr %Array2, i64 0, i64 %idxprom4
  %8 = load i32, ptr %arrayidx5, align 4
  %call6 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %6, i32 noundef %8)
  br label %for.inc7

for.inc7:                                         ; preds = %for.body3
  %9 = load i32, ptr %Count, align 4
  %inc8 = add nsw i32 %9, 1
  store i32 %inc8, ptr %Count, align 4
  br label %for.cond1, !llvm.loop !8

for.end9:                                         ; preds = %for.cond1
  ret i32 0
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

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
