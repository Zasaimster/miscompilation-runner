; 161558215741514692253576928965523524661
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/161558215741514692253576928965523524661_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/161558215741514692253576928965523524661.c"
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
  store i32 32, ptr %ll_bitpos, align 4
  store i32 32, ptr %ll_bitsize, align 4
  store i32 0, ptr %rl_bitpos, align 4
  store i32 32, ptr %rl_bitsize, align 4
  %0 = load i32, ptr %ll_bitpos, align 4
  %1 = load i32, ptr %ll_bitsize, align 4
  %add = add nsw i32 %0, %1
  %2 = load i32, ptr %rl_bitpos, align 4
  %3 = load i32, ptr %rl_bitsize, align 4
  %add1 = add nsw i32 %2, %3
  %call = call i32 (i32, i32, ...) @MAX(i32 noundef %add, i32 noundef %add1)
  store i32 %call, ptr %end_bit, align 4
  %4 = load i32, ptr %end_bit, align 4
  %cmp = icmp ne i32 %4, 64
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #3
  unreachable

if.end:                                           ; preds = %entry
  %5 = load i32, ptr %rl_bitpos, align 4
  %6 = load i32, ptr %rl_bitsize, align 4
  %add2 = add nsw i32 %5, %6
  %7 = load i32, ptr %ll_bitpos, align 4
  %8 = load i32, ptr %ll_bitsize, align 4
  %add3 = add nsw i32 %7, %8
  %call4 = call i32 (i32, i32, ...) @MAX(i32 noundef %add2, i32 noundef %add3)
  store i32 %call4, ptr %end_bit, align 4
  %9 = load i32, ptr %end_bit, align 4
  %cmp5 = icmp ne i32 %9, 64
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  call void @abort() #3
  unreachable

if.end7:                                          ; preds = %if.end
  %10 = load i32, ptr %ll_bitpos, align 4
  %11 = load i32, ptr %ll_bitsize, align 4
  %add8 = add nsw i32 %10, %11
  %12 = load i32, ptr %rl_bitpos, align 4
  %13 = load i32, ptr %rl_bitsize, align 4
  %add9 = add nsw i32 %12, %13
  %call10 = call i32 (i32, i32, ...) @MIN(i32 noundef %add8, i32 noundef %add9)
  store i32 %call10, ptr %end_bit, align 4
  %14 = load i32, ptr %end_bit, align 4
  %cmp11 = icmp ne i32 %14, 32
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end7
  call void @abort() #3
  unreachable

if.end13:                                         ; preds = %if.end7
  %15 = load i32, ptr %rl_bitpos, align 4
  %16 = load i32, ptr %rl_bitsize, align 4
  %add14 = add nsw i32 %15, %16
  %17 = load i32, ptr %ll_bitpos, align 4
  %18 = load i32, ptr %ll_bitsize, align 4
  %add15 = add nsw i32 %17, %18
  %call16 = call i32 (i32, i32, ...) @MIN(i32 noundef %add14, i32 noundef %add15)
  store i32 %call16, ptr %end_bit, align 4
  %19 = load i32, ptr %end_bit, align 4
  %cmp17 = icmp ne i32 %19, 32
  br i1 %cmp17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end13
  call void @abort() #3
  unreachable

if.end19:                                         ; preds = %if.end13
  ret i32 0
}

declare i32 @MAX(...) #1

; Function Attrs: noreturn nounwind
declare void @abort() #2

declare i32 @MIN(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @unusedFunction() #0 {
entry:
  ret void
}

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
