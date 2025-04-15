; 145704210454492126852620122262489271194
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/145704210454492126852620122262489271194_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/145704210454492126852620122262489271194.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g0 = dso_local global i64 0, align 8
@g1 = dso_local global i64 0, align 8
@a = dso_local global i32 0, align 4
@b = dso_local global i128 0, align 16
@d = dso_local global i32 0, align 4
@c = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @store(i64 noundef %a0, i64 noundef %a1) #0 {
entry:
  %a0.addr = alloca i64, align 8
  %a1.addr = alloca i64, align 8
  store i64 %a0, ptr %a0.addr, align 8
  store i64 %a1, ptr %a1.addr, align 8
  %0 = load i64, ptr %a0.addr, align 8
  store i64 %0, ptr @g0, align 8
  %1 = load i64, ptr %a1.addr, align 8
  store i64 %1, ptr @g1, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @calculateSquare(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %1 = load i32, ptr %x.addr, align 4
  %mul = mul nsw i32 %0, %1
  ret i32 %mul
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo() #0 {
entry:
  %x = alloca i128, align 16
  %0 = load i32, ptr @a, align 4
  %conv = sext i32 %0 to i128
  %1 = load i128, ptr @b, align 16
  %add = add i128 %1, %conv
  store i128 %add, ptr @b, align 16
  %2 = load i32, ptr @d, align 4
  %cmp = icmp ne i32 %2, 84347
  %conv1 = zext i1 %cmp to i32
  store i32 %conv1, ptr @c, align 4
  %3 = load i32, ptr @c, align 4
  %conv2 = sext i32 %3 to i128
  %4 = load i128, ptr @b, align 16
  %div = udiv i128 %4, %conv2
  store i128 %div, ptr @b, align 16
  %5 = load i128, ptr @b, align 16
  store i128 %5, ptr %x, align 16
  %6 = load i128, ptr %x, align 16
  %shr = lshr i128 %6, 0
  %conv3 = trunc i128 %shr to i64
  %7 = load i128, ptr %x, align 16
  %shr4 = lshr i128 %7, 64
  %conv5 = trunc i128 %shr4 to i64
  call void @store(i64 noundef %conv3, i64 noundef %conv5)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @foo()
  %0 = load i64, ptr @g0, align 8
  %cmp = icmp ne i64 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i64, ptr @g1, align 8
  %cmp1 = icmp ne i64 %1, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void @abort() #2
  unreachable

if.end:                                           ; preds = %lor.lhs.false
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
