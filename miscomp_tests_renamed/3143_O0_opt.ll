; 120441174311989826463918153298775692188
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/120441174311989826463918153298775692188_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/120441174311989826463918153298775692188.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@e = dso_local global i32 0, align 4
@d = dso_local global i32 0, align 4
@b = dso_local global i32 0, align 4
@c = dso_local global i32 0, align 4
@a = dso_local global [42 x i32] zeroinitializer, align 16

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(i32 noundef %x, i32 noundef %y) #0 {
entry:
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  store i32 %y, ptr %y.addr, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @bar() #0 {
entry:
  %i = alloca i32, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  br i1 true, label %for.body, label %for.end8

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %i, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc5, %for.body
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 4
  br i1 %cmp, label %for.body2, label %for.end6

for.body2:                                        ; preds = %for.cond1
  store i32 0, ptr @e, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body2
  %1 = load i32, ptr @e, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond3
  br label %for.inc

for.inc:                                          ; preds = %for.body4
  store i32 1, ptr @e, align 4
  br label %for.cond3, !llvm.loop !6

for.end:                                          ; preds = %for.cond3
  br label %for.inc5

for.inc5:                                         ; preds = %for.end
  %2 = load i32, ptr %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond1, !llvm.loop !8

for.end6:                                         ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end6
  store i32 1, ptr @d, align 4
  br label %for.cond

for.end8:                                         ; preds = %for.cond
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 0, ptr @b, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr @b, align 4
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %1 = load i32, ptr @c, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, ptr @b, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [42 x i32], ptr @a, i64 0, i64 %idxprom
  store i32 0, ptr %arrayidx, align 4
  %call = call i32 @bar()
  call void @foo(i32 noundef 0, i32 noundef %call)
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %while.cond
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %3 = load i32, ptr @b, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr @b, align 4
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
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
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
