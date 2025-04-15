; 157807328989768302600495233350853324471
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/157807328989768302600495233350853324471_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/157807328989768302600495233350853324471.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@c = dso_local global i32 0, align 4
@b = dso_local global i32 0, align 4
@d = dso_local global i16 0, align 2
@a = dso_local global i8 0, align 1
@.str = private unnamed_addr constant [30 x i8] c"This function is never used.\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %e = alloca i32, align 4
  %timeout = alloca i32, align 4
  %f = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 2, ptr %e, align 4
  store i32 0, ptr %timeout, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr @c, align 4
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %e, align 4
  %not = xor i32 %1, -1
  %div = udiv i32 %not, 7
  store i32 %div, ptr %f, align 4
  %2 = load i32, ptr %f, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %3 = load i32, ptr @b, align 4
  %tobool1 = icmp ne i32 %3, 0
  br i1 %tobool1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then
  %4 = load i16, ptr @d, align 2
  %conv = sext i16 %4 to i32
  %tobool2 = icmp ne i32 %conv, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then
  %5 = phi i1 [ false, %if.then ], [ %tobool2, %land.rhs ]
  %land.ext = zext i1 %5 to i32
  %not3 = xor i32 %land.ext, -1
  store i32 %not3, ptr %e, align 4
  %conv4 = trunc i32 %not3 to i8
  store i8 %conv4, ptr @a, align 1
  br label %if.end

if.end:                                           ; preds = %land.end, %for.body
  br label %while.cond

while.cond:                                       ; preds = %if.end11, %if.end
  %6 = load i32, ptr %e, align 4
  %cmp5 = icmp ult i32 %6, 94
  br i1 %cmp5, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load i32, ptr %e, align 4
  %inc = add i32 %7, 1
  store i32 %inc, ptr %e, align 4
  %8 = load i32, ptr %timeout, align 4
  %inc7 = add i32 %8, 1
  store i32 %inc7, ptr %timeout, align 4
  %cmp8 = icmp ugt i32 %inc7, 100
  br i1 %cmp8, label %if.then10, label %if.end11

if.then10:                                        ; preds = %while.body
  br label %die

if.end11:                                         ; preds = %while.body
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %9 = load i32, ptr @c, align 4
  %inc12 = add nsw i32 %9, 1
  store i32 %inc12, ptr @c, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  ret i32 0

die:                                              ; preds = %if.then10
  call void @abort() #3
  unreachable
}

; Function Attrs: noreturn nounwind
declare void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @unusedFunction() #0 {
entry:
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  ret void
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
!8 = distinct !{!8, !7}
