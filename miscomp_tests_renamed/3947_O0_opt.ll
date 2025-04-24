; 168869238163990483685858385933796872389
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/168869238163990483685858385933796872389_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/168869238163990483685858385933796872389.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local global i16 1, align 2
@b = dso_local global i32 0, align 4
@g = dso_local global ptr @b, align 8
@f = dso_local global i16 0, align 2
@c = dso_local global i32 0, align 4
@d = dso_local global i32 0, align 4
@h = dso_local global i32 0, align 4
@i = dso_local global i32 0, align 4
@j = dso_local global i32 0, align 4
@e = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"This won't print.\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %0 = load i16, ptr @a, align 2
  %conv = trunc i16 %0 to i8
  %call = call i32 @foo(i8 noundef signext %conv)
  %1 = load ptr, ptr @g, align 8
  store i32 %call, ptr %1, align 4
  %2 = load i16, ptr @a, align 2
  %conv1 = sext i16 %2 to i32
  %cmp = icmp ne i32 %conv1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #3
  unreachable

if.end:                                           ; preds = %entry
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @foo(i8 noundef signext %p) #0 {
entry:
  %p.addr = alloca i8, align 1
  %k = alloca i32, align 4
  %l = alloca ptr, align 8
  store i8 %p, ptr %p.addr, align 1
  store i32 0, ptr @c, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %cmp = icmp slt i32 %call, 2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  store i32 0, ptr @j, align 4
  br i1 false, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %for.body
  %0 = load i8, ptr %p.addr, align 1
  %conv = sext i8 %0 to i32
  %tobool = icmp ne i32 %conv, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %for.body
  %1 = phi i1 [ true, %for.body ], [ %tobool, %lor.rhs ]
  %lor.ext = zext i1 %1 to i32
  store i32 %lor.ext, ptr @i, align 4
  %2 = load i32, ptr @i, align 4
  %3 = load i8, ptr %p.addr, align 1
  %conv1 = sext i8 %3 to i32
  %mul = mul nsw i32 %2, %conv1
  store i32 %mul, ptr %k, align 4
  %4 = load i32, ptr @e, align 4
  %5 = load i32, ptr %k, align 4
  %cmp2 = icmp ult i32 %4, %5
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.end
  store ptr @f, ptr %l, align 8
  %6 = load i32, ptr @d, align 4
  %tobool4 = icmp ne i32 %6, 0
  br i1 %tobool4, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then
  %7 = load i32, ptr @h, align 4
  %tobool5 = icmp ne i32 %7, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then
  %8 = phi i1 [ false, %if.then ], [ %tobool5, %land.rhs ]
  %land.ext = zext i1 %8 to i32
  %conv6 = trunc i32 %land.ext to i16
  store i16 %conv6, ptr @a, align 2
  %9 = load ptr, ptr %l, align 8
  store i16 0, ptr %9, align 2
  br label %if.end

if.end:                                           ; preds = %land.end, %lor.end
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load i32, ptr @c, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, ptr @c, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare void @abort() #1

declare i32 @printf(ptr noundef, ...) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

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
