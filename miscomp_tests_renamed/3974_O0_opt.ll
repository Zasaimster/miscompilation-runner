; 169418438991679274106082596347143264633
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/169418438991679274106082596347143264633_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/169418438991679274106082596347143264633.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %ll_bitsize = alloca i32, align 4
  %ll_bitpos = alloca i32, align 4
  %rl_bitsize = alloca i32, align 4
  %rl_bitpos = alloca i32, align 4
  %end_bit = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %0 = load i32, ptr %ll_bitpos, align 4
  %1 = load i32, ptr %ll_bitsize, align 4
  %add = add nsw i32 %0, %1
  store i32 %add, ptr %ll_bitpos, align 4
  store i32 32, ptr %ll_bitsize, align 4
  store i32 0, ptr %rl_bitpos, align 4
  store i32 32, ptr %rl_bitsize, align 4
  %2 = load i32, ptr %ll_bitpos, align 4
  %3 = load i32, ptr %ll_bitsize, align 4
  %add1 = add nsw i32 %2, %3
  %4 = load i32, ptr %rl_bitpos, align 4
  %5 = load i32, ptr %rl_bitsize, align 4
  %add2 = add nsw i32 %4, %5
  %call = call i32 (i32, i32, ...) @MAX(i32 noundef %add1, i32 noundef %add2)
  store i32 %call, ptr %end_bit, align 4
  %6 = load i32, ptr %end_bit, align 4
  %cmp = icmp ne i32 %6, 64
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #3
  unreachable

if.end:                                           ; preds = %entry
  %7 = load i32, ptr %rl_bitpos, align 4
  %8 = load i32, ptr %rl_bitsize, align 4
  %add3 = add nsw i32 %7, %8
  %9 = load i32, ptr %ll_bitpos, align 4
  %10 = load i32, ptr %ll_bitsize, align 4
  %add4 = add nsw i32 %9, %10
  %call5 = call i32 (i32, i32, ...) @MAX(i32 noundef %add3, i32 noundef %add4)
  store i32 %call5, ptr %end_bit, align 4
  %11 = load i32, ptr %end_bit, align 4
  %cmp6 = icmp ne i32 %11, 64
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  call void @abort() #3
  unreachable

if.end8:                                          ; preds = %if.end
  %12 = load i32, ptr %ll_bitpos, align 4
  %13 = load i32, ptr %ll_bitsize, align 4
  %add9 = add nsw i32 %12, %13
  %14 = load i32, ptr %rl_bitpos, align 4
  %15 = load i32, ptr %rl_bitsize, align 4
  %add10 = add nsw i32 %14, %15
  %call11 = call i32 (i32, i32, ...) @MIN(i32 noundef %add9, i32 noundef %add10)
  store i32 %call11, ptr %end_bit, align 4
  %16 = load i32, ptr %end_bit, align 4
  %cmp12 = icmp ne i32 %16, 32
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end8
  call void @abort() #3
  unreachable

if.end14:                                         ; preds = %if.end8
  %17 = load i32, ptr %rl_bitpos, align 4
  %18 = load i32, ptr %rl_bitsize, align 4
  %add15 = add nsw i32 %17, %18
  %19 = load i32, ptr %ll_bitpos, align 4
  %20 = load i32, ptr %ll_bitsize, align 4
  %add16 = add nsw i32 %19, %20
  %call17 = call i32 (i32, i32, ...) @MIN(i32 noundef %add15, i32 noundef %add16)
  store i32 %call17, ptr %end_bit, align 4
  %21 = load i32, ptr %end_bit, align 4
  %cmp18 = icmp ne i32 %21, 32
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end14
  call void @abort() #3
  unreachable

if.end20:                                         ; preds = %if.end14
  ret i32 0
}

declare i32 @MAX(...) #1

; Function Attrs: noreturn nounwind
declare void @abort() #2

declare i32 @MIN(...) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
