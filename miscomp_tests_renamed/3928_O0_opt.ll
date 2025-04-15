; 164269889498591949216762873489462774854
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/164269889498591949216762873489462774854_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/164269889498591949216762873489462774854.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@c = dso_local global i32 1, align 4
@g = dso_local global i32 0, align 4
@b = dso_local global i32 0, align 4
@d = dso_local global i32 0, align 4
@f = dso_local global i8 0, align 1
@i = dso_local global i16 0, align 2
@h = dso_local global i64 0, align 8
@a = dso_local global i32 0, align 4
@e = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo() #0 {
entry:
  %call = call i32 (...) @example3()
  ret void
}

declare i32 @example3(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %j = alloca i16, align 2
  %k = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %0 = load i32, ptr @g, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load volatile i32, ptr @b, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @foo()
  store i32 0, ptr @d, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, ptr @d, align 4
  %cmp = icmp sge i32 %2, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load volatile i8, ptr @f, align 1
  %conv = sext i8 %3 to i16
  store i16 %conv, ptr %j, align 2
  store i32 0, ptr %k, align 4
  %4 = load i16, ptr %j, align 2
  %conv1 = sext i16 %4 to i32
  %tobool2 = icmp ne i32 %conv1, 0
  br i1 %tobool2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %5 = load i16, ptr %j, align 2
  %conv3 = sext i16 %5 to i32
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %6 = load i16, ptr %j, align 2
  %conv4 = sext i16 %6 to i32
  %7 = load i32, ptr %k, align 4
  %shl = shl i32 %conv4, %7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv3, %cond.true ], [ %shl, %cond.false ]
  %conv5 = trunc i32 %cond to i16
  store i16 %conv5, ptr @i, align 2
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %8 = load i32, ptr @d, align 4
  %dec = add nsw i32 %8, -1
  store i32 %dec, ptr @d, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %9 = load i32, ptr @c, align 4
  %cmp6 = icmp eq i32 %9, 0
  br i1 %cmp6, label %cond.true8, label %cond.false9

cond.true8:                                       ; preds = %for.end
  br label %cond.end11

cond.false9:                                      ; preds = %for.end
  %10 = load i16, ptr @i, align 2
  %conv10 = sext i16 %10 to i32
  br label %cond.end11

cond.end11:                                       ; preds = %cond.false9, %cond.true8
  %cond12 = phi i32 [ 0, %cond.true8 ], [ %conv10, %cond.false9 ]
  %conv13 = sext i32 %cond12 to i64
  store i64 %conv13, ptr @h, align 8
  %11 = load i64, ptr @h, align 8
  %conv14 = trunc i64 %11 to i32
  store i32 %conv14, ptr @a, align 4
  %12 = load i32, ptr @a, align 4
  %cmp15 = icmp ne i32 %12, 0
  br i1 %cmp15, label %if.then17, label %if.end18

if.then17:                                        ; preds = %cond.end11
  call void @abort() #3
  unreachable

if.end18:                                         ; preds = %cond.end11
  ret i32 0
}

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
