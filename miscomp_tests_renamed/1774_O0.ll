; 140280828340213805281209148891735095030
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/140280828340213805281209148891735095030.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/140280828340213805281209148891735095030.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local global i32 1, align 4
@a = dso_local global i32 0, align 4
@b = dso_local global i32 0, align 4
@c = dso_local global i32 0, align 4
@e = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call signext i8 @foo()
  call void @exit(i32 noundef 0) #2
  unreachable
}

; Function Attrs: noreturn
declare void @exit(i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal signext i8 @foo() #0 {
entry:
  %retval = alloca i8, align 1
  %f = alloca i32, align 4
  %g = alloca i32, align 4
  %i = alloca i32, align 4
  %temp = alloca i32, align 4
  %0 = load i32, ptr @a, align 4
  store i32 %0, ptr %g, align 4
  store i32 1, ptr %f, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc28, %entry
  %1 = load i32, ptr %f, align 4
  %cmp = icmp slt i32 %1, 3
  br i1 %cmp, label %for.body, label %for.end30

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc25, %for.body
  %2 = load i32, ptr @b, align 4
  %cmp2 = icmp slt i32 %2, 1
  br i1 %cmp2, label %for.body3, label %for.end27

for.body3:                                        ; preds = %for.cond1
  %3 = load i32, ptr @d, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body3
  store i32 0, ptr @c, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc18, %if.then
  %4 = load i32, ptr @c, align 4
  %cmp5 = icmp slt i32 %4, 4
  br i1 %cmp5, label %for.body6, label %for.end20

for.body6:                                        ; preds = %for.cond4
  store i32 0, ptr %f, align 4
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc15, %for.body6
  %5 = load i32, ptr %f, align 4
  %cmp8 = icmp slt i32 %5, 3
  br i1 %cmp8, label %for.body9, label %for.end17

for.body9:                                        ; preds = %for.cond7
  store i32 0, ptr @e, align 4
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc, %for.body9
  %6 = load i32, ptr @e, align 4
  %cmp11 = icmp slt i32 %6, 1
  br i1 %cmp11, label %for.body12, label %for.end

for.body12:                                       ; preds = %for.cond10
  %7 = load i32, ptr %g, align 4
  store i32 %7, ptr @a, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body12
  %8 = load i32, ptr @e, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr @e, align 4
  br label %for.cond10, !llvm.loop !6

for.end:                                          ; preds = %for.cond10
  %9 = load i32, ptr %f, align 4
  %tobool13 = icmp ne i32 %9, 0
  br i1 %tobool13, label %if.then14, label %if.end

if.then14:                                        ; preds = %for.end
  br label %for.end17

if.end:                                           ; preds = %for.end
  br label %for.inc15

for.inc15:                                        ; preds = %if.end
  %10 = load i32, ptr %f, align 4
  %inc16 = add nsw i32 %10, 1
  store i32 %inc16, ptr %f, align 4
  br label %for.cond7, !llvm.loop !8

for.end17:                                        ; preds = %if.then14, %for.cond7
  br label %for.inc18

for.inc18:                                        ; preds = %for.end17
  %11 = load i32, ptr @c, align 4
  %inc19 = add nsw i32 %11, 1
  store i32 %inc19, ptr @c, align 4
  br label %for.cond4, !llvm.loop !9

for.end20:                                        ; preds = %for.cond4
  br label %if.end24

if.else:                                          ; preds = %for.body3
  %12 = load i32, ptr %f, align 4
  %tobool21 = icmp ne i32 %12, 0
  br i1 %tobool21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.else
  br label %for.inc25

if.end23:                                         ; preds = %if.else
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %for.end20
  store i8 0, ptr %retval, align 1
  br label %return

for.inc25:                                        ; preds = %if.then22
  %13 = load i32, ptr @b, align 4
  %inc26 = add nsw i32 %13, 1
  store i32 %inc26, ptr @b, align 4
  br label %for.cond1, !llvm.loop !10

for.end27:                                        ; preds = %for.cond1
  br label %for.inc28

for.inc28:                                        ; preds = %for.end27
  %14 = load i32, ptr %f, align 4
  %inc29 = add nsw i32 %14, 1
  store i32 %inc29, ptr %f, align 4
  br label %for.cond, !llvm.loop !11

for.end30:                                        ; preds = %for.cond
  store i32 0, ptr %i, align 4
  br label %for.cond31

for.cond31:                                       ; preds = %for.inc34, %for.end30
  %15 = load i32, ptr %i, align 4
  %cmp32 = icmp slt i32 %15, 10
  br i1 %cmp32, label %for.body33, label %for.end36

for.body33:                                       ; preds = %for.cond31
  %16 = load i32, ptr %i, align 4
  %mul = mul nsw i32 %16, 2
  store i32 %mul, ptr %temp, align 4
  br label %for.inc34

for.inc34:                                        ; preds = %for.body33
  %17 = load i32, ptr %i, align 4
  %inc35 = add nsw i32 %17, 1
  store i32 %inc35, ptr %i, align 4
  br label %for.cond31, !llvm.loop !12

for.end36:                                        ; preds = %for.cond31
  store i8 0, ptr %retval, align 1
  br label %return

return:                                           ; preds = %for.end36, %if.end24
  %18 = load i8, ptr %retval, align 1
  ret i8 %18
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn }

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
!12 = distinct !{!12, !7}
