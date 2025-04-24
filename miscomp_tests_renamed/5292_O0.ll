; 193454959191454080174330505242336602396
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/193454959191454080174330505242336602396.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/193454959191454080174330505242336602396.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@b = dso_local global i32 0, align 4
@c = dso_local global ptr @b, align 8
@f = dso_local global i32 6, align 4
@a = dso_local global i32 0, align 4
@e = dso_local global i32 0, align 4
@g = dso_local global i32 0, align 4
@h = dso_local global i32 0, align 4
@d = dso_local global i16 0, align 2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %0 = load i32, ptr @f, align 4
  %conv = sext i32 %0 to i64
  %call = call zeroext i8 @foo(i64 noundef %conv, ptr noundef @a)
  %1 = load i32, ptr @e, align 4
  %cmp = icmp ne i32 %1, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #2
  unreachable

if.end:                                           ; preds = %entry
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i8 @foo(i64 noundef %p1, ptr noundef %p2) #0 {
entry:
  %p1.addr = alloca i64, align 8
  %p2.addr = alloca ptr, align 8
  %i = alloca ptr, align 8
  %j = alloca ptr, align 8
  store i64 %p1, ptr %p1.addr, align 8
  store ptr %p2, ptr %p2.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr @g, align 4
  %cmp = icmp sle i32 %0, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  store ptr @d, ptr %i, align 8
  store ptr @e, ptr %j, align 8
  %1 = load ptr, ptr @c, align 8
  %2 = load i32, ptr %1, align 4
  store i32 %2, ptr @h, align 4
  %3 = load i32, ptr @h, align 4
  %conv = trunc i32 %3 to i16
  %4 = load ptr, ptr %i, align 8
  store i16 %conv, ptr %4, align 2
  %5 = load ptr, ptr %i, align 8
  %6 = load i16, ptr %5, align 2
  %conv1 = sext i16 %6 to i32
  %7 = load ptr, ptr %p2.addr, align 8
  %8 = load i32, ptr %7, align 4
  %cmp2 = icmp eq i32 %conv1, %8
  %conv3 = zext i1 %cmp2 to i32
  %conv4 = sext i32 %conv3 to i64
  %9 = load i64, ptr %p1.addr, align 8
  %cmp5 = icmp ult i64 %conv4, %9
  %conv6 = zext i1 %cmp5 to i32
  %10 = load ptr, ptr %j, align 8
  store i32 %conv6, ptr %10, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, ptr @g, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, ptr @g, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  ret i8 42
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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
