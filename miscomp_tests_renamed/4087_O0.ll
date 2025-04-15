; 139580108130526553659230110610888486184
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/139580108130526553659230110610888486184.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/139580108130526553659230110610888486184.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"2\00", align 1
@w = dso_local global ptr @.str, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@a = internal global [5 x i32] zeroinitializer, align 16
@c = internal global i8 0, align 1
@d = internal global i32 0, align 4
@e = internal global i64 0, align 8
@f = internal global ptr @d, align 8
@b = internal global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %h = alloca i32, align 4
  %k = alloca i32, align 4
  %l = alloca [8 x i32], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 0, ptr %h, align 4
  store i32 0, ptr %k, align 4
  %0 = load volatile ptr, ptr @w, align 8
  %call = call i32 @strcmp(ptr noundef %0, ptr noundef @.str.1) #3
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %h, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc5, %if.end
  %1 = load i32, ptr %i, align 4
  %cmp1 = icmp slt i32 %1, 256
  br i1 %cmp1, label %for.body, label %for.end6

for.body:                                         ; preds = %for.cond
  store i32 8, ptr %j, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %2 = load i32, ptr %j, align 4
  %cmp3 = icmp sgt i32 %2, 0
  br i1 %cmp3, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond2
  store i32 1, ptr %k, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body4
  %3 = load i32, ptr %j, align 4
  %dec = add nsw i32 %3, -1
  store i32 %dec, ptr %j, align 4
  br label %for.cond2, !llvm.loop !6

for.end:                                          ; preds = %for.cond2
  %4 = load i32, ptr %k, align 4
  %5 = load i32, ptr %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [5 x i32], ptr @a, i64 0, i64 %idxprom
  store i32 %4, ptr %arrayidx, align 4
  br label %for.inc5

for.inc5:                                         ; preds = %for.end
  %6 = load i32, ptr %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end6:                                         ; preds = %for.cond
  store i32 0, ptr %i, align 4
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc12, %for.end6
  %7 = load i32, ptr %i, align 4
  %cmp8 = icmp slt i32 %7, 8
  br i1 %cmp8, label %for.body9, label %for.end14

for.body9:                                        ; preds = %for.cond7
  %8 = load i32, ptr %i, align 4
  %idxprom10 = sext i32 %8 to i64
  %arrayidx11 = getelementptr inbounds [8 x i32], ptr %l, i64 0, i64 %idxprom10
  store i32 0, ptr %arrayidx11, align 4
  br label %for.inc12

for.inc12:                                        ; preds = %for.body9
  %9 = load i32, ptr %i, align 4
  %inc13 = add nsw i32 %9, 1
  store i32 %inc13, ptr %i, align 4
  br label %for.cond7, !llvm.loop !9

for.end14:                                        ; preds = %for.cond7
  %10 = load i8, ptr @c, align 1
  %11 = load i8, ptr @c, align 1
  %call15 = call signext i8 @bar(i8 noundef signext %10, i8 noundef signext %11)
  %conv = sext i8 %call15 to i32
  store i32 %conv, ptr @d, align 4
  %12 = load i8, ptr @c, align 1
  %conv16 = sext i8 %12 to i32
  %arrayidx17 = getelementptr inbounds [8 x i32], ptr %l, i64 0, i64 0
  %13 = load i32, ptr %arrayidx17, align 16
  %conv18 = sext i32 %13 to i64
  %call19 = call signext i16 @foo(i64 noundef %conv18, i64 noundef 10)
  %conv20 = sext i16 %call19 to i32
  %or = or i32 1, %conv20
  %call21 = call i32 @baz(i32 noundef %conv16, i32 noundef %or)
  store i32 %call21, ptr @d, align 4
  %14 = load i32, ptr @d, align 4
  %conv22 = sext i32 %14 to i64
  %15 = load i32, ptr %h, align 4
  call void @fnx(i64 noundef %conv22, i32 noundef %15)
  %16 = load i64, ptr @e, align 8
  %17 = load i32, ptr %h, align 4
  call void @fnx(i64 noundef %16, i32 noundef %17)
  %18 = load i32, ptr @d, align 4
  %cmp23 = icmp ne i32 %18, 0
  br i1 %cmp23, label %if.then25, label %if.end26

if.then25:                                        ; preds = %for.end14
  call void @abort() #4
  unreachable

if.end26:                                         ; preds = %for.end14
  ret i32 0
}

