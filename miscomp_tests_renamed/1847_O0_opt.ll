; 173187048550981452310946287729296278279
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/173187048550981452310946287729296278279_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/173187048550981452310946287729296278279.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local global i32 80, align 4
@w = dso_local global i32 0, align 4
@o = dso_local global i32 0, align 4
@e = dso_local global i32 0, align 4
@b = dso_local global i32 0, align 4
@c = dso_local global i16 0, align 2
@z = dso_local global i32 0, align 4
@u = dso_local global i32 0, align 4
@a = dso_local global i32 0, align 4
@t = dso_local global i16 0, align 2
@f = dso_local global i32 0, align 4
@q = dso_local global i16 0, align 2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %g = alloca i8, align 1
  %h = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr @d, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %for.body, label %for.end19

for.body:                                         ; preds = %for.cond
  br label %while.cond

while.cond:                                       ; preds = %for.end12, %for.body
  %1 = load i32, ptr @o, align 4
  %tobool1 = icmp ne i32 %1, 0
  br i1 %tobool1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %for.cond2

for.cond2:                                        ; preds = %for.end11, %while.body
  %2 = load i32, ptr @e, align 4
  %tobool3 = icmp ne i32 %2, 0
  br i1 %tobool3, label %for.body4, label %for.end12

for.body4:                                        ; preds = %for.cond2
  %3 = load i32, ptr @b, align 4
  %conv = trunc i32 %3 to i16
  store i16 %conv, ptr @c, align 2
  %4 = load i32, ptr @z, align 4
  store i32 %4, ptr @o, align 4
  store i32 %4, ptr %h, align 4
  br label %for.cond5

for.cond5:                                        ; preds = %for.end, %for.body4
  %5 = load i32, ptr @u, align 4
  %tobool6 = icmp ne i32 %5, 0
  br i1 %tobool6, label %for.body7, label %for.end11

for.body7:                                        ; preds = %for.cond5
  br label %for.cond8

for.cond8:                                        ; preds = %for.body10, %for.body7
  %6 = load i32, ptr @a, align 4
  %tobool9 = icmp ne i32 %6, 0
  br i1 %tobool9, label %for.body10, label %for.end

for.body10:                                       ; preds = %for.cond8
  br label %for.cond8, !llvm.loop !6

for.end:                                          ; preds = %for.cond8
  br label %for.cond5, !llvm.loop !8

for.end11:                                        ; preds = %for.cond5
  br label %for.cond2, !llvm.loop !9

for.end12:                                        ; preds = %for.cond2
  br label %while.cond, !llvm.loop !10

while.end:                                        ; preds = %while.cond
  %7 = load i16, ptr @t, align 2
  %conv13 = sext i16 %7 to i32
  %cmp = icmp slt i32 %conv13, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %8 = load i32, ptr @w, align 4
  %conv15 = trunc i32 %8 to i8
  store i8 %conv15, ptr %g, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  %9 = load i8, ptr %g, align 1
  %conv16 = sext i8 %9 to i32
  store i32 %conv16, ptr @f, align 4
  %10 = load i8, ptr %g, align 1
  %conv17 = sext i8 %10 to i32
  %tobool18 = icmp ne i32 %conv17, 0
  br i1 %tobool18, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end
  store i16 1, ptr @q, align 2
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end
  br label %for.inc

for.inc:                                          ; preds = %land.end
  %11 = load i32, ptr @d, align 4
  %dec = add nsw i32 %11, -1
  store i32 %dec, ptr @d, align 4
  br label %for.cond, !llvm.loop !11

for.end19:                                        ; preds = %for.cond
  %12 = load i16, ptr @q, align 2
  %conv20 = sext i16 %12 to i32
  %cmp21 = icmp ne i32 %conv20, 1
  br i1 %cmp21, label %if.then23, label %if.end24

if.then23:                                        ; preds = %for.end19
  call void @abort() #2
  unreachable

if.end24:                                         ; preds = %for.end19
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
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
