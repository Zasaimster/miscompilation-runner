; 128286557027077444594793620203575529763
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/128286557027077444594793620203575529763.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/128286557027077444594793620203575529763.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local global i32 1, align 4
@d = dso_local global i32 0, align 4
@e = dso_local global ptr @d, align 8
@c = dso_local global i64 0, align 8
@g = dso_local global ptr @c, align 8
@b = dso_local global i32 0, align 4
@f = dso_local global i64 0, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @foo(i32 noundef %h) #0 {
entry:
  %h.addr = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %h, ptr %h.addr, align 4
  %0 = load i32, ptr @b, align 4
  %conv = sext i32 %0 to i64
  %1 = load ptr, ptr @g, align 8
  store i64 %conv, ptr %1, align 8
  %conv1 = trunc i64 %conv to i32
  store i32 %conv1, ptr %j, align 4
  %2 = load i32, ptr %h.addr, align 4
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load i32, ptr %j, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %3, %cond.true ], [ 0, %cond.false ]
  ret i32 %cond
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %h = alloca i32, align 4
  %i = alloca i32, align 4
  %temp = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %0 = load i32, ptr @a, align 4
  store i32 %0, ptr %h, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr @b, align 4
  %cmp = icmp ne i32 %1, -20
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load volatile i64, ptr @f, align 8
  %conv = trunc i64 %2 to i32
  %3 = load ptr, ptr @e, align 8
  store i32 0, ptr %3, align 4
  %4 = load i32, ptr %h, align 4
  %call = call i32 @foo(i32 noundef %4)
  %5 = load ptr, ptr @e, align 8
  store i32 %call, ptr %5, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, ptr @b, align 4
  %dec = add nsw i32 %6, -1
  store i32 %dec, ptr @b, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc5, %for.end
  %7 = load i32, ptr %i, align 4
  %cmp2 = icmp slt i32 %7, 10
  br i1 %cmp2, label %for.body4, label %for.end6

for.body4:                                        ; preds = %for.cond1
  %8 = load i32, ptr %i, align 4
  %mul = mul nsw i32 %8, 2
  store i32 %mul, ptr %temp, align 4
  br label %for.inc5

for.inc5:                                         ; preds = %for.body4
  %9 = load i32, ptr %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond1, !llvm.loop !8

for.end6:                                         ; preds = %for.cond1
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
