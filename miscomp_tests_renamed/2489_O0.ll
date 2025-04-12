; 195750273035055360271922045035393476699
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/195750273035055360271922045035393476699.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/195750273035055360271922045035393476699.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @buggy(ptr noundef %param) #0 {
entry:
  %param.addr = alloca ptr, align 8
  %accu = alloca i32, align 4
  %zero = alloca i32, align 4
  %borrow = alloca i32, align 4
  store ptr %param, ptr %param.addr, align 8
  store i32 0, ptr %zero, align 4
  %0 = load i32, ptr %accu, align 4
  %1 = load i32, ptr %zero, align 4
  %cmp = icmp ugt i32 %0, %1
  %conv = zext i1 %cmp to i32
  %sub = sub nsw i32 0, %conv
  store i32 %sub, ptr %accu, align 4
  %2 = load i32, ptr %accu, align 4
  %3 = load i32, ptr %zero, align 4
  %cmp1 = icmp ugt i32 %2, %3
  %conv2 = zext i1 %cmp1 to i32
  %sub3 = sub nsw i32 0, %conv2
  store i32 %sub3, ptr %borrow, align 4
  %4 = load i32, ptr %accu, align 4
  %5 = load ptr, ptr %param.addr, align 8
  %6 = load i32, ptr %5, align 4
  %add = add i32 %6, %4
  store i32 %add, ptr %5, align 4
  %7 = load i32, ptr %borrow, align 4
  ret i32 %7
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %param = alloca i32, align 4
  %borrow = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %param, align 4
  %call = call i32 @buggy(ptr noundef %param)
  store i32 %call, ptr %borrow, align 4
  %0 = load i32, ptr %param, align 4
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #2
  unreachable

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %borrow, align 4
  %add = add i32 %1, 1
  %cmp1 = icmp ne i32 %add, 0
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  call void @abort() #2
  unreachable

if.end3:                                          ; preds = %if.end
  ret i32 0
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
