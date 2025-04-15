; 170771529669907265417378331406781114320
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/170771529669907265417378331406781114320_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/170771529669907265417378331406781114320.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local global i32 0, align 4
@b = dso_local global i32 0, align 4
@c = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %d = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call i32 (...) @func3()
  store i32 %call, ptr %d, align 4
  %0 = load i32, ptr @a, align 4
  %not = xor i32 %0, -1
  %1 = load i32, ptr %d, align 4
  %not1 = xor i32 %1, -1
  %2 = load i32, ptr @b, align 4
  %or = or i32 %not1, %2
  %add = add nsw i32 %not, %or
  %not2 = xor i32 %add, -1
  store i32 %not2, ptr @b, align 4
  %3 = load i32, ptr @c, align 4
  %not3 = xor i32 %3, -1
  %4 = load i32, ptr @b, align 4
  %shr = lshr i32 %not3, %4
  %not4 = xor i32 %shr, -1
  store i32 %not4, ptr @a, align 4
  %5 = load i32, ptr @a, align 4
  %6 = load i32, ptr @b, align 4
  %rem = srem i32 %5, %6
  store i32 %rem, ptr @c, align 4
  ret i32 0
}

declare i32 @func3(...) #1

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
