; 173467501238922296118779240082092606196
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/173467501238922296118779240082092606196.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/173467501238922296118779240082092606196.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local global [20 x i32] zeroinitializer, align 16
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@c = dso_local global i32 0, align 4
@b = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @fn1() #0 {
entry:
  %retval = alloca i32, align 4
  %d = alloca i32, align 4
  %e = alloca i32, align 4
  %f = alloca i32, align 4
  %g = alloca i32, align 4
  store i32 100, ptr %g, align 4
  %0 = load i32, ptr @c, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %0)
  %idxprom = sext i32 %call to i64
  %arrayidx = getelementptr inbounds [20 x i32], ptr @a, i64 0, i64 %idxprom
  store i32 1, ptr %arrayidx, align 4
  store i32 0, ptr %e, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc25, %entry
  %1 = load i32, ptr %e, align 4
  %cmp = icmp slt i32 %1, 3
  br i1 %cmp, label %for.body, label %for.end27

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %d, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc22, %for.body
  %2 = load i32, ptr %d, align 4
  %cmp2 = icmp slt i32 %2, 2
  br i1 %cmp2, label %for.body3, label %for.end24

for.body3:                                        ; preds = %for.cond1
  store i32 0, ptr %f, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %3 = load i32, ptr %f, align 4
  %cmp5 = icmp slt i32 %3, 2
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %4 = load i32, ptr getelementptr inbounds ([20 x i32], ptr @a, i64 0, i64 12), align 16
  %cmp7 = icmp sgt i32 %4, 1
  %conv = zext i1 %cmp7 to i32
  %5 = load i32, ptr %g, align 4
  %xor = xor i32 %5, %conv
  store i32 %xor, ptr %g, align 4
  %6 = load i32, ptr %g, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body6
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %for.body6
  %7 = load i32, ptr @b, align 4
  %tobool8 = icmp ne i32 %7, 0
  br i1 %tobool8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end
  br label %for.end

if.end10:                                         ; preds = %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end10
  %8 = load i32, ptr %f, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %f, align 4
  br label %for.cond4, !llvm.loop !6

for.end:                                          ; preds = %if.then9, %for.cond4
  store i32 0, ptr @c, align 4
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc19, %for.end
  %9 = load i32, ptr @c, align 4
  %cmp12 = icmp slt i32 %9, 1
  br i1 %cmp12, label %for.body14, label %for.end21

for.body14:                                       ; preds = %for.cond11
  %10 = load i32, ptr %e, align 4
  %mul = mul nsw i32 %10, 3
  %add = add nsw i32 %mul, 9
  %idxprom15 = sext i32 %add to i64
  %arrayidx16 = getelementptr inbounds [20 x i32], ptr @a, i64 0, i64 %idxprom15
  %11 = load i32, ptr %arrayidx16, align 4
  %12 = load i32, ptr %d, align 4
  %idxprom17 = sext i32 %12 to i64
  %arrayidx18 = getelementptr inbounds [20 x i32], ptr @a, i64 0, i64 %idxprom17
  store i32 %11, ptr %arrayidx18, align 4
  br label %for.inc19

for.inc19:                                        ; preds = %for.body14
  %13 = load i32, ptr @c, align 4
  %inc20 = add nsw i32 %13, 1
  store i32 %inc20, ptr @c, align 4
  br label %for.cond11, !llvm.loop !8

for.end21:                                        ; preds = %for.cond11
  br label %for.inc22

for.inc22:                                        ; preds = %for.end21
  %14 = load i32, ptr %d, align 4
  %inc23 = add nsw i32 %14, 1
  store i32 %inc23, ptr %d, align 4
  br label %for.cond1, !llvm.loop !9

for.end24:                                        ; preds = %for.cond1
  br label %for.inc25

for.inc25:                                        ; preds = %for.end24
  %15 = load i32, ptr %e, align 4
  %inc26 = add nsw i32 %15, 1
  store i32 %inc26, ptr %e, align 4
  br label %for.cond, !llvm.loop !10

for.end27:                                        ; preds = %for.cond
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end27, %if.then
  %16 = load i32, ptr %retval, align 4
  ret i32 %16
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call i32 @fn1()
  %0 = load i32, ptr @a, align 16
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #3
  unreachable

if.end:                                           ; preds = %entry
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare void @abort() #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

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
