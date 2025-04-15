; 150396471571922576505984827830736191643
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/150396471571922576505984827830736191643.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/150396471571922576505984827830736191643.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = internal global [4 x i32] zeroinitializer, align 16
@t = internal global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @testit()
  %0 = load i32, ptr @a, align 16
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #3
  unreachable

if.end:                                           ; preds = %entry
  %1 = load i32, ptr getelementptr inbounds ([4 x i32], ptr @a, i64 0, i64 1), align 4
  %cmp1 = icmp ne i32 %1, 3
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  call void @abort() #3
  unreachable

if.end3:                                          ; preds = %if.end
  %2 = load i32, ptr getelementptr inbounds ([4 x i32], ptr @a, i64 0, i64 2), align 8
  %cmp4 = icmp ne i32 %2, 2
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  call void @abort() #3
  unreachable

if.end6:                                          ; preds = %if.end3
  %3 = load i32, ptr getelementptr inbounds ([4 x i32], ptr @a, i64 0, i64 3), align 4
  %cmp7 = icmp ne i32 %3, 1
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end6
  call void @abort() #3
  unreachable

if.end9:                                          ; preds = %if.end6
  call void @exit(i32 noundef 0) #4
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define internal void @testit() #0 {
entry:
  %ir = alloca [0 x i32], align 4
  %ix = alloca i32, align 4
  %n = alloca i32, align 4
  %m = alloca i32, align 4
  store i32 1, ptr %n, align 4
  store i32 3, ptr %m, align 4
  store i32 1, ptr %ix, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %ix, align 4
  %cmp = icmp sle i32 %0, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %n, align 4
  %cmp1 = icmp eq i32 %1, 1
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  store i32 4, ptr %m, align 4
  br label %if.end

if.else:                                          ; preds = %for.body
  %2 = load i32, ptr %n, align 4
  %sub = sub nsw i32 %2, 1
  store i32 %sub, ptr %m, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i32, ptr %n, align 4
  %sub2 = sub nsw i32 %3, 1
  %idxprom = sext i32 %sub2 to i64
  %arrayidx = getelementptr inbounds [0 x i32], ptr %ir, i64 0, i64 %idxprom
  %4 = load i32, ptr %arrayidx, align 4
  %call = call i32 @ap(i32 noundef %4)
  %5 = load i32, ptr %m, align 4
  store i32 %5, ptr %n, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i32, ptr %ix, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %ix, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noreturn nounwind
declare void @abort() #1

; Function Attrs: noreturn
declare void @exit(i32 noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @ap(i32 noundef %i) #0 {
entry:
  %i.addr = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  %0 = load i32, ptr @t, align 4
  %cmp = icmp sgt i32 %0, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #3
  unreachable

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %i.addr, align 4
  %2 = load i32, ptr @t, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr @t, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [4 x i32], ptr @a, i64 0, i64 %idxprom
  store i32 %1, ptr %arrayidx, align 4
  ret i32 1
}

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
