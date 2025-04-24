; 157633346433590287452837291822314910363
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/157633346433590287452837291822314910363_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/157633346433590287452837291822314910363.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@i = dso_local global i16 0, align 2
@b = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Main function executed.\0A\00", align 1
@k = dso_local global i32 0, align 4
@g = dso_local global i32 0, align 4
@j = dso_local global i32 0, align 4
@c = dso_local global i32 0, align 4
@a = dso_local global i8 0, align 1
@d = dso_local global i32 0, align 4
@h = dso_local global i8 0, align 1
@e = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %m = alloca i32, align 4
  %o = alloca i8, align 1
  %p = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  %call = call i32 (...) @printHello()
  %0 = load i16, ptr @i, align 2
  %conv = sext i16 %0 to i32
  %xor = xor i32 %conv, %call
  %conv1 = trunc i32 %xor to i16
  store i16 %conv1, ptr @i, align 2
  %conv2 = sext i16 %conv1 to i32
  store i32 %conv2, ptr %m, align 4
  store i32 0, ptr @b, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc21, %entry
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %cmp = icmp slt i32 %call3, 1
  br i1 %cmp, label %for.body, label %for.end23

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %m, align 4
  %conv5 = trunc i32 %1 to i8
  store i8 %conv5, ptr %o, align 1
  %2 = load i32, ptr @k, align 4
  store i32 %2, ptr @g, align 4
  %3 = load i32, ptr @j, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %for.body
  %4 = load volatile i32, ptr @c, align 4
  %tobool6 = icmp ne i32 %4, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %for.body
  %5 = phi i1 [ true, %for.body ], [ %tobool6, %lor.rhs ]
  %lor.ext = zext i1 %5 to i32
  store i32 %lor.ext, ptr @j, align 4
  %6 = load i8, ptr @a, align 1
  %conv7 = sext i8 %6 to i32
  %7 = load i8, ptr %o, align 1
  %conv8 = sext i8 %7 to i32
  %cmp9 = icmp ne i32 %conv7, %conv8
  br i1 %cmp9, label %if.then, label %if.else

if.then:                                          ; preds = %lor.end
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc, %if.then
  %8 = load i32, ptr @d, align 4
  %cmp12 = icmp slt i32 %8, 1
  br i1 %cmp12, label %for.body14, label %for.end

for.body14:                                       ; preds = %for.cond11
  br label %for.inc

for.inc:                                          ; preds = %for.body14
  %9 = load i32, ptr @d, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, ptr @d, align 4
  br label %for.cond11, !llvm.loop !6

for.end:                                          ; preds = %for.cond11
  br label %if.end

if.else:                                          ; preds = %lor.end
  store ptr @h, ptr %p, align 8
  %10 = load ptr, ptr %p, align 8
  store i8 1, ptr %10, align 1
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc18, %if.else
  %11 = load i32, ptr @e, align 4
  %tobool16 = icmp ne i32 %11, 0
  br i1 %tobool16, label %for.body17, label %for.end20

for.body17:                                       ; preds = %for.cond15
  br label %for.inc18

for.inc18:                                        ; preds = %for.body17
  %12 = load i32, ptr @e, align 4
  %inc19 = add nsw i32 %12, 1
  store i32 %inc19, ptr @e, align 4
  br label %for.cond15, !llvm.loop !8

for.end20:                                        ; preds = %for.cond15
  br label %if.end

if.end:                                           ; preds = %for.end20, %for.end
  br label %for.inc21

for.inc21:                                        ; preds = %if.end
  %13 = load i32, ptr @b, align 4
  %inc22 = add nsw i32 %13, 1
  store i32 %inc22, ptr @b, align 4
  br label %for.cond, !llvm.loop !9

for.end23:                                        ; preds = %for.cond
  %14 = load i8, ptr @h, align 1
  %conv24 = sext i8 %14 to i32
  %cmp25 = icmp ne i32 %conv24, 0
  br i1 %cmp25, label %if.then27, label %if.end28

if.then27:                                        ; preds = %for.end23
  call void @abort() #3
  unreachable

if.end28:                                         ; preds = %for.end23
  ret i32 0
}

declare i32 @printHello(...) #1

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noreturn nounwind
declare void @abort() #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
