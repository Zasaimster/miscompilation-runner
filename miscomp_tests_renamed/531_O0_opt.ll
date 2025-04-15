; 151790266927956755549709457619788517457
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/151790266927956755549709457619788517457_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/151790266927956755549709457619788517457.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { i32 }

@d = dso_local global ptr null, align 8
@e = dso_local global ptr @d, align 8
@a = dso_local global i32 0, align 4
@b = dso_local global %struct.S zeroinitializer, align 4
@c = dso_local global i8 0, align 1
@f = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 -19, ptr @a, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc4, %entry
  %0 = load i32, ptr @a, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %for.body, label %for.end6

for.body:                                         ; preds = %for.cond
  store i32 0, ptr @b, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, ptr @b, align 4
  %cmp = icmp slt i32 %1, 24
  br i1 %cmp, label %for.body2, label %for.end

for.body2:                                        ; preds = %for.cond1
  %2 = load i8, ptr @c, align 1
  %dec = add i8 %2, -1
  store i8 %dec, ptr @c, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body2
  %3 = load i32, ptr @b, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr @b, align 4
  br label %for.cond1, !llvm.loop !6

for.end:                                          ; preds = %for.cond1
  %4 = load ptr, ptr @e, align 8
  store ptr @f, ptr %4, align 8
  %5 = load ptr, ptr @d, align 8
  %tobool3 = icmp ne ptr %5, null
  br i1 %tobool3, label %if.end, label %if.then

if.then:                                          ; preds = %for.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %for.end
  br label %for.inc4

for.inc4:                                         ; preds = %if.end
  %6 = load i32, ptr @a, align 4
  %inc5 = add nsw i32 %6, 1
  store i32 %inc5, ptr @a, align 4
  br label %for.cond, !llvm.loop !8

for.end6:                                         ; preds = %for.cond
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end6, %if.then
  %7 = load i32, ptr %retval, align 4
  ret i32 %7
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
