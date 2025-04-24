; 119313439730968317488357032274864389886
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/119313439730968317488357032274864389886.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/119313439730968317488357032274864389886.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local global i32 0, align 4
@b = dso_local global i32 0, align 4
@e = dso_local global i16 0, align 2
@d = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %f = alloca i16, align 2
  %g = alloca i32, align 4
  %h = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr @b, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %1 = load i32, ptr @b, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, ptr @b, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %2 = load i32, ptr @a, align 4
  %conv = trunc i32 %2 to i16
  store i16 %conv, ptr %f, align 2
  store i32 15, ptr %g, align 4
  %3 = load i16, ptr %f, align 2
  %conv1 = sext i16 %3 to i32
  %tobool2 = icmp ne i32 %conv1, 0
  br i1 %tobool2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end
  %4 = load i16, ptr %f, align 2
  %conv3 = sext i16 %4 to i32
  br label %cond.end

cond.false:                                       ; preds = %for.end
  %5 = load i32, ptr %g, align 4
  %shl = shl i32 1, %5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv3, %cond.true ], [ %shl, %cond.false ]
  %conv4 = trunc i32 %cond to i16
  store i16 %conv4, ptr @e, align 2
  %6 = load i16, ptr @e, align 2
  %conv5 = sext i16 %6 to i32
  store i32 %conv5, ptr %h, align 4
  %7 = load i32, ptr %h, align 4
  %cmp = icmp eq i32 %7, 83647
  br i1 %cmp, label %cond.true7, label %cond.false8

cond.true7:                                       ; preds = %cond.end
  br label %cond.end9

cond.false8:                                      ; preds = %cond.end
  %8 = load i32, ptr %h, align 4
  br label %cond.end9

cond.end9:                                        ; preds = %cond.false8, %cond.true7
  %cond10 = phi i32 [ 0, %cond.true7 ], [ %8, %cond.false8 ]
  store i32 %cond10, ptr @d, align 4
  %9 = load i32, ptr @d, align 4
  %cmp11 = icmp ne i32 %9, 1
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end9
  call void @abort() #2
  unreachable

if.end:                                           ; preds = %cond.end9
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
