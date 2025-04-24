; 136628313944893909381620946614255452844
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/136628313944893909381620946614255452844.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/136628313944893909381620946614255452844.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local global i32 0, align 4
@h = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%d%d\00", align 1
@c = dso_local global i32 0, align 4
@f = dso_local global i32 0, align 4
@g = dso_local global i32 0, align 4
@d = dso_local global i32 0, align 4
@e = dso_local global ptr null, align 8
@b = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc21, %entry
  %0 = load i32, ptr @a, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %for.body, label %for.end22

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr @h, align 4
  %tobool1 = icmp ne i32 %1, 0
  br i1 %tobool1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %2 = load i32, ptr %i, align 4
  %tobool2 = icmp ne i32 %2, 0
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %3 = load i32, ptr @c, align 4
  %4 = load i32, ptr @f, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %3, i32 noundef %4) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body
  store i32 0, ptr %i, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc11, %if.end
  %5 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %5, 2
  br i1 %cmp, label %for.body4, label %for.end13

for.body4:                                        ; preds = %for.cond3
  %6 = load i32, ptr @g, align 4
  %tobool5 = icmp ne i32 %6, 0
  br i1 %tobool5, label %if.then6, label %if.end10

if.then6:                                         ; preds = %for.body4
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc, %if.then6
  %7 = load i32, ptr @d, align 4
  %cmp8 = icmp ult i32 %7, 10
  br i1 %cmp8, label %for.body9, label %for.end

for.body9:                                        ; preds = %for.cond7
  %8 = load ptr, ptr @e, align 8
  %9 = load i8, ptr %8, align 1
  %conv = sext i8 %9 to i32
  store i32 %conv, ptr @b, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body9
  %10 = load i32, ptr @d, align 4
  %inc = add i32 %10, 1
  store i32 %inc, ptr @d, align 4
  br label %for.cond7, !llvm.loop !6

for.end:                                          ; preds = %for.cond7
  br label %if.end10

if.end10:                                         ; preds = %for.end, %for.body4
  br label %for.inc11

for.inc11:                                        ; preds = %if.end10
  %11 = load i32, ptr %i, align 4
  %inc12 = add nsw i32 %11, 1
  store i32 %inc12, ptr %i, align 4
  br label %for.cond3, !llvm.loop !8

for.end13:                                        ; preds = %for.cond3
  store i32 0, ptr %i, align 4
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc18, %for.end13
  %12 = load i32, ptr %i, align 4
  %cmp15 = icmp slt i32 %12, 1
  br i1 %cmp15, label %for.body17, label %for.end20

for.body17:                                       ; preds = %for.cond14
  br label %for.inc18

for.inc18:                                        ; preds = %for.body17
  %13 = load i32, ptr %i, align 4
  %inc19 = add nsw i32 %13, 1
  store i32 %inc19, ptr %i, align 4
  br label %for.cond14, !llvm.loop !9

for.end20:                                        ; preds = %for.cond14
  br label %for.inc21

for.inc21:                                        ; preds = %for.end20
  %14 = load i32, ptr @a, align 4
  %dec = add nsw i32 %14, -1
  store i32 %dec, ptr @a, align 4
  br label %for.cond, !llvm.loop !10

for.end22:                                        ; preds = %for.cond
  call void @exit(i32 noundef 0) #4
  unreachable
}

; Function Attrs: nounwind
declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noreturn
declare void @exit(i32 noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
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
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
