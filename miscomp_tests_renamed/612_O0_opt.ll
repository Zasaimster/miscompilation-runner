; 110945059464515898590375390688919479305
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/110945059464515898590375390688919479305_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/110945059464515898590375390688919479305.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"Hello, optimizer!\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %count = alloca i32, align 4
  %n = alloca i32, align 4
  %from = alloca ptr, align 8
  %to = alloca ptr, align 8
  %a = alloca [39 x i16], align 16
  %b = alloca [39 x i16], align 16
  store i32 0, ptr %retval, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %arraydecay = getelementptr inbounds [39 x i16], ptr %a, i64 0, i64 0
  store ptr %arraydecay, ptr %from, align 8
  %arraydecay1 = getelementptr inbounds [39 x i16], ptr %b, i64 0, i64 0
  store ptr %arraydecay1, ptr %to, align 8
  store i32 39, ptr %count, align 4
  %0 = load i32, ptr %count, align 4
  %add = add nsw i32 %0, 7
  %div = sdiv i32 %add, 8
  store i32 %div, ptr %n, align 4
  %1 = load i32, ptr %count, align 4
  %rem = srem i32 %1, 8
  switch i32 %rem, label %sw.epilog [
    i32 0, label %sw.bb
    i32 7, label %sw.bb3
    i32 6, label %sw.bb6
    i32 5, label %sw.bb9
    i32 4, label %sw.bb12
    i32 3, label %sw.bb15
    i32 2, label %sw.bb18
    i32 1, label %sw.bb21
  ]

sw.bb:                                            ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %do.cond, %sw.bb
  %2 = load ptr, ptr %from, align 8
  %incdec.ptr = getelementptr inbounds nuw i16, ptr %2, i32 1
  store ptr %incdec.ptr, ptr %from, align 8
  %3 = load i16, ptr %2, align 2
  %4 = load ptr, ptr %to, align 8
  %incdec.ptr2 = getelementptr inbounds nuw i16, ptr %4, i32 1
  store ptr %incdec.ptr2, ptr %to, align 8
  store i16 %3, ptr %4, align 2
  br label %sw.bb3

sw.bb3:                                           ; preds = %do.body, %entry
  %5 = load ptr, ptr %from, align 8
  %incdec.ptr4 = getelementptr inbounds nuw i16, ptr %5, i32 1
  store ptr %incdec.ptr4, ptr %from, align 8
  %6 = load i16, ptr %5, align 2
  %7 = load ptr, ptr %to, align 8
  %incdec.ptr5 = getelementptr inbounds nuw i16, ptr %7, i32 1
  store ptr %incdec.ptr5, ptr %to, align 8
  store i16 %6, ptr %7, align 2
  br label %sw.bb6

sw.bb6:                                           ; preds = %sw.bb3, %entry
  %8 = load ptr, ptr %from, align 8
  %incdec.ptr7 = getelementptr inbounds nuw i16, ptr %8, i32 1
  store ptr %incdec.ptr7, ptr %from, align 8
  %9 = load i16, ptr %8, align 2
  %10 = load ptr, ptr %to, align 8
  %incdec.ptr8 = getelementptr inbounds nuw i16, ptr %10, i32 1
  store ptr %incdec.ptr8, ptr %to, align 8
  store i16 %9, ptr %10, align 2
  br label %sw.bb9

sw.bb9:                                           ; preds = %sw.bb6, %entry
  %11 = load ptr, ptr %from, align 8
  %incdec.ptr10 = getelementptr inbounds nuw i16, ptr %11, i32 1
  store ptr %incdec.ptr10, ptr %from, align 8
  %12 = load i16, ptr %11, align 2
  %13 = load ptr, ptr %to, align 8
  %incdec.ptr11 = getelementptr inbounds nuw i16, ptr %13, i32 1
  store ptr %incdec.ptr11, ptr %to, align 8
  store i16 %12, ptr %13, align 2
  br label %sw.bb12

