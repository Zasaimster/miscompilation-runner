; 174504776196928545272172701309531054367
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/174504776196928545272172701309531054367_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/174504776196928545272172701309531054367.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p = dso_local global ptr null, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i32, align 4
  %x = alloca [0 x i32], align 4
  store i32 0, ptr %retval, align 4
  store i32 0, ptr %n, align 4
  br label %lab

lab:                                              ; preds = %if.then, %entry
  %arrayidx = getelementptr inbounds [0 x i32], ptr %x, i64 0, i64 0
  store i32 1, ptr %arrayidx, align 4
  %0 = load i32, ptr %n, align 4
  %rem = srem i32 %0, 1000
  %idxprom = sext i32 %rem to i64
  %arrayidx1 = getelementptr inbounds [0 x i32], ptr %x, i64 0, i64 %idxprom
  store i32 2, ptr %arrayidx1, align 4
  %arraydecay = getelementptr inbounds [0 x i32], ptr %x, i64 0, i64 0
  store volatile ptr %arraydecay, ptr @p, align 8
  %1 = load i32, ptr %n, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, ptr %n, align 4
  %2 = load i32, ptr %n, align 4
  %cmp = icmp slt i32 %2, 1000000
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %lab
  br label %lab

if.end:                                           ; preds = %lab
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
