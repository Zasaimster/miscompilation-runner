; 108509259147682203012343338383443828234
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/108509259147682203012343338383443828234.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/108509259147682203012343338383443828234.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@e = dso_local global i32 0, align 4
@c = dso_local global i32 0, align 4
@b = dso_local global i32 0, align 4
@d = dso_local global i32 0, align 4
@f = dso_local global i32 0, align 4
@g = dso_local global i32 0, align 4
@h = dso_local global i32 0, align 4
@j = dso_local global i32 0, align 4

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
  call void @abort() #2
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
  %1 = load i32, ptr @h, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 9, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, ptr @c, align 4
  %tobool1 = icmp ne i32 %2, 0
  br i1 %tobool1, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end
  %3 = load i32, ptr @b, align 4
  %tobool2 = icmp ne i32 %3, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end
  %4 = phi i1 [ true, %if.end ], [ %tobool2, %lor.rhs ]
  %lor.ext = zext i1 %4 to i32
  %5 = load i32, ptr @e, align 4
  %rem = srem i32 %lor.ext, %5
  store i32 %rem, ptr @g, align 4
  %6 = load i32, ptr @g, align 4
  %tobool3 = icmp ne i32 %6, 0
  br i1 %tobool3, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %lor.end
  %7 = load i32, ptr @f, align 4
  %tobool4 = icmp ne i32 %7, 0
  br i1 %tobool4, label %land.lhs.true, label %if.end7

land.lhs.true:                                    ; preds = %lor.lhs.false, %lor.end
  %8 = load i32, ptr @b, align 4
  %tobool5 = icmp ne i32 %8, 0
  br i1 %tobool5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %land.lhs.true
  store i32 9, ptr %retval, align 4
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %lor.lhs.false
  %9 = load i32, ptr @d, align 4
  store i32 %9, ptr @e, align 4
  store i32 0, ptr @c, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end7
  %10 = load i32, ptr @c, align 4
  %cmp = icmp sgt i32 %10, -4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, ptr @c, align 4
  %dec = add nsw i32 %11, -1
  store i32 %dec, ptr @c, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %12 = load i32, ptr @d, align 4
  %tobool8 = icmp ne i32 %12, 0
  br i1 %tobool8, label %if.then9, label %if.end11

if.then9:                                         ; preds = %for.end
  %13 = load i32, ptr @c, align 4
  %dec10 = add nsw i32 %13, -1
  store i32 %dec10, ptr @c, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %for.end
  %14 = load i32, ptr @c, align 4
  store i32 %14, ptr @j, align 4
  %15 = load i32, ptr @d, align 4
  store i32 %15, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end11, %if.then6, %if.then
  %16 = load i32, ptr %retval, align 4
  ret i32 %16
}

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
