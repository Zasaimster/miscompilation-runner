; 120350993654070091225955902713985656295
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/120350993654070091225955902713985656295.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/120350993654070091225955902713985656295.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"Hello World\0A\00", align 1
@n = dso_local global i32 0, align 4
@q = dso_local global ptr null, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo() #0 {
entry:
  %p = alloca ptr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.cond, %entry
  store ptr inttoptr (i64 3 to ptr), ptr %p, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  store volatile i32 %call, ptr @n, align 4
  %0 = load ptr, ptr @q, align 8
  store ptr %0, ptr %p, align 8
  %1 = load ptr, ptr %p, align 8
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 2
  %2 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %2 to i32
  store volatile i32 %conv, ptr @n, align 4
  %3 = load ptr, ptr @q, align 8
  store ptr %3, ptr %p, align 8
  %4 = load ptr, ptr %p, align 8
  %arrayidx1 = getelementptr inbounds i8, ptr %4, i64 2
  %5 = load i8, ptr %arrayidx1, align 1
  %conv2 = sext i8 %5 to i32
  store volatile i32 %conv2, ptr @n, align 4
  %6 = load ptr, ptr @q, align 8
  store ptr %6, ptr %p, align 8
  %7 = load ptr, ptr %p, align 8
  %arrayidx3 = getelementptr inbounds i8, ptr %7, i64 2
  %8 = load i8, ptr %arrayidx3, align 1
  %conv4 = sext i8 %8 to i32
  store volatile i32 %conv4, ptr @n, align 4
  %9 = load ptr, ptr @q, align 8
  store ptr %9, ptr %p, align 8
  %10 = load ptr, ptr %p, align 8
  %arrayidx5 = getelementptr inbounds i8, ptr %10, i64 2
  %11 = load i8, ptr %arrayidx5, align 1
  %conv6 = sext i8 %11 to i32
  store volatile i32 %conv6, ptr @n, align 4
  %12 = load ptr, ptr @q, align 8
  store ptr %12, ptr %p, align 8
  %13 = load ptr, ptr %p, align 8
  %arrayidx7 = getelementptr inbounds i8, ptr %13, i64 2
  %14 = load i8, ptr %arrayidx7, align 1
  %conv8 = sext i8 %14 to i32
  store volatile i32 %conv8, ptr @n, align 4
  %15 = load ptr, ptr @q, align 8
  store ptr %15, ptr %p, align 8
  %16 = load ptr, ptr %p, align 8
  %arrayidx9 = getelementptr inbounds i8, ptr %16, i64 2
  %17 = load i8, ptr %arrayidx9, align 1
  %conv10 = sext i8 %17 to i32
  store volatile i32 %conv10, ptr @n, align 4
  %18 = load ptr, ptr @q, align 8
  store ptr %18, ptr %p, align 8
  %19 = load ptr, ptr %p, align 8
  %arrayidx11 = getelementptr inbounds i8, ptr %19, i64 2
  %20 = load i8, ptr %arrayidx11, align 1
  %conv12 = sext i8 %20 to i32
  store volatile i32 %conv12, ptr @n, align 4
  %21 = load ptr, ptr @q, align 8
  store ptr %21, ptr %p, align 8
  %22 = load ptr, ptr %p, align 8
  %arrayidx13 = getelementptr inbounds i8, ptr %22, i64 2
  %23 = load i8, ptr %arrayidx13, align 1
  %conv14 = sext i8 %23 to i32
  store volatile i32 %conv14, ptr @n, align 4
  %24 = load ptr, ptr @q, align 8
  store ptr %24, ptr %p, align 8
  %25 = load ptr, ptr %p, align 8
  %arrayidx15 = getelementptr inbounds i8, ptr %25, i64 2
  %26 = load i8, ptr %arrayidx15, align 1
  %conv16 = sext i8 %26 to i32
  store volatile i32 %conv16, ptr @n, align 4
  %27 = load ptr, ptr @q, align 8
  store ptr %27, ptr %p, align 8
  %28 = load ptr, ptr %p, align 8
  %arrayidx17 = getelementptr inbounds i8, ptr %28, i64 2
  %29 = load i8, ptr %arrayidx17, align 1
  %conv18 = sext i8 %29 to i32
  store volatile i32 %conv18, ptr @n, align 4
  br label %for.cond
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @exit(i32 noundef 0) #3
  unreachable
}

; Function Attrs: noreturn
declare void @exit(i32 noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
