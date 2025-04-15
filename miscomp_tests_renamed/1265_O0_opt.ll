; 141662944126988439180165577741815952278
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/141662944126988439180165577741815952278_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/141662944126988439180165577741815952278.c"
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
  %0 = load ptr, ptr %param.addr, align 8
  %1 = load i32, ptr %0, align 4
  %sub = sub i32 0, %1
  %2 = load i32, ptr %accu, align 4
  %3 = load i32, ptr %zero, align 4
  %cmp = icmp ugt i32 %2, %3
  %conv = zext i1 %cmp to i32
  %sub1 = sub i32 %sub, %conv
  store i32 %sub1, ptr %accu, align 4
  %4 = load i32, ptr %accu, align 4
  %5 = load i32, ptr %zero, align 4
  %cmp2 = icmp ugt i32 %4, %5
  %conv3 = zext i1 %cmp2 to i32
  %sub4 = sub nsw i32 0, %conv3
  store i32 %sub4, ptr %borrow, align 4
  %6 = load i32, ptr %accu, align 4
  %7 = load ptr, ptr %param.addr, align 8
  %8 = load i32, ptr %7, align 4
  %add = add i32 %8, %6
  store i32 %add, ptr %7, align 4
  %9 = load i32, ptr %borrow, align 4
  ret i32 %9
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
