; 117162208664766609711477580840698295413
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/117162208664766609711477580840698295413_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/117162208664766609711477580840698295413.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %count = alloca i32, align 4
  %n = alloca i32, align 4
  %from = alloca ptr, align 8
  %to = alloca ptr, align 8
  %a = alloca [0 x i16], align 2
  %b = alloca [39 x i16], align 16
  store i32 0, ptr %retval, align 4
  store i32 0, ptr %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %n, align 4
  %cmp = icmp slt i32 %0, 39
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %n, align 4
  %conv = trunc i32 %1 to i16
  %2 = load i32, ptr %n, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [0 x i16], ptr %a, i64 0, i64 %idxprom
  store i16 %conv, ptr %arrayidx, align 2
  %3 = load i32, ptr %n, align 4
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [39 x i16], ptr %b, i64 0, i64 %idxprom1
  store i16 0, ptr %arrayidx2, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, ptr %n, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %n, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %arraydecay = getelementptr inbounds [0 x i16], ptr %a, i64 0, i64 0
  store ptr %arraydecay, ptr %from, align 8
  %arraydecay3 = getelementptr inbounds [39 x i16], ptr %b, i64 0, i64 0
  store ptr %arraydecay3, ptr %to, align 8
  store i32 39, ptr %count, align 4
  %5 = load i32, ptr %count, align 4
  %add = add nsw i32 %5, 7
  %div = sdiv i32 %add, 8
  store i32 %div, ptr %n, align 4
  %6 = load i32, ptr %count, align 4
  %rem = srem i32 %6, 8
  switch i32 %rem, label %sw.epilog [
    i32 0, label %sw.bb
    i32 7, label %sw.bb5
    i32 6, label %sw.bb8
    i32 5, label %sw.bb11
    i32 4, label %sw.bb14
    i32 3, label %sw.bb17
    i32 2, label %sw.bb20
    i32 1, label %sw.bb23
  ]

sw.bb:                                            ; preds = %for.end
  br label %do.body

do.body:                                          ; preds = %do.cond, %sw.bb
  %7 = load ptr, ptr %from, align 8
  %incdec.ptr = getelementptr inbounds nuw i16, ptr %7, i32 1
  store ptr %incdec.ptr, ptr %from, align 8
  %8 = load i16, ptr %7, align 2
  %9 = load ptr, ptr %to, align 8
  %incdec.ptr4 = getelementptr inbounds nuw i16, ptr %9, i32 1
  store ptr %incdec.ptr4, ptr %to, align 8
  store i16 %8, ptr %9, align 2
  br label %sw.bb5

sw.bb5:                                           ; preds = %do.body, %for.end
  %10 = load ptr, ptr %from, align 8
  %incdec.ptr6 = getelementptr inbounds nuw i16, ptr %10, i32 1
  store ptr %incdec.ptr6, ptr %from, align 8
  %11 = load i16, ptr %10, align 2
  %12 = load ptr, ptr %to, align 8
  %incdec.ptr7 = getelementptr inbounds nuw i16, ptr %12, i32 1
  store ptr %incdec.ptr7, ptr %to, align 8
  store i16 %11, ptr %12, align 2
  br label %sw.bb8

sw.bb8:                                           ; preds = %sw.bb5, %for.end
  %13 = load ptr, ptr %from, align 8
  %incdec.ptr9 = getelementptr inbounds nuw i16, ptr %13, i32 1
  store ptr %incdec.ptr9, ptr %from, align 8
  %14 = load i16, ptr %13, align 2
  %15 = load ptr, ptr %to, align 8
  %incdec.ptr10 = getelementptr inbounds nuw i16, ptr %15, i32 1
  store ptr %incdec.ptr10, ptr %to, align 8
  store i16 %14, ptr %15, align 2
  br label %sw.bb11

sw.bb11:                                          ; preds = %sw.bb8, %for.end
  %16 = load ptr, ptr %from, align 8
  %incdec.ptr12 = getelementptr inbounds nuw i16, ptr %16, i32 1
  store ptr %incdec.ptr12, ptr %from, align 8
  %17 = load i16, ptr %16, align 2
  %18 = load ptr, ptr %to, align 8
  %incdec.ptr13 = getelementptr inbounds nuw i16, ptr %18, i32 1
  store ptr %incdec.ptr13, ptr %to, align 8
  store i16 %17, ptr %18, align 2
  br label %sw.bb14

