; 109879806929140450613545331207603628328
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/109879806929140450613545331207603628328.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/109879806929140450613545331207603628328.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g = dso_local global i32 10, align 4
@d = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local signext i16 @fn2(i32 noundef %p1, i32 noundef %p2) #0 {
entry:
  %p1.addr = alloca i32, align 4
  %p2.addr = alloca i32, align 4
  store i32 %p1, ptr %p1.addr, align 4
  store i32 %p2, ptr %p2.addr, align 4
  %0 = load i32, ptr %p2.addr, align 4
  %cmp = icmp sge i32 %0, 2
  br i1 %cmp, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr %p2.addr, align 4
  %shr = ashr i32 5, %1
  %tobool = icmp ne i32 %shr, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %entry
  %2 = load i32, ptr %p1.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  %3 = load i32, ptr %p1.addr, align 4
  %4 = load i32, ptr %p2.addr, align 4
  %shl = shl i32 %3, %4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %shl, %cond.false ]
  %conv = trunc i32 %cond to i16
  ret i16 %conv
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %result = alloca i32, align 4
  %c = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 0, ptr %result, align 4
  br label %lbl_2582

lbl_2582:                                         ; preds = %if.then6, %entry
  %0 = load i32, ptr @g, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %lbl_2582
  store i32 -3, ptr %c, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, ptr %c, align 4
  %tobool1 = icmp ne i32 %1, 0
  br i1 %tobool1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr @g, align 4
  %call = call signext i16 @fn2(i32 noundef 1, i32 noundef %2)
  %conv = sext i16 %call to i32
  store i32 %conv, ptr %result, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr %c, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %c, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  br label %if.end9

if.else:                                          ; preds = %lbl_2582
  store i32 0, ptr %i, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc7, %if.else
  %4 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %4, 2
  br i1 %cmp, label %for.body4, label %for.end8

for.body4:                                        ; preds = %for.cond2
  %5 = load i32, ptr @d, align 4
  %tobool5 = icmp ne i32 %5, 0
  br i1 %tobool5, label %if.then6, label %if.end

if.then6:                                         ; preds = %for.body4
  br label %lbl_2582

if.end:                                           ; preds = %for.body4
  br label %for.inc7

for.inc7:                                         ; preds = %if.end
  %6 = load i32, ptr %i, align 4
  %add = add nsw i32 %6, 2
  store i32 %add, ptr %i, align 4
  br label %for.cond2, !llvm.loop !8

for.end8:                                         ; preds = %for.cond2
  br label %if.end9

if.end9:                                          ; preds = %for.end8, %for.end
  %7 = load i32, ptr %result, align 4
  %cmp10 = icmp ne i32 %7, 1
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end9
  call void @abort() #2
  unreachable

if.end13:                                         ; preds = %if.end9
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
