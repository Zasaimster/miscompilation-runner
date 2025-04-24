; 138504664549620452667075059142436555446
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/138504664549620452667075059142436555446_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/138504664549620452667075059142436555446.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"Hello World\0A\00", align 1
@p = dso_local global ptr null, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i32, align 4
  %saved_stack = alloca ptr, align 8
  %__vla_expr0 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 0, ptr %n, align 4
  br label %lab

lab:                                              ; preds = %cleanup, %entry
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %rem = srem i32 %call, 1000
  %add = add nsw i32 %rem, 1
  %0 = zext i32 %add to i64
  %1 = call ptr @llvm.stacksave.p0()
  store ptr %1, ptr %saved_stack, align 8
  %vla = alloca i32, i64 %0, align 16
  store i64 %0, ptr %__vla_expr0, align 8
  %arrayidx = getelementptr inbounds i32, ptr %vla, i64 0
  store i32 1, ptr %arrayidx, align 16
  %2 = load i32, ptr %n, align 4
  %rem1 = srem i32 %2, 1000
  %idxprom = sext i32 %rem1 to i64
  %arrayidx2 = getelementptr inbounds i32, ptr %vla, i64 %idxprom
  store i32 2, ptr %arrayidx2, align 4
  store volatile ptr %vla, ptr @p, align 8
  %3 = load i32, ptr %n, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %n, align 4
  %4 = load i32, ptr %n, align 4
  %cmp = icmp slt i32 %4, 1000000
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %lab
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %lab
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %5 = load ptr, ptr %saved_stack, align 8
  call void @llvm.stackrestore.p0(ptr %5)
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 2, label %lab
    i32 1, label %return
  ]

return:                                           ; preds = %cleanup
  %6 = load i32, ptr %retval, align 4
  ret i32 %6

unreachable:                                      ; preds = %cleanup
  unreachable
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
