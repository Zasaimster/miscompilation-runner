; 116576015269773733167263722071107865570
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/116576015269773733167263722071107865570.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/116576015269773733167263722071107865570.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_3 = dso_local global i16 0, align 2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %l_2 = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 5, ptr %l_2, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  br i1 false, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %0 = load i32, ptr %l_2, align 4
  %1 = load i16, ptr @g_3, align 2
  %conv = sext i16 %1 to i32
  %or = or i32 %conv, %0
  %conv1 = trunc i32 %or to i16
  store i16 %conv1, ptr @g_3, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, ptr %l_2, align 4
  %sub = sub nsw i32 %2, 1
  %conv2 = trunc i32 %sub to i8
  %conv3 = zext i8 %conv2 to i32
  store i32 %conv3, ptr %l_2, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %3 = load i16, ptr @g_3, align 2
  %conv4 = sext i16 %3 to i32
  %cmp = icmp ne i32 %conv4, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  call void @abort() #2
  unreachable

if.end:                                           ; preds = %for.end
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
