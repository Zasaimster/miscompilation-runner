; 149161083608363753779681523139309647700
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/149161083608363753779681523139309647700.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/149161083608363753779681523139309647700.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %Count = alloca i32, align 4
  %saved_stack = alloca ptr, align 8
  %__vla_expr0 = alloca i64, align 8
  store i32 0, ptr %retval, align 4
  %0 = load i32, ptr %Count, align 4
  %sub = sub nsw i32 %0, 1
  %1 = zext i32 %sub to i64
  %2 = call ptr @llvm.stacksave.p0()
  store ptr %2, ptr %saved_stack, align 8
  %vla = alloca i32, i64 %1, align 16
  store i64 %1, ptr %__vla_expr0, align 8
  store i32 1, ptr %Count, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, ptr %Count, align 4
  %cmp = icmp sle i32 %3, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, ptr %Count, align 4
  %5 = load i32, ptr %Count, align 4
  %mul = mul nsw i32 %4, %5
  %6 = load i32, ptr %Count, align 4
  %sub1 = sub nsw i32 %6, 1
  %idxprom = sext i32 %sub1 to i64
  %arrayidx = getelementptr inbounds i32, ptr %vla, i64 %idxprom
  store i32 %mul, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, ptr %Count, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr %Count, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %Count, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc7, %for.end
  %8 = load i32, ptr %Count, align 4
  %cmp3 = icmp slt i32 %8, 10
  br i1 %cmp3, label %for.body4, label %for.end9

for.body4:                                        ; preds = %for.cond2
  %9 = load i32, ptr %Count, align 4
  %idxprom5 = sext i32 %9 to i64
  %arrayidx6 = getelementptr inbounds i32, ptr %vla, i64 %idxprom5
  %10 = load i32, ptr %arrayidx6, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %10)
  br label %for.inc7

for.inc7:                                         ; preds = %for.body4
  %11 = load i32, ptr %Count, align 4
  %inc8 = add nsw i32 %11, 1
  store i32 %inc8, ptr %Count, align 4
  br label %for.cond2, !llvm.loop !8

for.end9:                                         ; preds = %for.cond2
  store i32 0, ptr %retval, align 4
  %12 = load ptr, ptr %saved_stack, align 8
  call void @llvm.stackrestore.p0(ptr %12)
  %13 = load i32, ptr %retval, align 4
  ret i32 %13
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #1

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
