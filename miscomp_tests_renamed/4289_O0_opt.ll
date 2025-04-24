; 175244388150454975865626815610298298654
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/175244388150454975865626815610298298654_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/175244388150454975865626815610298298654.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@b = dso_local global i32 0, align 4
@d = dso_local global ptr @b, align 8
@c = dso_local global i32 0, align 4
@h = dso_local global i32 0, align 4
@g = dso_local global i32 0, align 4
@f = dso_local global i8 0, align 1
@e = dso_local global i8 0, align 1
@a = dso_local global i32 0, align 4
@i = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %j = alloca i8, align 1
  %k = alloca i8, align 1
  %l = alloca i8, align 1
  store i32 0, ptr %retval, align 4
  %0 = load i32, ptr @c, align 4
  %conv = trunc i32 %0 to i8
  store i8 %conv, ptr %j, align 1
  store i8 -1, ptr %k, align 1
  %1 = load i8, ptr %j, align 1
  %conv1 = sext i8 %1 to i32
  %2 = load i32, ptr @h, align 4
  %shr = ashr i32 %conv1, %2
  store i32 %shr, ptr @g, align 4
  %conv2 = trunc i32 %shr to i8
  store i8 %conv2, ptr %l, align 1
  %3 = load i8, ptr %l, align 1
  %conv3 = sext i8 %3 to i32
  %cmp = icmp eq i32 %conv3, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %4 = load i8, ptr %k, align 1
  %conv5 = sext i8 %4 to i32
  br label %cond.end

cond.false:                                       ; preds = %entry
  %5 = load i8, ptr %k, align 1
  %conv6 = sext i8 %5 to i32
  %6 = load i8, ptr %l, align 1
  %conv7 = sext i8 %6 to i32
  %rem = srem i32 %conv6, %conv7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv5, %cond.true ], [ %rem, %cond.false ]
  %conv8 = trunc i32 %cond to i8
  store i8 %conv8, ptr @f, align 1
  %7 = load i8, ptr @f, align 1
  %conv9 = sext i8 %7 to i32
  %conv10 = trunc i32 %conv9 to i8
  store i8 %conv10, ptr @e, align 1
  %8 = load i8, ptr @e, align 1
  %conv11 = zext i8 %8 to i32
  %9 = load ptr, ptr @d, align 8
  store i32 %conv11, ptr %9, align 4
  %10 = load i32, ptr @b, align 4
  %cmp12 = icmp ne i32 %10, 255
  br i1 %cmp12, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  call void @abort() #2
  unreachable

if.end:                                           ; preds = %cond.end
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
