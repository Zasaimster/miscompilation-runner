; 177367553447133240010834821480570317084
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/177367553447133240010834821480570317084.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/177367553447133240010834821480570317084.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"Hello, World!\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %u = alloca i64, align 8
  %r1 = alloca i64, align 8
  %r2 = alloca i64, align 8
  store i32 0, ptr %retval, align 4
  store i32 -16, ptr %i, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  store i32 1, ptr %j, align 4
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %j, align 4
  %add = add nsw i32 %0, %1
  %conv = sext i32 %add to i64
  store i64 %conv, ptr %u, align 8
  %2 = load i64, ptr %u, align 8
  %shr = lshr i64 %2, 1
  store i64 %shr, ptr %r1, align 8
  %3 = load i32, ptr %i, align 4
  %4 = load i32, ptr %j, align 4
  %add1 = add nsw i32 %3, %4
  %conv2 = sext i32 %add1 to i64
  %shr3 = lshr i64 %conv2, 1
  store i64 %shr3, ptr %r2, align 8
  %5 = load i64, ptr %r1, align 8
  %6 = load i64, ptr %r2, align 8
  %cmp = icmp ne i64 %5, %6
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
