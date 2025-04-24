; 15874462016895533421530275372460089113
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/15874462016895533421530275372460089113_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/15874462016895533421530275372460089113.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local global i32 0, align 4
@b = dso_local global ptr @a, align 8
@e = dso_local global i32 0, align 4
@f = dso_local global ptr @e, align 8
@d = dso_local global i32 0, align 4
@h = dso_local global ptr @d, align 8
@k = dso_local global [1 x i32] [i32 1], align 4
@c = dso_local global i32 0, align 4
@g = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @foo(i32 noundef %p) #0 {
entry:
  %p.addr = alloca i32, align 4
  store i32 %p, ptr %p.addr, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc6, %entry
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.cond
  %0 = load i32, ptr @c, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %1 = load i32, ptr @c, align 4
  %dec = add nsw i32 %1, -1
  store i32 %dec, ptr @c, align 4
  br label %for.cond1, !llvm.loop !6

for.end:                                          ; preds = %for.cond1
  %2 = load i32, ptr %p.addr, align 4
  %conv = sext i32 %2 to i64
  %3 = load i32, ptr @a, align 4
  %conv2 = sext i32 %3 to i64
  %xor = xor i64 8589934591, %conv2
  %4 = load ptr, ptr @b, align 8
  %5 = load i32, ptr %4, align 4
  %conv3 = sext i32 %5 to i64
  %and = and i64 %xor, %conv3
  %cmp = icmp sgt i64 %conv, %and
  %conv4 = zext i1 %cmp to i32
  %6 = load ptr, ptr @h, align 8
  store i32 %conv4, ptr %6, align 4
  %7 = load ptr, ptr @f, align 8
  store i32 %conv4, ptr %7, align 4
  %8 = load i32, ptr @g, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [1 x i32], ptr @k, i64 0, i64 %idxprom
  %9 = load i32, ptr %arrayidx, align 4
  %tobool5 = icmp ne i32 %9, 0
  br i1 %tobool5, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  ret i32 0

if.end:                                           ; preds = %for.end
  br label %for.inc6

for.inc6:                                         ; preds = %if.end
  %10 = load i32, ptr @g, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, ptr @g, align 4
  br label %for.cond
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call i32 @foo(i32 noundef 1)
  %0 = load i32, ptr @d, align 4
  %cmp = icmp ne i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #2
  unreachable

if.end:                                           ; preds = %entry
  ret i32 0
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
