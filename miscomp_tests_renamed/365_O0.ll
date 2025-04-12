; 177827850325735871836411112195056343817
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/177827850325735871836411112195056343817.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/177827850325735871836411112195056343817.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@b = dso_local global i32 100, align 4
@a = dso_local global i32 0, align 4
@e = dso_local global i32 0, align 4
@c = dso_local global i32 0, align 4
@d = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %f = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 0, ptr %f, align 4
  store i32 0, ptr @a, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc5, %entry
  %0 = load i32, ptr @a, align 4
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %for.body, label %for.end7

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %f, align 4
  %xor = xor i32 8, %1
  %and = and i32 %xor, 1
  %2 = load i32, ptr @b, align 4
  %and1 = and i32 %2, %and
  store i32 %and1, ptr @b, align 4
  store i32 0, ptr @e, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %3 = load i32, ptr @e, align 4
  %cmp3 = icmp slt i32 %3, 6
  br i1 %cmp3, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond2
  %4 = load volatile i32, ptr @c, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body4
  %5 = load volatile i32, ptr @d, align 4
  store i32 %5, ptr %f, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i32, ptr @e, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr @e, align 4
  br label %for.cond2, !llvm.loop !6

for.end:                                          ; preds = %for.cond2
  br label %for.inc5

for.inc5:                                         ; preds = %for.end
  %7 = load i32, ptr @a, align 4
  %inc6 = add nsw i32 %7, 1
  store i32 %inc6, ptr @a, align 4
  br label %for.cond, !llvm.loop !8

for.end7:                                         ; preds = %for.cond
  %8 = load i32, ptr @b, align 4
  %cmp8 = icmp ne i32 %8, 0
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %for.end7
  call void @abort() #2
  unreachable

if.end10:                                         ; preds = %for.end7
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
