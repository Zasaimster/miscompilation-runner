; 123493859811896980405328842221246739655
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/123493859811896980405328842221246739655.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/123493859811896980405328842221246739655.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @foo() #0 {
entry:
  %mat = alloca [2 x [2 x i32]], align 16
  %arrayidx = getelementptr inbounds [2 x [2 x i32]], ptr %mat, i64 0, i64 0
  %arrayidx1 = getelementptr inbounds [2 x i32], ptr %arrayidx, i64 0, i64 0
  store i32 1, ptr %arrayidx1, align 16
  %arrayidx2 = getelementptr inbounds [2 x [2 x i32]], ptr %mat, i64 0, i64 0
  %arrayidx3 = getelementptr inbounds [2 x i32], ptr %arrayidx2, i64 0, i64 1
  store i32 2, ptr %arrayidx3, align 4
  %arrayidx4 = getelementptr inbounds [2 x [2 x i32]], ptr %mat, i64 0, i64 1
  %arrayidx5 = getelementptr inbounds [2 x i32], ptr %arrayidx4, i64 0, i64 0
  store i32 4, ptr %arrayidx5, align 8
  %arrayidx6 = getelementptr inbounds [2 x [2 x i32]], ptr %mat, i64 0, i64 1
  %arrayidx7 = getelementptr inbounds [2 x i32], ptr %arrayidx6, i64 0, i64 1
  store i32 8, ptr %arrayidx7, align 4
  %arraydecay = getelementptr inbounds [2 x [2 x i32]], ptr %mat, i64 0, i64 0
  %call = call i32 @inv_J(ptr noundef %arraydecay)
  ret i32 %call
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @inv_J(ptr noundef %a) #0 {
entry:
  %a.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %det = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 8
  store i32 0, ptr %det, align 4
  store i32 0, ptr %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %j, align 4
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %a.addr, align 8
  %2 = load i32, ptr %j, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [0 x i32], ptr %1, i64 %idxprom
  %arrayidx1 = getelementptr inbounds [0 x i32], ptr %arrayidx, i64 0, i64 0
  %3 = load i32, ptr %arrayidx1, align 4
  %4 = load ptr, ptr %a.addr, align 8
  %5 = load i32, ptr %j, align 4
  %idxprom2 = sext i32 %5 to i64
  %arrayidx3 = getelementptr inbounds [0 x i32], ptr %4, i64 %idxprom2
  %arrayidx4 = getelementptr inbounds [0 x i32], ptr %arrayidx3, i64 0, i64 1
  %6 = load i32, ptr %arrayidx4, align 4
  %add = add nsw i32 %3, %6
  %7 = load i32, ptr %det, align 4
  %add5 = add nsw i32 %7, %add
  store i32 %add5, ptr %det, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, ptr %j, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %9 = load i32, ptr %det, align 4
  ret i32 %9
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call i32 @foo()
  %cmp = icmp ne i32 %call, 15
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #2
  unreachable

if.end:                                           ; preds = %entry
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
