; 157658020400645697206218107397816664512
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/157658020400645697206218107397816664512.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/157658020400645697206218107397816664512.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@e = dso_local global i32 1, align 4
@c = dso_local global i32 0, align 4
@b = dso_local global i32 0, align 4
@d = dso_local global i32 0, align 4
@f = dso_local global i32 0, align 4
@g = dso_local global i32 0, align 4
@h = dso_local global i32 0, align 4
@j = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Hello, World!\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call i32 @fn1()
  %0 = load i32, ptr @c, align 4
  %cmp = icmp ne i32 %0, -4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #3
  unreachable

if.end:                                           ; preds = %entry
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare void @abort() #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @fn1() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca i32, align 4
  %0 = load i32, ptr @c, align 4
  store i32 %0, ptr %a, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %1 = load i32, ptr @c, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %2 = load i32, ptr @b, align 4
  %tobool1 = icmp ne i32 %2, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %3 = phi i1 [ true, %entry ], [ %tobool1, %lor.rhs ]
  %lor.ext = zext i1 %3 to i32
  %4 = load i32, ptr @e, align 4
  %rem = srem i32 %lor.ext, %4
  store i32 %rem, ptr @g, align 4
  %5 = load i32, ptr @g, align 4
  %tobool2 = icmp ne i32 %5, 0
  br i1 %tobool2, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %lor.end
  %6 = load i32, ptr @f, align 4
  %tobool3 = icmp ne i32 %6, 0
  br i1 %tobool3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false, %lor.end
  %7 = load i32, ptr @b, align 4
  %tobool4 = icmp ne i32 %7, 0
  br i1 %tobool4, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 9, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false
  %8 = load i32, ptr @d, align 4
  store i32 %8, ptr @e, align 4
  store i32 0, ptr @c, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %9 = load i32, ptr @c, align 4
  %cmp = icmp sgt i32 %9, -4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, ptr @c, align 4
  %dec = add nsw i32 %10, -1
  store i32 %dec, ptr @c, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %11 = load i32, ptr @d, align 4
  %tobool5 = icmp ne i32 %11, 0
  br i1 %tobool5, label %if.then6, label %if.end8

if.then6:                                         ; preds = %for.end
  %12 = load i32, ptr @c, align 4
  %dec7 = add nsw i32 %12, -1
  store i32 %dec7, ptr @c, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %for.end
  %13 = load i32, ptr @c, align 4
  store i32 %13, ptr @j, align 4
  %14 = load i32, ptr @d, align 4
  store i32 %14, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end8, %if.then
  %15 = load i32, ptr %retval, align 4
  ret i32 %15
}

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
