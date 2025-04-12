; 100093645591547541417703898340262798904
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/100093645591547541417703898340262798904_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/100093645591547541417703898340262798904.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"Hello, World!\0A\00", align 1
@a = dso_local global i32 0, align 4
@e = dso_local global i32 0, align 4
@f = dso_local global i32 0, align 4
@b = dso_local global i16 0, align 2
@c = dso_local global i16 0, align 2
@d = dso_local global i16 0, align 2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @foo(i32 noundef %x, i32 noundef %y) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  store i32 %y, ptr %y.addr, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %0 = load i32, ptr %retval, align 4
  ret i32 %0
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call signext i16 @bar()
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal signext i16 @bar() #0 {
entry:
  %retval = alloca i16, align 2
  %i = alloca i32, align 4
  %g = alloca i32, align 4
  %h = alloca i32, align 4
  %0 = load i16, ptr @c, align 2
  %conv = sext i16 %0 to i32
  %1 = load i32, ptr @f, align 4
  %call = call i32 @foo(i32 noundef %conv, i32 noundef %1)
  store i32 %call, ptr %i, align 4
  %2 = load i16, ptr @d, align 2
  %conv1 = sext i16 %2 to i32
  %call2 = call i32 @foo(i32 noundef %conv1, i32 noundef 2)
  store i32 %call2, ptr @f, align 4
  %3 = load i16, ptr @b, align 2
  %conv3 = sext i16 %3 to i32
  %4 = load i16, ptr @c, align 2
  %conv4 = sext i16 %4 to i32
  %call5 = call i32 @foo(i32 noundef %conv3, i32 noundef %conv4)
  store i32 %call5, ptr %g, align 4
  %5 = load i32, ptr %g, align 4
  %cmp = icmp sgt i32 %5, 0
  %conv6 = zext i1 %cmp to i32
  %6 = load i16, ptr @c, align 2
  %conv7 = sext i16 %6 to i32
  %call8 = call i32 @foo(i32 noundef %conv6, i32 noundef %conv7)
  store i32 %call8, ptr %h, align 4
  %7 = load i32, ptr %h, align 4
  %cmp9 = icmp sge i32 3, %7
  %conv10 = zext i1 %cmp9 to i32
  %xor = xor i32 %conv10, 7
  %8 = load i32, ptr %i, align 4
  %9 = load i16, ptr @c, align 2
  %conv11 = sext i16 %9 to i32
  %call12 = call i32 @foo(i32 noundef %8, i32 noundef %conv11)
  %cmp13 = icmp sle i32 %xor, %call12
  %conv14 = zext i1 %cmp13 to i32
  %conv15 = trunc i32 %conv14 to i16
  store i16 %conv15, ptr @c, align 2
  %10 = load i32, ptr @e, align 4
  %call16 = call i32 @foo(i32 noundef %10, i32 noundef 1)
  %tobool = icmp ne i32 %call16, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load i32, ptr @a, align 4
  %conv17 = trunc i32 %11 to i16
  store i16 %conv17, ptr %retval, align 2
  br label %return

if.end:                                           ; preds = %entry
  store i16 0, ptr %retval, align 2
  br label %return

return:                                           ; preds = %if.end, %if.then
  %12 = load i16, ptr %retval, align 2
  ret i16 %12
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
