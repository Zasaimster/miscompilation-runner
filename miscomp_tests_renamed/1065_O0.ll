; 119123147939957383528946708323715776317
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/119123147939957383528946708323715776317.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/119123147939957383528946708323715776317.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@foo.t16 = internal global [16 x float] [float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01], align 16
@foo.tmp = internal global [4 x float] zeroinitializer, align 16

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %x = alloca [4 x float], align 16
  store i32 0, ptr %retval, align 4
  %arraydecay = getelementptr inbounds [4 x float], ptr %x, i64 0, i64 0
  call void @foo(ptr noundef %arraydecay)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(ptr noundef %x) #0 {
entry:
  %x.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %temp = alloca float, align 4
  store ptr %x, ptr %x.addr, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc11, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 4
  br i1 %cmp, label %for.body, label %for.end13

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  %sub = sub nsw i32 3, %1
  store i32 %sub, ptr %k, align 4
  %2 = load i32, ptr %k, align 4
  %mul = mul nsw i32 5, %2
  %idxprom = sext i32 %mul to i64
  %arrayidx = getelementptr inbounds [16 x float], ptr @foo.t16, i64 0, i64 %idxprom
  %3 = load float, ptr %arrayidx, align 4
  store float %3, ptr %temp, align 4
  %4 = load i32, ptr %k, align 4
  %add = add nsw i32 %4, 1
  store i32 %add, ptr %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %5 = load i32, ptr %j, align 4
  %cmp2 = icmp slt i32 %5, 4
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %6 = load i32, ptr %k, align 4
  %7 = load i32, ptr %j, align 4
  %mul4 = mul nsw i32 %7, 4
  %add5 = add nsw i32 %6, %mul4
  %idxprom6 = sext i32 %add5 to i64
  %arrayidx7 = getelementptr inbounds [16 x float], ptr @foo.t16, i64 0, i64 %idxprom6
  %8 = load float, ptr %arrayidx7, align 4
  %9 = load float, ptr %temp, align 4
  %mul8 = fmul float %8, %9
  %10 = load i32, ptr %k, align 4
  %idxprom9 = sext i32 %10 to i64
  %arrayidx10 = getelementptr inbounds [4 x float], ptr @foo.tmp, i64 0, i64 %idxprom9
  store float %mul8, ptr %arrayidx10, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %11 = load i32, ptr %j, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond1, !llvm.loop !6

for.end:                                          ; preds = %for.cond1
  br label %for.inc11

for.inc11:                                        ; preds = %for.end
  %12 = load i32, ptr %i, align 4
  %inc12 = add nsw i32 %12, 1
  store i32 %inc12, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end13:                                        ; preds = %for.cond
  %13 = load float, ptr @foo.tmp, align 16
  %14 = load ptr, ptr %x.addr, align 8
  %arrayidx14 = getelementptr inbounds float, ptr %14, i64 0
  store float %13, ptr %arrayidx14, align 4
  %15 = load float, ptr getelementptr inbounds ([4 x float], ptr @foo.tmp, i64 0, i64 1), align 4
  %16 = load ptr, ptr %x.addr, align 8
  %arrayidx15 = getelementptr inbounds float, ptr %16, i64 1
  store float %15, ptr %arrayidx15, align 4
  %17 = load float, ptr getelementptr inbounds ([4 x float], ptr @foo.tmp, i64 0, i64 2), align 8
  %18 = load ptr, ptr %x.addr, align 8
  %arrayidx16 = getelementptr inbounds float, ptr %18, i64 2
  store float %17, ptr %arrayidx16, align 4
  %19 = load float, ptr getelementptr inbounds ([4 x float], ptr @foo.tmp, i64 0, i64 3), align 4
  %20 = load ptr, ptr %x.addr, align 8
  %arrayidx17 = getelementptr inbounds float, ptr %20, i64 3
  store float %19, ptr %arrayidx17, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @printHello() #0 {
entry:
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
