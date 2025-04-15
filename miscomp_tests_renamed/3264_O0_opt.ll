; 171541100938254999658714912103221684886
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/171541100938254999658714912103221684886_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/171541100938254999658714912103221684886.c"
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
  %2 = load i32, ptr %rl_bitpos, align 4
  %3 = load i32, ptr %rl_bitsize, align 4
  %add1 = add nsw i32 %2, %3
  %call = call i32 (i32, i32, ...) @MAX(i32 noundef %add, i32 noundef %add1)
  store i32 %call, ptr %ll_bitpos, align 4
  store i32 32, ptr %ll_bitsize, align 4
  store i32 0, ptr %rl_bitpos, align 4
  store i32 32, ptr %rl_bitsize, align 4
  %4 = load i32, ptr %ll_bitpos, align 4
  %5 = load i32, ptr %ll_bitsize, align 4
  %add2 = add nsw i32 %4, %5
  %6 = load i32, ptr %rl_bitpos, align 4
  %7 = load i32, ptr %rl_bitsize, align 4
  %add3 = add nsw i32 %6, %7
  %call4 = call i32 (i32, i32, ...) @MAX(i32 noundef %add2, i32 noundef %add3)
  store i32 %call4, ptr %end_bit, align 4
  %8 = load i32, ptr %end_bit, align 4
  %cmp = icmp ne i32 %8, 64
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #3
  unreachable

if.end:                                           ; preds = %entry
  %9 = load i32, ptr %rl_bitpos, align 4
  %10 = load i32, ptr %rl_bitsize, align 4
  %add5 = add nsw i32 %9, %10
  %11 = load i32, ptr %ll_bitpos, align 4
  %12 = load i32, ptr %ll_bitsize, align 4
  %add6 = add nsw i32 %11, %12
  %call7 = call i32 (i32, i32, ...) @MAX(i32 noundef %add5, i32 noundef %add6)
  store i32 %call7, ptr %end_bit, align 4
  %13 = load i32, ptr %end_bit, align 4
  %cmp8 = icmp ne i32 %13, 64
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end
  call void @abort() #3
  unreachable

if.end10:                                         ; preds = %if.end
  %14 = load i32, ptr %ll_bitpos, align 4
  %15 = load i32, ptr %ll_bitsize, align 4
  %add11 = add nsw i32 %14, %15
  %16 = load i32, ptr %rl_bitpos, align 4
  %17 = load i32, ptr %rl_bitsize, align 4
  %add12 = add nsw i32 %16, %17
  %call13 = call i32 (i32, i32, ...) @MIN(i32 noundef %add11, i32 noundef %add12)
  store i32 %call13, ptr %end_bit, align 4
  %18 = load i32, ptr %end_bit, align 4
  %cmp14 = icmp ne i32 %18, 32
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end10
  call void @abort() #3
  unreachable

if.end16:                                         ; preds = %if.end10
  %19 = load i32, ptr %rl_bitpos, align 4
  %20 = load i32, ptr %rl_bitsize, align 4
  %add17 = add nsw i32 %19, %20
  %21 = load i32, ptr %ll_bitpos, align 4
  %22 = load i32, ptr %ll_bitsize, align 4
  %add18 = add nsw i32 %21, %22
  %call19 = call i32 (i32, i32, ...) @MIN(i32 noundef %add17, i32 noundef %add18)
  store i32 %call19, ptr %end_bit, align 4
  %23 = load i32, ptr %end_bit, align 4
  %cmp20 = icmp ne i32 %23, 32
  br i1 %cmp20, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.end16
  call void @abort() #3
  unreachable

if.end22:                                         ; preds = %if.end16
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
