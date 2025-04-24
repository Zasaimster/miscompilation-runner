; 192558498450279864892304811664428821134
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/192558498450279864892304811664428821134.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/192558498450279864892304811664428821134.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"Hello, World!\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @foo() #0 {
entry:
  %saved_stack = alloca ptr, align 8
  %__vla_expr0 = alloca i64, align 8
  %a = alloca ptr, align 8
  %det = alloca i32, align 4
  %i = alloca i32, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %0 = zext i32 %call to i64
  %1 = call ptr @llvm.stacksave.p0()
  store ptr %1, ptr %saved_stack, align 8
  %vla = alloca [1 x i32], i64 %0, align 16
  store i64 %0, ptr %__vla_expr0, align 8
  store ptr %vla, ptr %a, align 8
  store i32 0, ptr %det, align 4
  %arrayidx = getelementptr inbounds [1 x i32], ptr %vla, i64 0
  %arrayidx1 = getelementptr inbounds [1 x i32], ptr %arrayidx, i64 0, i64 0
  store i32 1, ptr %arrayidx1, align 16
  %arrayidx2 = getelementptr inbounds [1 x i32], ptr %vla, i64 1
  %arrayidx3 = getelementptr inbounds [1 x i32], ptr %arrayidx2, i64 0, i64 0
  store i32 2, ptr %arrayidx3, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %2, 2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %a, align 8
  %4 = load i32, ptr %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx4 = getelementptr inbounds [1 x i32], ptr %3, i64 %idxprom
  %arrayidx5 = getelementptr inbounds [1 x i32], ptr %arrayidx4, i64 0, i64 0
  %5 = load i32, ptr %arrayidx5, align 4
  %6 = load i32, ptr %det, align 4
  %add = add nsw i32 %6, %5
  store i32 %add, ptr %det, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, ptr %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %8 = load i32, ptr %det, align 4
  %9 = load ptr, ptr %saved_stack, align 8
  call void @llvm.stackrestore.p0(ptr %9)
  ret i32 %8
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call i32 @foo()
  %cmp = icmp ne i32 %call, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #4
  unreachable

if.end:                                           ; preds = %entry
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare void @abort() #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }

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
