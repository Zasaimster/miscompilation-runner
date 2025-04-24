; 174294519213838574737174779809580402463
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/174294519213838574737174779809580402463.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/174294519213838574737174779809580402463.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"Hello, World!\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %x = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 0, ptr %x, align 4
  br label %while.cond

while.cond:                                       ; preds = %entry
  %call = call i32 (...) @compute()
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %while.end

while.end:                                        ; preds = %while.body, %while.cond
  br label %while.cond1

while.cond1:                                      ; preds = %if.end, %while.end
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %while.body4, label %while.end5

while.body4:                                      ; preds = %while.cond1
  %0 = load i32, ptr %x, align 4
  %cmp = icmp eq i32 %0, 5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body4
  br label %while.end5

if.end:                                           ; preds = %while.body4
  %1 = load i32, ptr %x, align 4
  %add = add nsw i32 %1, 1
  store i32 %add, ptr %x, align 4
  br label %while.cond1, !llvm.loop !6

while.end5:                                       ; preds = %if.then, %while.cond1
  br label %for.cond

for.cond:                                         ; preds = %if.end8, %while.end5
  %2 = load i32, ptr %x, align 4
  %cmp6 = icmp eq i32 %2, 10
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %for.cond
  br label %for.end

if.end8:                                          ; preds = %for.cond
  %3 = load i32, ptr %x, align 4
  %add9 = add nsw i32 %3, 1
  store i32 %add9, ptr %x, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then7
  br label %do.body

do.body:                                          ; preds = %do.cond, %for.end
  %4 = load i32, ptr %x, align 4
  %cmp10 = icmp eq i32 %4, 15
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %do.body
  br label %do.end

if.end12:                                         ; preds = %do.body
  %5 = load i32, ptr %x, align 4
  %add13 = add nsw i32 %5, 1
  store i32 %add13, ptr %x, align 4
  br label %do.cond

do.cond:                                          ; preds = %if.end12
  br i1 true, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond, %if.then11
  %6 = load i32, ptr %x, align 4
  %sub = sub nsw i32 %6, 15
  ret i32 %sub
}

declare i32 @compute(...) #1

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
