; 165361936242801769630264960502198875114
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/165361936242801769630264960502198875114.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/165361936242801769630264960502198875114.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local global i32 0, align 4
@b = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i8, align 1
  %d4 = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 7, ptr @a, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr @a, align 4
  %cmp = icmp ule i32 %0, 1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr @a, align 4
  %conv = trunc i32 %1 to i8
  store i8 %conv, ptr %d, align 1
  %2 = load i8, ptr %d, align 1
  %conv1 = sext i8 %2 to i32
  store i32 %conv1, ptr %c, align 4
  %3 = load i32, ptr @a, align 4
  %4 = load i32, ptr %c, align 4
  %cmp2 = icmp eq i32 %3, %4
  %conv3 = zext i1 %cmp2 to i32
  store i32 %conv3, ptr @b, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, ptr @a, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr @a, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %6 = load i32, ptr @a, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  store i32 1, ptr %d4, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  %7 = load i32, ptr @a, align 4
  %cmp5 = icmp ne i32 %7, 7
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  call void @abort() #2
  unreachable

if.end8:                                          ; preds = %if.end
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
