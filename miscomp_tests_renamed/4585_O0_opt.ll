; 188834330454169636354228671232238789222
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/188834330454169636354228671232238789222_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/188834330454169636354228671232238789222.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 5, ptr %x, align 4
  store i32 0, ptr %y, align 4
  %0 = load i32, ptr %x, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br i1 true, label %if.then, label %if.end

cond.false:                                       ; preds = %entry
  br i1 false, label %if.then, label %if.end

if.then:                                          ; preds = %cond.false, %cond.true
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %cond.false, %cond.true
  %1 = load i32, ptr %y, align 4
  %tobool1 = icmp ne i32 %1, 0
  br i1 %tobool1, label %cond.true2, label %cond.false3

cond.true2:                                       ; preds = %if.end
  br i1 false, label %if.then4, label %if.end5

cond.false3:                                      ; preds = %if.end
  br i1 true, label %if.then4, label %if.end5

if.then4:                                         ; preds = %cond.false3, %cond.true2
  store i32 2, ptr %retval, align 4
  br label %return

if.end5:                                          ; preds = %cond.false3, %cond.true2
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4
  ret i32 %2
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
