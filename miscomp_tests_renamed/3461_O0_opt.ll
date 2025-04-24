; 160613962394659138998329318880447391481
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/160613962394659138998329318880447391481_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/160613962394659138998329318880447391481.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@b = dso_local global i32 1, align 4
@c = dso_local global i32 0, align 4
@d = dso_local global ptr @c, align 8
@f = dso_local global i32 0, align 4
@e = internal global i32 0, align 4
@j = dso_local global i32 0, align 4
@a = dso_local global i32 0, align 4
@h = dso_local global i32 0, align 4
@g = dso_local global ptr null, align 8
@.str = private unnamed_addr constant [11 x i8] c"Finished!\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %k = alloca i64, align 8
  %l = alloca i32, align 4
  %m = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc10, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %for.body, label %for.end12

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr @b, align 4
  %conv = sext i32 %1 to i64
  store i64 %conv, ptr %k, align 8
  store i32 0, ptr @f, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, ptr @f, align 4
  %cmp2 = icmp slt i32 %2, 8
  br i1 %cmp2, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond1
  store ptr @e, ptr %m, align 8
  %3 = load ptr, ptr @d, align 8
  %4 = load i32, ptr %3, align 4
  store i32 %4, ptr @j, align 4
  %5 = load i32, ptr @a, align 4
  %6 = load i32, ptr @j, align 4
  %mul = mul nsw i32 %5, %6
  %sub = sub nsw i32 %mul, 1
  store i32 %sub, ptr @h, align 4
  %7 = load i32, ptr @h, align 4
  %cmp5 = icmp eq i32 %7, 0
  %conv6 = zext i1 %cmp5 to i32
  %conv7 = sext i32 %conv6 to i64
  %8 = load i64, ptr %k, align 8
  %cmp8 = icmp slt i64 %conv7, %8
  %conv9 = zext i1 %cmp8 to i32
  %9 = load ptr, ptr %m, align 8
  store i32 %conv9, ptr %9, align 4
  store ptr %l, ptr @g, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body4
  %10 = load i32, ptr @f, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, ptr @f, align 4
  br label %for.cond1, !llvm.loop !6

for.end:                                          ; preds = %for.cond1
  br label %for.inc10

for.inc10:                                        ; preds = %for.end
  %11 = load i32, ptr %i, align 4
  %inc11 = add nsw i32 %11, 1
  store i32 %inc11, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end12:                                        ; preds = %for.cond
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %12 = load i32, ptr @e, align 4
  %cmp13 = icmp ne i32 %12, 1
  br i1 %cmp13, label %if.then, label %if.end

if.then:                                          ; preds = %for.end12
  call void @abort() #3
  unreachable

if.end:                                           ; preds = %for.end12
  ret i32 0
}

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