; Function Attrs: nounwind
declare i32 @strcmp(ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal signext i8 @bar(i8 noundef signext %x, i8 noundef signext %y) #0 {
entry:
  %x.addr = alloca i8, align 1
  %y.addr = alloca i8, align 1
  store i8 %x, ptr %x.addr, align 1
  store i8 %y, ptr %y.addr, align 1
  %0 = load i8, ptr %x.addr, align 1
  %conv = sext i8 %0 to i32
  %1 = load i8, ptr %y.addr, align 1
  %conv1 = sext i8 %1 to i32
  %sub = sub nsw i32 %conv, %conv1
  %conv2 = trunc i32 %sub to i8
  ret i8 %conv2
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @baz(i32 noundef %x, i32 noundef %y) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  store i32 %y, ptr %y.addr, align 4
  %0 = load i32, ptr %y.addr, align 4
  %1 = load i32, ptr %y.addr, align 4
  %mul = mul nsw i32 %1, 3
  %conv = trunc i32 %mul to i16
  %conv1 = sext i16 %conv to i32
  %cmp = icmp ne i32 %0, %conv1
  %conv2 = zext i1 %cmp to i32
  %2 = load ptr, ptr @f, align 8
  store i32 %conv2, ptr %2, align 4
  store i8 0, ptr @c, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i8, ptr @c, align 1
  %conv3 = sext i8 %3 to i32
  %cmp4 = icmp slt i32 %conv3, 2
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %lab

lab:                                              ; preds = %if.else8, %for.body
  %4 = load i32, ptr @d, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.else8

if.then:                                          ; preds = %lab
  %5 = load i64, ptr @e, align 8
  %tobool6 = icmp ne i64 %5, 0
  br i1 %tobool6, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.then
  store i64 1, ptr @e, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %6 = load i32, ptr %x.addr, align 4
  store i32 %6, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then7
  br label %if.end9

if.else8:                                         ; preds = %lab
  store i32 1, ptr @d, align 4
  br label %lab

if.end9:                                          ; preds = %if.end
  store ptr @d, ptr @f, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end9
  %7 = load i8, ptr @c, align 1
  %inc = add i8 %7, 1
  store i8 %inc, ptr @c, align 1
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  %8 = load i32, ptr %x.addr, align 4
  store i32 %8, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.else
  %9 = load i32, ptr %retval, align 4
  ret i32 %9
}

; Function Attrs: noinline nounwind uwtable
define internal signext i16 @foo(i64 noundef %x, i64 noundef %y) #0 {
entry:
  %x.addr = alloca i64, align 8
  %y.addr = alloca i64, align 8
  store i64 %x, ptr %x.addr, align 8
  store i64 %y, ptr %y.addr, align 8
  %0 = load i64, ptr %x.addr, align 8
  %1 = load i64, ptr %y.addr, align 8
  %div = sdiv i64 %0, %1
  %conv = trunc i64 %div to i16
  ret i16 %conv
}

; Function Attrs: noinline nounwind uwtable
define internal void @fnx(i64 noundef %x, i32 noundef %y) #0 {
entry:
  %x.addr = alloca i64, align 8
  %y.addr = alloca i32, align 4
  store i64 %x, ptr %x.addr, align 8
  store i32 %y, ptr %y.addr, align 4
  %0 = load i32, ptr %y.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i32, ptr @b, align 4
  %and = and i32 %1, 1
  %idxprom = zext i32 %and to i64
  %arrayidx = getelementptr inbounds nuw [5 x i32], ptr @a, i64 0, i64 %idxprom
  %2 = load i32, ptr %arrayidx, align 4
  store i32 %2, ptr @b, align 4
  %3 = load i32, ptr @b, align 4
  %and1 = and i32 %3, 1
  %idxprom2 = zext i32 %and1 to i64
  %arrayidx3 = getelementptr inbounds nuw [5 x i32], ptr @a, i64 0, i64 %idxprom2
  %4 = load i32, ptr %arrayidx3, align 4
  store i32 %4, ptr @b, align 4
  %5 = load i32, ptr @b, align 4
  %conv = zext i32 %5 to i64
  %6 = load i64, ptr %x.addr, align 8
  %and4 = and i64 %6, 1
  %xor = xor i64 %conv, %and4
  %and5 = and i64 %xor, 1
  %arrayidx6 = getelementptr inbounds nuw [5 x i32], ptr @a, i64 0, i64 %and5
  %7 = load i32, ptr %arrayidx6, align 4
  store i32 %7, ptr @b, align 4
  %8 = load i32, ptr @b, align 4
  %conv7 = zext i32 %8 to i64
  %9 = load i64, ptr %x.addr, align 8
  %and8 = and i64 %9, 1
  %xor9 = xor i64 %conv7, %and8
  %and10 = and i64 %xor9, 1
  %arrayidx11 = getelementptr inbounds nuw [5 x i32], ptr @a, i64 0, i64 %and10
  %10 = load i32, ptr %arrayidx11, align 4
  store i32 %10, ptr @b, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noreturn nounwind
declare void @abort() #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { noreturn nounwind }

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
