; 18528814939139858410582845703954855560
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/18528814939139858410582845703954855560.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/18528814939139858410582845703954855560.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"I'm not used\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %x = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  store i32 %call, ptr %x, align 4
  store i32 10, ptr %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %x, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %1 = load i32, ptr %x, align 4
  %sub = sub nsw i32 %1, 1
  store i32 %sub, ptr %x, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %2 = load i32, ptr %x, align 4
  %tobool1 = icmp ne i32 %2, 0
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %for.end
  store i32 10, ptr %x, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.body4, %if.end
  %3 = load i32, ptr %x, align 4
  %tobool3 = icmp ne i32 %3, 0
  br i1 %tobool3, label %for.body4, label %for.end6

for.body4:                                        ; preds = %for.cond2
  %4 = load i32, ptr %x, align 4
  %sub5 = sub nsw i32 %4, 1
  store i32 %sub5, ptr %x, align 4
  br label %for.cond2, !llvm.loop !8

for.end6:                                         ; preds = %for.cond2
  %5 = load i32, ptr %x, align 4
  store i32 %5, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end6, %if.then
  %6 = load i32, ptr %retval, align 4
  ret i32 %6
}

declare i32 @printf(ptr noundef, ...) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
