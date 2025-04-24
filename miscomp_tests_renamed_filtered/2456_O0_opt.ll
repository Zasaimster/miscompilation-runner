; 142501605005481164216572926803231388120
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/142501605005481164216572926803231388120_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/142501605005481164216572926803231388120.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@buf = dso_local global [65 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [15 x i8] c"Hello, World!\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %cmp = icmp ne i32 %0, 2
  %cond = select i1 %cmp, i32 1, i32 0
  %1 = trunc i32 %cond to i8
  call void @llvm.memset.p0.i64(ptr align 16 @buf, i8 %1, i64 64, i1 false)
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i8 2, ptr getelementptr inbounds ([65 x i8], ptr @buf, i64 0, i64 64), align 16
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 64
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [65 x i8], ptr @buf, i64 0, i64 %idxprom
  %2 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %2 to i32
  %cmp1 = icmp ne i32 %conv, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @abort() #4
  unreachable

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %3 = load i32, ptr %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  call void @foo(i32 noundef 0)
  store i32 0, ptr %i, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc14, %for.end
  %4 = load i32, ptr %i, align 4
  %cmp4 = icmp slt i32 %4, 64
  br i1 %cmp4, label %for.body6, label %for.end16

for.body6:                                        ; preds = %for.cond3
  %5 = load i32, ptr %i, align 4
  %idxprom7 = sext i32 %5 to i64
  %arrayidx8 = getelementptr inbounds [65 x i8], ptr @buf, i64 0, i64 %idxprom7
  %6 = load i8, ptr %arrayidx8, align 1
  %conv9 = sext i8 %6 to i32
  %cmp10 = icmp ne i32 %conv9, 1
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %for.body6
  call void @abort() #4
  unreachable

if.end13:                                         ; preds = %for.body6
  br label %for.inc14

for.inc14:                                        ; preds = %if.end13
  %7 = load i32, ptr %i, align 4
  %inc15 = add nsw i32 %7, 1
  store i32 %inc15, ptr %i, align 4
  br label %for.cond3, !llvm.loop !8

for.end16:                                        ; preds = %for.cond3
  call void @foo(i32 noundef 2)
  store i32 0, ptr %i, align 4
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc28, %for.end16
  %8 = load i32, ptr %i, align 4
  %cmp18 = icmp slt i32 %8, 64
  br i1 %cmp18, label %for.body20, label %for.end30

for.body20:                                       ; preds = %for.cond17
  %9 = load i32, ptr %i, align 4
  %idxprom21 = sext i32 %9 to i64
  %arrayidx22 = getelementptr inbounds [65 x i8], ptr @buf, i64 0, i64 %idxprom21
  %10 = load i8, ptr %arrayidx22, align 1
  %conv23 = sext i8 %10 to i32
  %cmp24 = icmp ne i32 %conv23, 0
  br i1 %cmp24, label %if.then26, label %if.end27

if.then26:                                        ; preds = %for.body20
  call void @abort() #4
  unreachable

if.end27:                                         ; preds = %for.body20
  br label %for.inc28

for.inc28:                                        ; preds = %if.end27
  %11 = load i32, ptr %i, align 4
  %inc29 = add nsw i32 %11, 1
  store i32 %inc29, ptr %i, align 4
  br label %for.cond17, !llvm.loop !9

for.end30:                                        ; preds = %for.cond17
  %12 = load i8, ptr getelementptr inbounds ([65 x i8], ptr @buf, i64 0, i64 64), align 16
  %conv31 = sext i8 %12 to i32
  %cmp32 = icmp ne i32 %conv31, 2
  br i1 %cmp32, label %if.then34, label %if.end35

if.then34:                                        ; preds = %for.end30
  call void @abort() #4
  unreachable

if.end35:                                         ; preds = %for.end30
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare void @abort() #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
