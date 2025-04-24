; 162141865229383807839397070285153538569
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/162141865229383807839397070285153538569.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/162141865229383807839397070285153538569.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@c = dso_local global i32 5, align 4
@b = dso_local global i16 0, align 2
@a = internal global <{ i32, i32, i32, i32, i32, i32, i32, [33 x i32] }> <{ i32 7, i32 5, i32 3, i32 3, i32 0, i32 0, i32 3, [33 x i32] zeroinitializer }>, align 16

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i16 0, ptr @b, align 2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i16, ptr @b, align 2
  %conv = sext i16 %0 to i32
  %cmp = icmp sle i32 %conv, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i16, ptr @b, align 2
  %conv2 = sext i16 %1 to i32
  %add = add nsw i32 %conv2, 6
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds [40 x i32], ptr @a, i64 0, i64 %idxprom
  %2 = load i32, ptr %arrayidx, align 4
  %3 = load i32, ptr @c, align 4
  %tobool = icmp ne i32 %3, 0
  %lor.ext = zext i1 %tobool to i32
  %xor = xor i32 %2, %lor.ext
  %tobool3 = icmp ne i32 %xor, 0
  br i1 %tobool3, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  br label %if.end

if.else:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %4 = load i16, ptr @b, align 2
  %inc = add i16 %4, 1
  store i16 %inc, ptr @b, align 2
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %if.else, %for.cond
  %5 = load i16, ptr @b, align 2
  %conv4 = sext i16 %5 to i32
  %cmp5 = icmp ne i32 %conv4, 4
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         ; preds = %for.end
  call void @abort() #3
  unreachable

if.end8:                                          ; preds = %for.end
  call void @exit(i32 noundef 0) #4
  unreachable
}

; Function Attrs: noreturn nounwind
declare void @abort() #1

; Function Attrs: noreturn
declare void @exit(i32 noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }
attributes #4 = { noreturn }

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
