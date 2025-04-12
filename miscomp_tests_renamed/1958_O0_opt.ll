; 127087092563784294571979152874608629430
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/127087092563784294571979152874608629430_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/127087092563784294571979152874608629430.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"Hello, World!\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %x1 = alloca i32, align 4
  %x2 = alloca i64, align 8
  %x3 = alloca i32, align 4
  %x4 = alloca i32, align 4
  %x5 = alloca i32, align 4
  %x6 = alloca i64, align 8
  %t = alloca i64, align 8
  store i32 0, ptr %retval, align 4
  store volatile i32 0, ptr %x1, align 4
  store volatile i64 0, ptr %x2, align 8
  store volatile i32 0, ptr %x3, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  store volatile i32 %call, ptr %x4, align 4
  store volatile i32 1, ptr %x5, align 4
  store volatile i64 1, ptr %x6, align 8
  %0 = load volatile i32, ptr %x1, align 4
  %conv = sext i32 %0 to i64
  %1 = load volatile i64, ptr %x2, align 8
  %2 = load volatile i32, ptr %x3, align 4
  %sh_prom = zext i32 %2 to i64
  %shl = shl i64 %1, %sh_prom
  %mul = mul nsw i64 %conv, %shl
  %3 = load volatile i32, ptr %x4, align 4
  %4 = load volatile i32, ptr %x5, align 4
  %mul1 = mul nsw i32 %3, %4
  %conv2 = sext i32 %mul1 to i64
  %div = sdiv i64 %mul, %conv2
  %5 = load volatile i64, ptr %x6, align 8
  %add = add nsw i64 %div, %5
  store i64 %add, ptr %t, align 8
  %6 = load i64, ptr %t, align 8
  %cmp = icmp ne i64 %6, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #3
  unreachable

if.end:                                           ; preds = %entry
  ret i32 0
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noreturn nounwind
declare void @abort() #2

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
