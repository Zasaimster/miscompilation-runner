; 132331492744350068318055361167284465315
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/132331492744350068318055361167284465315.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/132331492744350068318055361167284465315.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@x = dso_local global [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %niterations = alloca i32, align 4
  %i = alloca i32, align 4
  %i1 = alloca i32, align 4
  %mi = alloca i32, align 4
  %max = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 0, ptr %niterations, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end14, %entry
  store i32 0, ptr %max, align 4
  store i32 0, ptr %i1, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.cond
  %0 = load i32, ptr %i1, align 4
  %cmp = icmp slt i32 %0, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond2
  %1 = load i32, ptr %i1, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [10 x i32], ptr @x, i64 0, i64 %idxprom
  %2 = load i32, ptr %arrayidx, align 4
  %3 = load i32, ptr %max, align 4
  %cmp3 = icmp sgt i32 %2, %3
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %4 = load i32, ptr %i1, align 4
  %idxprom4 = sext i32 %4 to i64
  %arrayidx5 = getelementptr inbounds [10 x i32], ptr @x, i64 0, i64 %idxprom4
  %5 = load i32, ptr %arrayidx5, align 4
  store i32 %5, ptr %max, align 4
  %6 = load i32, ptr %i1, align 4
  store i32 %6, ptr %mi, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load i32, ptr %i1, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr %i1, align 4
  br label %for.cond2, !llvm.loop !6

for.end:                                          ; preds = %for.cond2
  %8 = load i32, ptr %max, align 4
  %cmp6 = icmp eq i32 %8, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %for.end
  br label %for.end15

if.end8:                                          ; preds = %for.end
  %9 = load i32, ptr %mi, align 4
  %idxprom9 = sext i32 %9 to i64
  %arrayidx10 = getelementptr inbounds [10 x i32], ptr @x, i64 0, i64 %idxprom9
  store i32 0, ptr %arrayidx10, align 4
  %10 = load i32, ptr %niterations, align 4
  %inc11 = add nsw i32 %10, 1
  store i32 %inc11, ptr %niterations, align 4
  %11 = load i32, ptr %niterations, align 4
  %cmp12 = icmp sgt i32 %11, 10
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end8
  call void @abort() #3
  unreachable

if.end14:                                         ; preds = %if.end8
  br label %for.cond

for.end15:                                        ; preds = %if.then7
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
