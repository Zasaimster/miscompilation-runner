; 116455257886637502611020235163379374888
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/116455257886637502611020235163379374888_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/116455257886637502611020235163379374888.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"Finished!\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @check(ptr noundef %l) #0 {
entry:
  %l.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %l, ptr %l.addr, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %cmp = icmp slt i32 %call, 288
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %0 = load ptr, ptr %l.addr, align 8
  %1 = load i32, ptr %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds i32, ptr %0, i64 %idxprom
  %2 = load i32, ptr %arrayidx, align 4
  %3 = load i32, ptr %i, align 4
  %cmp1 = icmp slt i32 %3, 256
  br i1 %cmp1, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %for.body
  %4 = load i32, ptr %i, align 4
  %cmp2 = icmp sge i32 %4, 280
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %for.body
  %5 = phi i1 [ true, %for.body ], [ %cmp2, %lor.rhs ]
  %lor.ext = zext i1 %5 to i32
  %add = add nsw i32 7, %lor.ext
  %6 = load i32, ptr %i, align 4
  %cmp3 = icmp sge i32 %6, 144
  br i1 %cmp3, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.end
  %7 = load i32, ptr %i, align 4
  %cmp4 = icmp slt i32 %7, 256
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.end
  %8 = phi i1 [ false, %lor.end ], [ %cmp4, %land.rhs ]
  %land.ext = zext i1 %8 to i32
  %add5 = add nsw i32 %add, %land.ext
  %cmp6 = icmp ne i32 %2, %add5
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %land.end
  call void @abort() #3
  unreachable

if.end:                                           ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i32, ptr %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  ret void
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noreturn nounwind
declare void @abort() #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %l = alloca [288 x i32], align 16
  store i32 0, ptr %retval, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 144
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [288 x i32], ptr %l, i64 0, i64 %idxprom
  store i32 8, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, ptr %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc6, %for.end
  %3 = load i32, ptr %i, align 4
  %cmp2 = icmp slt i32 %3, 256
  br i1 %cmp2, label %for.body3, label %for.end8

for.body3:                                        ; preds = %for.cond1
  %4 = load i32, ptr %i, align 4
  %idxprom4 = sext i32 %4 to i64
  %arrayidx5 = getelementptr inbounds [288 x i32], ptr %l, i64 0, i64 %idxprom4
  store i32 9, ptr %arrayidx5, align 4
  br label %for.inc6

for.inc6:                                         ; preds = %for.body3
  %5 = load i32, ptr %i, align 4
  %inc7 = add nsw i32 %5, 1
  store i32 %inc7, ptr %i, align 4
  br label %for.cond1, !llvm.loop !9

for.end8:                                         ; preds = %for.cond1
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc14, %for.end8
  %6 = load i32, ptr %i, align 4
  %cmp10 = icmp slt i32 %6, 280
  br i1 %cmp10, label %for.body11, label %for.end16

for.body11:                                       ; preds = %for.cond9
  %7 = load i32, ptr %i, align 4
  %idxprom12 = sext i32 %7 to i64
  %arrayidx13 = getelementptr inbounds [288 x i32], ptr %l, i64 0, i64 %idxprom12
  store i32 7, ptr %arrayidx13, align 4
  br label %for.inc14

for.inc14:                                        ; preds = %for.body11
  %8 = load i32, ptr %i, align 4
  %inc15 = add nsw i32 %8, 1
  store i32 %inc15, ptr %i, align 4
  br label %for.cond9, !llvm.loop !10

for.end16:                                        ; preds = %for.cond9
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc22, %for.end16
  %9 = load i32, ptr %i, align 4
  %cmp18 = icmp slt i32 %9, 288
  br i1 %cmp18, label %for.body19, label %for.end24

for.body19:                                       ; preds = %for.cond17
  %10 = load i32, ptr %i, align 4
  %idxprom20 = sext i32 %10 to i64
  %arrayidx21 = getelementptr inbounds [288 x i32], ptr %l, i64 0, i64 %idxprom20
  store i32 8, ptr %arrayidx21, align 4
  br label %for.inc22

for.inc22:                                        ; preds = %for.body19
  %11 = load i32, ptr %i, align 4
  %inc23 = add nsw i32 %11, 1
  store i32 %inc23, ptr %i, align 4
  br label %for.cond17, !llvm.loop !11

for.end24:                                        ; preds = %for.cond17
  %arraydecay = getelementptr inbounds [288 x i32], ptr %l, i64 0, i64 0
  call void @check(ptr noundef %arraydecay)
  ret i32 0
}

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
!11 = distinct !{!11, !7}