sw.bb12:                                          ; preds = %sw.bb9, %entry
  %14 = load ptr, ptr %from, align 8
  %incdec.ptr13 = getelementptr inbounds nuw i16, ptr %14, i32 1
  store ptr %incdec.ptr13, ptr %from, align 8
  %15 = load i16, ptr %14, align 2
  %16 = load ptr, ptr %to, align 8
  %incdec.ptr14 = getelementptr inbounds nuw i16, ptr %16, i32 1
  store ptr %incdec.ptr14, ptr %to, align 8
  store i16 %15, ptr %16, align 2
  br label %sw.bb15

sw.bb15:                                          ; preds = %sw.bb12, %entry
  %17 = load ptr, ptr %from, align 8
  %incdec.ptr16 = getelementptr inbounds nuw i16, ptr %17, i32 1
  store ptr %incdec.ptr16, ptr %from, align 8
  %18 = load i16, ptr %17, align 2
  %19 = load ptr, ptr %to, align 8
  %incdec.ptr17 = getelementptr inbounds nuw i16, ptr %19, i32 1
  store ptr %incdec.ptr17, ptr %to, align 8
  store i16 %18, ptr %19, align 2
  br label %sw.bb18

sw.bb18:                                          ; preds = %sw.bb15, %entry
  %20 = load ptr, ptr %from, align 8
  %incdec.ptr19 = getelementptr inbounds nuw i16, ptr %20, i32 1
  store ptr %incdec.ptr19, ptr %from, align 8
  %21 = load i16, ptr %20, align 2
  %22 = load ptr, ptr %to, align 8
  %incdec.ptr20 = getelementptr inbounds nuw i16, ptr %22, i32 1
  store ptr %incdec.ptr20, ptr %to, align 8
  store i16 %21, ptr %22, align 2
  br label %sw.bb21

sw.bb21:                                          ; preds = %sw.bb18, %entry
  %23 = load ptr, ptr %from, align 8
  %incdec.ptr22 = getelementptr inbounds nuw i16, ptr %23, i32 1
  store ptr %incdec.ptr22, ptr %from, align 8
  %24 = load i16, ptr %23, align 2
  %25 = load ptr, ptr %to, align 8
  %incdec.ptr23 = getelementptr inbounds nuw i16, ptr %25, i32 1
  store ptr %incdec.ptr23, ptr %to, align 8
  store i16 %24, ptr %25, align 2
  br label %do.cond

do.cond:                                          ; preds = %sw.bb21
  %26 = load i32, ptr %n, align 4
  %dec = add nsw i32 %26, -1
  store i32 %dec, ptr %n, align 4
  %cmp = icmp sgt i32 %dec, 0
  br i1 %cmp, label %do.body, label %do.end, !llvm.loop !6

do.end:                                           ; preds = %do.cond
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %entry
  store i32 0, ptr %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.epilog
  %27 = load i32, ptr %n, align 4
  %cmp24 = icmp slt i32 %27, 39
  br i1 %cmp24, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %28 = load i32, ptr %n, align 4
  %idxprom = sext i32 %28 to i64
  %arrayidx = getelementptr inbounds [39 x i16], ptr %a, i64 0, i64 %idxprom
  %29 = load i16, ptr %arrayidx, align 2
  %conv = sext i16 %29 to i32
  %30 = load i32, ptr %n, align 4
  %idxprom25 = sext i32 %30 to i64
  %arrayidx26 = getelementptr inbounds [39 x i16], ptr %b, i64 0, i64 %idxprom25
  %31 = load i16, ptr %arrayidx26, align 2
  %conv27 = sext i16 %31 to i32
  %cmp28 = icmp ne i32 %conv, %conv27
  br i1 %cmp28, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %32 = load i32, ptr %n, align 4
  %inc = add nsw i32 %32, 1
  store i32 %inc, ptr %n, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %33 = load i32, ptr %retval, align 4
  ret i32 %33
}

declare i32 @printf(ptr noundef, ...) #1

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
!8 = distinct !{!8, !7}
