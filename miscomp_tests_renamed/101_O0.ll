; 199100349101084567899972317908452268715
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/199100349101084567899972317908452268715.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/199100349101084567899972317908452268715.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"Value of a: %d\0A\00", align 1
@bytes = dso_local global [5 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @add_unwind_adjustsp(i64 noundef %offset) #0 {
entry:
  %offset.addr = alloca i64, align 8
  %n = alloca i32, align 4
  %o = alloca i64, align 8
  store i64 %offset, ptr %offset.addr, align 8
  %0 = load i64, ptr %o, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i64 noundef %0)
  store i32 0, ptr %n, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %1 = load i64, ptr %o, align 8
  %tobool = icmp ne i64 %1, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i64, ptr %o, align 8
  %and = and i64 %2, 127
  %conv = trunc i64 %and to i8
  %3 = load i32, ptr %n, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [5 x i8], ptr @bytes, i64 0, i64 %idxprom
  store i8 %conv, ptr %arrayidx, align 1
  %4 = load i64, ptr %o, align 8
  %shr = lshr i64 %4, 7
  store i64 %shr, ptr %o, align 8
  %5 = load i64, ptr %o, align 8
  %tobool1 = icmp ne i64 %5, 0
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %6 = load i32, ptr %n, align 4
  %idxprom2 = sext i32 %6 to i64
  %arrayidx3 = getelementptr inbounds [5 x i8], ptr @bytes, i64 0, i64 %idxprom2
  %7 = load i8, ptr %arrayidx3, align 1
  %conv4 = zext i8 %7 to i32
  %or = or i32 %conv4, 128
  %conv5 = trunc i32 %or to i8
  store i8 %conv5, ptr %arrayidx3, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %8 = load i32, ptr %n, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %n, align 4
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  ret void
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @add_unwind_adjustsp(i64 noundef 4132)
  %0 = load i8, ptr @bytes, align 1
  %conv = zext i8 %0 to i32
  %cmp = icmp ne i32 %conv, 136
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8, ptr getelementptr inbounds ([5 x i8], ptr @bytes, i64 0, i64 1), align 1
  %conv2 = zext i8 %1 to i32
  %cmp3 = icmp ne i32 %conv2, 7
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void @abort() #3
  unreachable

if.end:                                           ; preds = %lor.lhs.false
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
