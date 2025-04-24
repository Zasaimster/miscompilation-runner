; 182652518627849095384102631647444094989
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/182652518627849095384102631647444094989.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/182652518627849095384102631647444094989.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f1(i32 noundef %diff) #0 {
entry:
  %diff.addr = alloca i32, align 4
  store i32 %diff, ptr %diff.addr, align 4
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f2(i32 noundef %diff) #0 {
entry:
  %diff.addr = alloca i32, align 4
  store i32 %diff, ptr %diff.addr, align 4
  %0 = load i32, ptr %diff.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i32, ptr %diff.addr, align 4
  %sub = sub i32 0, %1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load i32, ptr %diff.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ %2, %cond.false ]
  ret i32 %cond
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @f3(i64 noundef %diff) #0 {
entry:
  %diff.addr = alloca i64, align 8
  store i64 %diff, ptr %diff.addr, align 8
  %0 = load i64, ptr %diff.addr, align 8
  %cmp = icmp slt i64 %0, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i64, ptr %diff.addr, align 8
  %sub = sub nsw i64 0, %1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load i64, ptr %diff.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub, %cond.true ], [ %2, %cond.false ]
  ret i64 %cond
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @f4(i64 noundef %diff) #0 {
entry:
  %diff.addr = alloca i64, align 8
  store i64 %diff, ptr %diff.addr, align 8
  %0 = load i64, ptr %diff.addr, align 8
  %cmp = icmp slt i64 %0, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i64, ptr %diff.addr, align 8
  %sub = sub i64 0, %1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load i64, ptr %diff.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub, %cond.true ], [ %2, %cond.false ]
  ret i64 %cond
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp sle i32 %0, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  %call = call i32 @f1(i32 noundef %1)
  %2 = load i32, ptr %i, align 4
  %cmp1 = icmp ne i32 %call, %2
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @abort() #3
  unreachable

if.end:                                           ; preds = %for.body
  %3 = load i32, ptr %i, align 4
  %sub = sub nsw i32 0, %3
  %call2 = call i32 @f1(i32 noundef %sub)
  %4 = load i32, ptr %i, align 4
  %cmp3 = icmp ne i32 %call2, %4
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @abort() #3
  unreachable

if.end5:                                          ; preds = %if.end
  %5 = load i32, ptr %i, align 4
  %call6 = call i32 @f2(i32 noundef %5)
  %6 = load i32, ptr %i, align 4
  %cmp7 = icmp ne i32 %call6, %6
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end5
  call void @abort() #3
  unreachable

if.end9:                                          ; preds = %if.end5
  %7 = load i32, ptr %i, align 4
  %sub10 = sub nsw i32 0, %7
  %call11 = call i32 @f2(i32 noundef %sub10)
  %8 = load i32, ptr %i, align 4
  %cmp12 = icmp ne i32 %call11, %8
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end9
  call void @abort() #3
  unreachable

if.end14:                                         ; preds = %if.end9
  %9 = load i32, ptr %i, align 4
  %conv = sext i32 %9 to i64
  %call15 = call i64 @f3(i64 noundef %conv)
  %10 = load i32, ptr %i, align 4
  %conv16 = sext i32 %10 to i64
  %cmp17 = icmp ne i64 %call15, %conv16
  br i1 %cmp17, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end14
  call void @abort() #3
  unreachable

if.end20:                                         ; preds = %if.end14
  %11 = load i32, ptr %i, align 4
  %sub21 = sub nsw i32 0, %11
  %conv22 = sext i32 %sub21 to i64
  %call23 = call i64 @f3(i64 noundef %conv22)
  %12 = load i32, ptr %i, align 4
  %conv24 = sext i32 %12 to i64
  %cmp25 = icmp ne i64 %call23, %conv24
  br i1 %cmp25, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end20
  call void @abort() #3
  unreachable

if.end28:                                         ; preds = %if.end20
  %13 = load i32, ptr %i, align 4
  %conv29 = sext i32 %13 to i64
  %call30 = call i64 @f4(i64 noundef %conv29)
  %14 = load i32, ptr %i, align 4
  %conv31 = sext i32 %14 to i64
  %cmp32 = icmp ne i64 %call30, %conv31
  br i1 %cmp32, label %if.then34, label %if.end35

if.then34:                                        ; preds = %if.end28
  call void @abort() #3
  unreachable

if.end35:                                         ; preds = %if.end28
  %15 = load i32, ptr %i, align 4
  %sub36 = sub nsw i32 0, %15
  %conv37 = sext i32 %sub36 to i64
  %call38 = call i64 @f4(i64 noundef %conv37)
  %16 = load i32, ptr %i, align 4
  %conv39 = sext i32 %16 to i64
  %cmp40 = icmp ne i64 %call38, %conv39
  br i1 %cmp40, label %if.then42, label %if.end43

if.then42:                                        ; preds = %if.end35
  call void @abort() #3
  unreachable

if.end43:                                         ; preds = %if.end35
  br label %for.inc

for.inc:                                          ; preds = %if.end43
  %17 = load i32, ptr %i, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  call void @exit(i32 noundef 0) #4
  unreachable
}

; Function Attrs: noreturn nounwind
declare void @abort() #1

; Function Attrs: noreturn
declare void @exit(i32 noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }
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
