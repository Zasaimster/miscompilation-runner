; 198942672022216903254537485073451671214
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/198942672022216903254537485073451671214.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/198942672022216903254537485073451671214.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { double, [2 x i32] }

@g = dso_local global %struct.anon { double 0.000000e+00, [2 x i32] [i32 1, i32 2] }, align 8
@k = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @b(ptr noundef %j) #0 {
entry:
  %j.addr = alloca ptr, align 8
  store ptr %j, ptr %j.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 0, ptr %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %j, align 4
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr @k, align 4
  %2 = load i32, ptr %j, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [2 x i32], ptr getelementptr inbounds nuw (%struct.anon, ptr @g, i32 0, i32 1), i64 0, i64 %idxprom
  %3 = load i32, ptr %arrayidx, align 4
  %cmp1 = icmp sgt i32 %1, %3
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %4 = load i32, ptr @k, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %5 = load i32, ptr %j, align 4
  %idxprom2 = sext i32 %5 to i64
  %arrayidx3 = getelementptr inbounds [2 x i32], ptr getelementptr inbounds nuw (%struct.anon, ptr @g, i32 0, i32 1), i64 0, i64 %idxprom2
  %6 = load i32, ptr %arrayidx3, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ %6, %cond.false ]
  store i32 %cond, ptr @k, align 4
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %7 = load i32, ptr %j, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %call = call i32 (...) @example1()
  %8 = load i32, ptr @k, align 4
  %inc4 = add nsw i32 %8, 1
  store i32 %inc4, ptr @k, align 4
  call void @b(ptr noundef %j)
  ret i32 0
}

declare i32 @example1(...) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
