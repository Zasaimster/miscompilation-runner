; 134360385018456022458395648270173148597
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/134360385018456022458395648270173148597_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/134360385018456022458395648270173148597.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@c = dso_local global i32 20, align 4
@a = dso_local global i32 0, align 4
@b = dso_local global i32 0, align 4
@d = dso_local global i8 0, align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %e = alloca i8, align 1
  store i32 0, ptr %retval, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc10, %entry
  %0 = load i32, ptr @a, align 4
  %cmp = icmp slt i32 %0, 1
  br i1 %cmp, label %for.body, label %for.end12

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, ptr @b, align 4
  %cmp2 = icmp slt i32 %1, 1
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %2 = load i8, ptr @d, align 1
  %conv = sext i8 %2 to i32
  %not = xor i32 %conv, -1
  %conv4 = trunc i32 %not to i8
  store i8 %conv4, ptr %e, align 1
  %3 = load i8, ptr @d, align 1
  %conv5 = sext i8 %3 to i32
  %cmp6 = icmp slt i32 %conv5, 1
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %4 = load i8, ptr @d, align 1
  store i8 %4, ptr %e, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  %5 = load i8, ptr %e, align 1
  store i8 %5, ptr @d, align 1
  %6 = load i32, ptr @c, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.end9, label %if.then8

if.then8:                                         ; preds = %if.end
  call void @abort() #2
  unreachable

if.end9:                                          ; preds = %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end9
  %7 = load i32, ptr @b, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr @b, align 4
  br label %for.cond1, !llvm.loop !6

for.end:                                          ; preds = %for.cond1
  br label %for.inc10

for.inc10:                                        ; preds = %for.end
  %8 = load i32, ptr @a, align 4
  %inc11 = add nsw i32 %8, 1
  store i32 %inc11, ptr @a, align 4
  br label %for.cond, !llvm.loop !8

for.end12:                                        ; preds = %for.cond
  %9 = load i8, ptr @d, align 1
  %conv13 = sext i8 %9 to i32
  %cmp14 = icmp ne i32 %conv13, 0
  br i1 %cmp14, label %if.then16, label %if.end17

if.then16:                                        ; preds = %for.end12
  call void @abort() #2
  unreachable

if.end17:                                         ; preds = %for.end12
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
!8 = distinct !{!8, !7}
