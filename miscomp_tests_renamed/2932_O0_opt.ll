; 151448817503184021234337731332540937198
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/151448817503184021234337731332540937198_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/151448817503184021234337731332540937198.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@q = dso_local global ptr null, align 8
@n = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo() #0 {
entry:
  %p = alloca ptr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.cond, %entry
  %0 = load ptr, ptr @q, align 8
  store ptr %0, ptr %p, align 8
  %call = call i32 (...) @doNothing()
  store volatile i32 %call, ptr @n, align 4
  %1 = load ptr, ptr @q, align 8
  store ptr %1, ptr %p, align 8
  %2 = load ptr, ptr %p, align 8
  %arrayidx = getelementptr inbounds i8, ptr %2, i64 2
  %3 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %3 to i32
  store volatile i32 %conv, ptr @n, align 4
  %4 = load ptr, ptr @q, align 8
  store ptr %4, ptr %p, align 8
  %5 = load ptr, ptr %p, align 8
  %arrayidx1 = getelementptr inbounds i8, ptr %5, i64 2
  %6 = load i8, ptr %arrayidx1, align 1
  %conv2 = sext i8 %6 to i32
  store volatile i32 %conv2, ptr @n, align 4
  %7 = load ptr, ptr @q, align 8
  store ptr %7, ptr %p, align 8
  %8 = load ptr, ptr %p, align 8
  %arrayidx3 = getelementptr inbounds i8, ptr %8, i64 2
  %9 = load i8, ptr %arrayidx3, align 1
  %conv4 = sext i8 %9 to i32
  store volatile i32 %conv4, ptr @n, align 4
  %10 = load ptr, ptr @q, align 8
  store ptr %10, ptr %p, align 8
  %11 = load ptr, ptr %p, align 8
  %arrayidx5 = getelementptr inbounds i8, ptr %11, i64 2
  %12 = load i8, ptr %arrayidx5, align 1
  %conv6 = sext i8 %12 to i32
  store volatile i32 %conv6, ptr @n, align 4
  %13 = load ptr, ptr @q, align 8
  store ptr %13, ptr %p, align 8
  %14 = load ptr, ptr %p, align 8
  %arrayidx7 = getelementptr inbounds i8, ptr %14, i64 2
  %15 = load i8, ptr %arrayidx7, align 1
  %conv8 = sext i8 %15 to i32
  store volatile i32 %conv8, ptr @n, align 4
  %16 = load ptr, ptr @q, align 8
  store ptr %16, ptr %p, align 8
  %17 = load ptr, ptr %p, align 8
  %arrayidx9 = getelementptr inbounds i8, ptr %17, i64 2
  %18 = load i8, ptr %arrayidx9, align 1
  %conv10 = sext i8 %18 to i32
  store volatile i32 %conv10, ptr @n, align 4
  %19 = load ptr, ptr @q, align 8
  store ptr %19, ptr %p, align 8
  %20 = load ptr, ptr %p, align 8
  %arrayidx11 = getelementptr inbounds i8, ptr %20, i64 2
  %21 = load i8, ptr %arrayidx11, align 1
  %conv12 = sext i8 %21 to i32
  store volatile i32 %conv12, ptr @n, align 4
  %22 = load ptr, ptr @q, align 8
  store ptr %22, ptr %p, align 8
  %23 = load ptr, ptr %p, align 8
  %arrayidx13 = getelementptr inbounds i8, ptr %23, i64 2
  %24 = load i8, ptr %arrayidx13, align 1
  %conv14 = sext i8 %24 to i32
  store volatile i32 %conv14, ptr @n, align 4
  %25 = load ptr, ptr @q, align 8
  store ptr %25, ptr %p, align 8
  %26 = load ptr, ptr %p, align 8
  %arrayidx15 = getelementptr inbounds i8, ptr %26, i64 2
  %27 = load i8, ptr %arrayidx15, align 1
  %conv16 = sext i8 %27 to i32
  store volatile i32 %conv16, ptr @n, align 4
  %28 = load ptr, ptr @q, align 8
  store ptr %28, ptr %p, align 8
  %29 = load ptr, ptr %p, align 8
  %arrayidx17 = getelementptr inbounds i8, ptr %29, i64 2
  %30 = load i8, ptr %arrayidx17, align 1
  %conv18 = sext i8 %30 to i32
  store volatile i32 %conv18, ptr @n, align 4
  br label %for.cond
}

declare i32 @doNothing(...) #1

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
