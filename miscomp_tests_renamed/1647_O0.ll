; 189063487225168019201764323208312573066
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/189063487225168019201764323208312573066.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/189063487225168019201764323208312573066.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"Hello, World!\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"This function is never used.\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f(ptr noundef %p) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load i32, ptr %retval, align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %c = alloca i8, align 1
  %c2 = alloca i8, align 1
  %i = alloca i32, align 4
  %pc = alloca ptr, align 8
  %pc2 = alloca ptr, align 8
  %pi = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store i32 0, ptr %i, align 4
  store ptr %c, ptr %pc, align 8
  store ptr %c2, ptr %pc2, align 8
  store ptr %i, ptr %pi, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %conv = trunc i32 %call to i8
  %0 = load ptr, ptr %pc2, align 8
  store i8 %conv, ptr %0, align 1
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  %1 = load ptr, ptr %pi, align 8
  store i32 %call1, ptr %1, align 4
  %2 = load ptr, ptr %pi, align 8
  %3 = load i32, ptr %2, align 4
  %4 = load ptr, ptr %pc2, align 8
  %5 = load i8, ptr %4, align 1
  %conv2 = sext i8 %5 to i32
  %and = and i32 %conv2, %3
  %conv3 = trunc i32 %and to i8
  store i8 %conv3, ptr %4, align 1
  %6 = load ptr, ptr %pc2, align 8
  %call4 = call i32 @f(ptr noundef %6)
  %7 = load ptr, ptr %pc2, align 8
  store i8 1, ptr %7, align 1
  %8 = load ptr, ptr %pi, align 8
  %9 = load i32, ptr %8, align 4
  %10 = load ptr, ptr %pc2, align 8
  %11 = load i8, ptr %10, align 1
  %conv5 = sext i8 %11 to i32
  %and6 = and i32 %conv5, %9
  %conv7 = trunc i32 %and6 to i8
  store i8 %conv7, ptr %10, align 1
  %12 = load ptr, ptr %pc2, align 8
  %13 = load i8, ptr %12, align 1
  %conv8 = sext i8 %13 to i32
  %cmp = icmp ne i32 %conv8, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #4
  unreachable

if.end:                                           ; preds = %entry
  call void @exit(i32 noundef 0) #5
  unreachable
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noreturn nounwind
declare void @abort() #2

; Function Attrs: noreturn
declare void @exit(i32 noundef) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }
attributes #5 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
