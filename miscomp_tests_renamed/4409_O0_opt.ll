; 177411478159160329632697720567054244907
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/177411478159160329632697720567054244907_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/177411478159160329632697720567054244907.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { ptr }

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @foo() #0 {
entry:
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @example9() #0 {
entry:
  %sum = alloca i32, align 4
  %i = alloca i32, align 4
  %square = alloca i32, align 4
  store i32 0, ptr %sum, align 4
  store i32 1, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp sle i32 %0, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  %2 = load i32, ptr %i, align 4
  %mul = mul nsw i32 %1, %2
  store i32 %mul, ptr %square, align 4
  %3 = load i32, ptr %i, align 4
  %4 = load i32, ptr %sum, align 4
  %add = add nsw i32 %4, %3
  store i32 %add, ptr %sum, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, ptr %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %6 = load i32, ptr %sum, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %6)
  ret void
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %v = alloca %struct.S, align 8
  store i32 0, ptr %retval, align 4
  %fptr = getelementptr inbounds nuw %struct.S, ptr %v, i32 0, i32 0
  store ptr @foo, ptr %fptr, align 8
  %fptr1 = getelementptr inbounds nuw %struct.S, ptr %v, i32 0, i32 0
  %0 = load ptr, ptr %fptr1, align 8
  %call = call i32 (...) %0()
  ret i32 %call
}

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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