sw.bb14:                                          ; preds = %sw.bb11, %for.end
  %19 = load ptr, ptr %from, align 8
  %incdec.ptr15 = getelementptr inbounds nuw i16, ptr %19, i32 1
  store ptr %incdec.ptr15, ptr %from, align 8
  %20 = load i16, ptr %19, align 2
  %21 = load ptr, ptr %to, align 8
  %incdec.ptr16 = getelementptr inbounds nuw i16, ptr %21, i32 1
  store ptr %incdec.ptr16, ptr %to, align 8
  store i16 %20, ptr %21, align 2
  br label %sw.bb17

sw.bb17:                                          ; preds = %sw.bb14, %for.end
  %22 = load ptr, ptr %from, align 8
  %incdec.ptr18 = getelementptr inbounds nuw i16, ptr %22, i32 1
  store ptr %incdec.ptr18, ptr %from, align 8
  %23 = load i16, ptr %22, align 2
  %24 = load ptr, ptr %to, align 8
  %incdec.ptr19 = getelementptr inbounds nuw i16, ptr %24, i32 1
  store ptr %incdec.ptr19, ptr %to, align 8
  store i16 %23, ptr %24, align 2
  br label %sw.bb20

sw.bb20:                                          ; preds = %sw.bb17, %for.end
  %25 = load ptr, ptr %from, align 8
  %incdec.ptr21 = getelementptr inbounds nuw i16, ptr %25, i32 1
  store ptr %incdec.ptr21, ptr %from, align 8
  %26 = load i16, ptr %25, align 2
  %27 = load ptr, ptr %to, align 8
  %incdec.ptr22 = getelementptr inbounds nuw i16, ptr %27, i32 1
  store ptr %incdec.ptr22, ptr %to, align 8
  store i16 %26, ptr %27, align 2
  br label %sw.bb23

sw.bb23:                                          ; preds = %sw.bb20, %for.end
  %28 = load ptr, ptr %from, align 8
  %incdec.ptr24 = getelementptr inbounds nuw i16, ptr %28, i32 1
  store ptr %incdec.ptr24, ptr %from, align 8
  %29 = load i16, ptr %28, align 2
  %30 = load ptr, ptr %to, align 8
  %incdec.ptr25 = getelementptr inbounds nuw i16, ptr %30, i32 1
  store ptr %incdec.ptr25, ptr %to, align 8
  store i16 %29, ptr %30, align 2
  br label %do.cond

do.cond:                                          ; preds = %sw.bb23
  %31 = load i32, ptr %n, align 4
  %dec = add nsw i32 %31, -1
  store i32 %dec, ptr %n, align 4
  %cmp26 = icmp sgt i32 %dec, 0
  br i1 %cmp26, label %do.body, label %do.end, !llvm.loop !8

do.end:                                           ; preds = %do.cond
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %for.end
  store i32 0, ptr %n, align 4
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc40, %sw.epilog
  %32 = load i32, ptr %n, align 4
  %cmp29 = icmp slt i32 %32, 39
  br i1 %cmp29, label %for.body31, label %for.end42

for.body31:                                       ; preds = %for.cond28
  %33 = load i32, ptr %n, align 4
  %idxprom32 = sext i32 %33 to i64
  %arrayidx33 = getelementptr inbounds [0 x i16], ptr %a, i64 0, i64 %idxprom32
  %34 = load i16, ptr %arrayidx33, align 2
  %conv34 = sext i16 %34 to i32
  %35 = load i32, ptr %n, align 4
  %idxprom35 = sext i32 %35 to i64
  %arrayidx36 = getelementptr inbounds [39 x i16], ptr %b, i64 0, i64 %idxprom35
  %36 = load i16, ptr %arrayidx36, align 2
  %conv37 = sext i16 %36 to i32
  %cmp38 = icmp ne i32 %conv34, %conv37
  br i1 %cmp38, label %if.then, label %if.end

if.then:                                          ; preds = %for.body31
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %for.body31
  br label %for.inc40

for.inc40:                                        ; preds = %if.end
  %37 = load i32, ptr %n, align 4
  %inc41 = add nsw i32 %37, 1
  store i32 %inc41, ptr %n, align 4
  br label %for.cond28, !llvm.loop !9

for.end42:                                        ; preds = %for.cond28
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end42, %if.then
  %38 = load i32, ptr %retval, align 4
  ret i32 %38
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
!9 = distinct !{!9, !7}
