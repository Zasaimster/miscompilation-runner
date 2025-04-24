; 170074277589422925654311108371523587352
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/170074277589422925654311108371523587352.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/170074277589422925654311108371523587352.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @test1(i32 noundef 16384)
  call void @test2(i32 noundef 16384)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @test1(i32 noundef %u1) #0 {
entry:
  %u1.addr = alloca i32, align 4
  %y_final_1 = alloca i32, align 4
  %y_middle = alloca i16, align 2
  %y_final_2 = alloca i32, align 4
  store i32 %u1, ptr %u1.addr, align 4
  store i32 0, ptr %y_final_1, align 4
  %0 = load i32, ptr %u1.addr, align 4
  %mul = mul i32 %0, 2
  %conv = trunc i32 %mul to i16
  store i16 %conv, ptr %y_middle, align 2
  %1 = load i16, ptr %y_middle, align 2
  %conv1 = sext i16 %1 to i32
  %mul2 = mul nsw i32 %conv1, 3
  store i32 %mul2, ptr %y_final_2, align 4
  %2 = load i32, ptr %y_final_1, align 4
  %3 = load i32, ptr %y_final_2, align 4
  %cmp = icmp ne i32 %2, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #2
  unreachable

if.end:                                           ; preds = %entry
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @test2(i32 noundef %u1) #0 {
entry:
  %u1.addr = alloca i32, align 4
  %y_final_1 = alloca i32, align 4
  %y_middle = alloca i16, align 2
  %y_final_2 = alloca i32, align 4
  store i32 %u1, ptr %u1.addr, align 4
  %0 = load i32, ptr %u1.addr, align 4
  %shl = shl i32 %0, 1
  %conv = trunc i32 %shl to i16
  %conv1 = sext i16 %conv to i32
  %mul = mul nsw i32 %conv1, 3
  store i32 %mul, ptr %y_final_1, align 4
  %1 = load i32, ptr %u1.addr, align 4
  %shl2 = shl i32 %1, 1
  %conv3 = trunc i32 %shl2 to i16
  store i16 %conv3, ptr %y_middle, align 2
  %2 = load i16, ptr %y_middle, align 2
  %conv4 = sext i16 %2 to i32
  %mul5 = mul nsw i32 %conv4, 3
  store i32 %mul5, ptr %y_final_2, align 4
  %3 = load i32, ptr %y_final_1, align 4
  %4 = load i32, ptr %y_final_2, align 4
  %cmp = icmp ne i32 %3, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #2
  unreachable

if.end:                                           ; preds = %entry
  ret void
}

; Function Attrs: noreturn nounwind
declare void @abort() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
