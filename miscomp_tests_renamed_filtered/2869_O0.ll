; 150324279674130745020981501372787247016
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/150324279674130745020981501372787247016.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/150324279674130745020981501372787247016.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@masktab = dso_local global [6 x i16] [i16 1, i16 2, i16 3, i16 4, i16 5, i16 0], align 2
@psd = dso_local global [6 x i16] [i16 50, i16 40, i16 30, i16 20, i16 10, i16 0], align 2
@bndpsd = dso_local global [6 x i16] [i16 1, i16 2, i16 3, i16 4, i16 5, i16 0], align 2

; Function Attrs: noinline nounwind uwtable
define dso_local void @ba_compute_psd(i16 noundef signext %start) #0 {
entry:
  %start.addr = alloca i16, align 2
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %lastbin = alloca i16, align 2
  store i16 %start, ptr %start.addr, align 2
  store i16 4, ptr %lastbin, align 2
  %0 = load i16, ptr %start.addr, align 2
  %conv = sext i16 %0 to i32
  store i32 %conv, ptr %j, align 4
  %1 = load i32, ptr %j, align 4
  %add = add nsw i32 %1, 1
  store i32 %add, ptr %j, align 4
  %2 = load i16, ptr %start.addr, align 2
  %idxprom = sext i16 %2 to i64
  %arrayidx = getelementptr inbounds [6 x i16], ptr @masktab, i64 0, i64 %idxprom
  %3 = load i16, ptr %arrayidx, align 2
  %conv1 = sext i16 %3 to i32
  store i32 %conv1, ptr %k, align 4
  %4 = load i32, ptr %j, align 4
  %idxprom2 = sext i32 %4 to i64
  %arrayidx3 = getelementptr inbounds [6 x i16], ptr @psd, i64 0, i64 %idxprom2
  %5 = load i16, ptr %arrayidx3, align 2
  %6 = load i32, ptr %k, align 4
  %idxprom4 = sext i32 %6 to i64
  %arrayidx5 = getelementptr inbounds [6 x i16], ptr @bndpsd, i64 0, i64 %idxprom4
  store i16 %5, ptr %arrayidx5, align 2
  %7 = load i32, ptr %j, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr %j, align 4
  %8 = load i32, ptr %j, align 4
  store i32 %8, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load i32, ptr %i, align 4
  %10 = load i16, ptr %lastbin, align 2
  %conv6 = sext i16 %10 to i32
  %cmp = icmp slt i32 %9, %conv6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i32, ptr %k, align 4
  %idxprom8 = sext i32 %11 to i64
  %arrayidx9 = getelementptr inbounds [6 x i16], ptr @bndpsd, i64 0, i64 %idxprom8
  %12 = load i32, ptr %j, align 4
  %idxprom10 = sext i32 %12 to i64
  %arrayidx11 = getelementptr inbounds [6 x i16], ptr @psd, i64 0, i64 %idxprom10
  %call = call signext i16 @logadd(ptr noundef %arrayidx9, ptr noundef %arrayidx11)
  %13 = load i32, ptr %k, align 4
  %idxprom12 = sext i32 %13 to i64
  %arrayidx13 = getelementptr inbounds [6 x i16], ptr @bndpsd, i64 0, i64 %idxprom12
  store i16 %call, ptr %arrayidx13, align 2
  %14 = load i32, ptr %j, align 4
  %inc14 = add nsw i32 %14, 1
  store i32 %inc14, ptr %j, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, ptr %i, align 4
  %inc15 = add nsw i32 %15, 1
  store i32 %inc15, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local signext i16 @logadd(ptr noundef %a, ptr noundef %b) #0 {
entry:
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  store ptr %a, ptr %a.addr, align 8
  store ptr %b, ptr %b.addr, align 8
  %0 = load ptr, ptr %a.addr, align 8
  %1 = load i16, ptr %0, align 2
  %conv = sext i16 %1 to i32
  %2 = load ptr, ptr %b.addr, align 8
  %3 = load i16, ptr %2, align 2
  %conv1 = sext i16 %3 to i32
  %add = add nsw i32 %conv, %conv1
  %conv2 = trunc i32 %add to i16
  ret i16 %conv2
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @ba_compute_psd(i16 noundef signext 0)
  %0 = load i16, ptr getelementptr inbounds ([6 x i16], ptr @bndpsd, i64 0, i64 1), align 2
  %conv = sext i16 %0 to i32
  %cmp = icmp ne i32 %conv, 140
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
