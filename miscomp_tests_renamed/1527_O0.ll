; 133176131870858294618451971871534813329
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/133176131870858294618451971871534813329.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/133176131870858294618451971871534813329.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@i = dso_local global i32 0, align 4
@d = dso_local global i32 0, align 4
@c = dso_local global i32 0, align 4
@f = dso_local global i32 0, align 4
@e = dso_local global [1 x i8] zeroinitializer, align 1
@a = dso_local global [1 x i32] zeroinitializer, align 4
@b = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr @i, align 4
  %cmp = icmp slt i32 %0, 1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr @d, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.end4, label %if.then

if.then:                                          ; preds = %for.body
  %2 = load i32, ptr @c, align 4
  %cmp1 = icmp sgt i32 %2, 5
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  %3 = load i32, ptr @f, align 4
  %xor = xor i32 %3, 0
  store i32 %xor, ptr @f, align 4
  %4 = load i8, ptr @e, align 1
  %conv = sext i8 %4 to i32
  %and = and i32 %conv, %xor
  %conv3 = trunc i32 %and to i8
  store i8 %conv3, ptr @e, align 1
  br label %if.end4

if.end4:                                          ; preds = %if.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end4
  %5 = load i32, ptr @i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr @i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %6 = load i8, ptr @e, align 1
  %conv5 = sext i8 %6 to i32
  %shr = ashr i32 %conv5, 1
  %and6 = and i32 %shr, 1
  %idxprom = sext i32 %and6 to i64
  %arrayidx = getelementptr inbounds [1 x i32], ptr @a, i64 0, i64 %idxprom
  %7 = load i32, ptr %arrayidx, align 4
  store i32 %7, ptr @b, align 4
  %8 = load i32, ptr @b, align 4
  %cmp7 = icmp ne i32 %8, 0
  br i1 %cmp7, label %if.then9, label %if.end10

if.then9:                                         ; preds = %for.end
  call void @abort() #2
  unreachable

if.end10:                                         ; preds = %for.end
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
