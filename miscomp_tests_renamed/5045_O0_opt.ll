; 140793822552988889482410545774990582031
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/140793822552988889482410545774990582031_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/140793822552988889482410545774990582031.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"Dead code.\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %d = alloca ptr, align 8
  %e = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store ptr inttoptr (i64 1 to ptr), ptr %d, align 8
  store ptr %b, ptr %e, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  store i32 %call, ptr %a, align 4
  store i32 34, ptr %b, align 4
  %0 = load ptr, ptr %d, align 8
  %1 = load i32, ptr %0, align 4
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %1)
  %2 = load ptr, ptr %e, align 8
  %3 = load i32, ptr %2, align 4
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %3)
  %4 = load ptr, ptr %d, align 8
  %5 = load ptr, ptr %e, align 8
  %cmp = icmp eq ptr %4, %5
  %conv = zext i1 %cmp to i32
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %conv)
  %6 = load ptr, ptr %d, align 8
  %7 = load ptr, ptr %e, align 8
  %cmp4 = icmp ne ptr %6, %7
  %conv5 = zext i1 %cmp4 to i32
  %call6 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %conv5)
  %8 = load ptr, ptr %e, align 8
  store ptr %8, ptr %d, align 8
  %9 = load ptr, ptr %d, align 8
  %10 = load ptr, ptr %e, align 8
  %cmp7 = icmp eq ptr %9, %10
  %conv8 = zext i1 %cmp7 to i32
  %call9 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %conv8)
  %11 = load ptr, ptr %d, align 8
  %12 = load ptr, ptr %e, align 8
  %cmp10 = icmp ne ptr %11, %12
  %conv11 = zext i1 %cmp10 to i32
  %call12 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %conv11)
  ret i32 0
}

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
