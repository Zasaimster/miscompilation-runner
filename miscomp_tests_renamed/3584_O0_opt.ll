; 162457488290660387146373676399511628908
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/162457488290660387146373676399511628908_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/162457488290660387146373676399511628908.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %year = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 0, ptr %year, align 4
  %0 = load i32, ptr %year, align 4
  %rem = srem i32 %0, 400
  %cmp = icmp eq i32 %rem, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %year, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, ptr %year, align 4
  br label %if.end12

if.else:                                          ; preds = %entry
  %2 = load i32, ptr %year, align 4
  %rem1 = srem i32 %2, 100
  %cmp2 = icmp eq i32 %rem1, 0
  br i1 %cmp2, label %if.then3, label %if.else5

if.then3:                                         ; preds = %if.else
  %3 = load i32, ptr %year, align 4
  %inc4 = add nsw i32 %3, 1
  store i32 %inc4, ptr %year, align 4
  br label %if.end11

if.else5:                                         ; preds = %if.else
  %4 = load i32, ptr %year, align 4
  %rem6 = srem i32 %4, 4
  %cmp7 = icmp eq i32 %rem6, 0
  br i1 %cmp7, label %if.then8, label %if.else10

if.then8:                                         ; preds = %if.else5
  %5 = load i32, ptr %year, align 4
  %inc9 = add nsw i32 %5, 1
  store i32 %inc9, ptr %year, align 4
  br label %if.end

if.else10:                                        ; preds = %if.else5
  br label %if.end

if.end:                                           ; preds = %if.else10, %if.then8
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then3
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %if.then
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
