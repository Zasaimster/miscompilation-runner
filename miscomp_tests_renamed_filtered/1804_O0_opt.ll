; 132055221616972563968811697707940011288
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/132055221616972563968811697707940011288_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/132055221616972563968811697707940011288.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test = type { i64, i32 }

@.str = private unnamed_addr constant [19 x i8] c"This won't print.\0A\00", align 1
@tests = dso_local global [5 x { i64, i32, [4 x i8] }] [{ i64, i32, [4 x i8] } { i64 -1152921504606846976, i32 -1, [4 x i8] zeroinitializer }, { i64, i32, [4 x i8] } { i64 -1152921504606846977, i32 1, [4 x i8] zeroinitializer }, { i64, i32, [4 x i8] } { i64 -1152921504606846975, i32 -1, [4 x i8] zeroinitializer }, { i64, i32, [4 x i8] } { i64 0, i32 -1, [4 x i8] zeroinitializer }, { i64, i32, [4 x i8] } { i64 -9223372036854775808, i32 1, [4 x i8] zeroinitializer }], align 16

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @movegt(i32 noundef %x, i32 noundef %y, i64 noundef %a) #0 {
entry:
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %a.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %i1 = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  store i32 %y, ptr %y.addr, align 4
  store i64 %a, ptr %a.addr, align 8
  store i32 0, ptr %ret, align 4
  store i32 0, ptr %i1, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i1, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %1 = load i32, ptr %i1, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, ptr %i1, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %2 = load i32, ptr %ret, align 4
  ret i32 %2
}

declare i32 @printf(ptr noundef, ...) #1

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
  %conv = sext i32 %0 to i64
  %cmp = icmp ult i64 %conv, 5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [5 x %struct.test], ptr @tests, i64 0, i64 %idxprom
  %val = getelementptr inbounds nuw %struct.test, ptr %arrayidx, i32 0, i32 0
  %2 = load i64, ptr %val, align 16
  %call = call i32 @movegt(i32 noundef -1, i32 noundef 1, i64 noundef %2)
  %3 = load i32, ptr %i, align 4
  %idxprom2 = sext i32 %3 to i64
  %arrayidx3 = getelementptr inbounds [5 x %struct.test], ptr @tests, i64 0, i64 %idxprom2
  %ret = getelementptr inbounds nuw %struct.test, ptr %arrayidx3, i32 0, i32 1
  %4 = load i32, ptr %ret, align 8
  %cmp4 = icmp ne i32 %call, %4
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @abort() #3
  unreachable

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %5 = load i32, ptr %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
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
