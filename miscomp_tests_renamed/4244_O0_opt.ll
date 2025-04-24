; 174264670346691767922569428391240900666
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/174264670346691767922569428391240900666_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/174264670346691767922569428391240900666.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"X is negative\0A\00", align 1

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
  %arrayidx = getelementptr inbounds [39 x i16], ptr %a, i64 0, i64 %idxprom
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
  %5 = load i32, ptr %n, align 4
  %cmp3 = icmp sgt i32 %5, 0
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %for.end
  br label %if.end

if.else:                                          ; preds = %for.end
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %arraydecay = getelementptr inbounds [39 x i16], ptr %a, i64 0, i64 0
  store ptr %arraydecay, ptr %from, align 8
  %arraydecay5 = getelementptr inbounds [39 x i16], ptr %b, i64 0, i64 0
  store ptr %arraydecay5, ptr %to, align 8
  store i32 39, ptr %count, align 4
  %6 = load i32, ptr %count, align 4
  %add = add nsw i32 %6, 7
  %div = sdiv i32 %add, 8
  store i32 %div, ptr %n, align 4
  %7 = load i32, ptr %count, align 4
  %rem = srem i32 %7, 8
  switch i32 %rem, label %sw.epilog [
    i32 0, label %sw.bb
    i32 7, label %sw.bb7
    i32 6, label %sw.bb10
    i32 5, label %sw.bb13
    i32 4, label %sw.bb16
    i32 3, label %sw.bb19
    i32 2, label %sw.bb22
    i32 1, label %sw.bb25
  ]

sw.bb:                                            ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %do.cond, %sw.bb
  %8 = load ptr, ptr %from, align 8
  %incdec.ptr = getelementptr inbounds nuw i16, ptr %8, i32 1
  store ptr %incdec.ptr, ptr %from, align 8
  %9 = load i16, ptr %8, align 2
  %10 = load ptr, ptr %to, align 8
  %incdec.ptr6 = getelementptr inbounds nuw i16, ptr %10, i32 1
  store ptr %incdec.ptr6, ptr %to, align 8
  store i16 %9, ptr %10, align 2
  br label %sw.bb7

sw.bb7:                                           ; preds = %do.body, %if.end
  %11 = load ptr, ptr %from, align 8
  %incdec.ptr8 = getelementptr inbounds nuw i16, ptr %11, i32 1
  store ptr %incdec.ptr8, ptr %from, align 8
  %12 = load i16, ptr %11, align 2
  %13 = load ptr, ptr %to, align 8
  %incdec.ptr9 = getelementptr inbounds nuw i16, ptr %13, i32 1
  store ptr %incdec.ptr9, ptr %to, align 8
  store i16 %12, ptr %13, align 2
  br label %sw.bb10

sw.bb10:                                          ; preds = %sw.bb7, %if.end
  %14 = load ptr, ptr %from, align 8
  %incdec.ptr11 = getelementptr inbounds nuw i16, ptr %14, i32 1
  store ptr %incdec.ptr11, ptr %from, align 8
  %15 = load i16, ptr %14, align 2
  %16 = load ptr, ptr %to, align 8
  %incdec.ptr12 = getelementptr inbounds nuw i16, ptr %16, i32 1
  store ptr %incdec.ptr12, ptr %to, align 8
  store i16 %15, ptr %16, align 2
  br label %sw.bb13

sw.bb13:                                          ; preds = %sw.bb10, %if.end
  %17 = load ptr, ptr %from, align 8
  %incdec.ptr14 = getelementptr inbounds nuw i16, ptr %17, i32 1
  store ptr %incdec.ptr14, ptr %from, align 8
  %18 = load i16, ptr %17, align 2
  %19 = load ptr, ptr %to, align 8
  %incdec.ptr15 = getelementptr inbounds nuw i16, ptr %19, i32 1
  store ptr %incdec.ptr15, ptr %to, align 8
  store i16 %18, ptr %19, align 2
  br label %sw.bb16

sw.bb16:                                          ; preds = %sw.bb13, %if.end
  %20 = load ptr, ptr %from, align 8
  %incdec.ptr17 = getelementptr inbounds nuw i16, ptr %20, i32 1
  store ptr %incdec.ptr17, ptr %from, align 8
  %21 = load i16, ptr %20, align 2
  %22 = load ptr, ptr %to, align 8
  %incdec.ptr18 = getelementptr inbounds nuw i16, ptr %22, i32 1
  store ptr %incdec.ptr18, ptr %to, align 8
  store i16 %21, ptr %22, align 2
  br label %sw.bb19

sw.bb19:                                          ; preds = %sw.bb16, %if.end
  %23 = load ptr, ptr %from, align 8
  %incdec.ptr20 = getelementptr inbounds nuw i16, ptr %23, i32 1
  store ptr %incdec.ptr20, ptr %from, align 8
  %24 = load i16, ptr %23, align 2
  %25 = load ptr, ptr %to, align 8
  %incdec.ptr21 = getelementptr inbounds nuw i16, ptr %25, i32 1
  store ptr %incdec.ptr21, ptr %to, align 8
  store i16 %24, ptr %25, align 2
  br label %sw.bb22

sw.bb22:                                          ; preds = %sw.bb19, %if.end
  %26 = load ptr, ptr %from, align 8
  %incdec.ptr23 = getelementptr inbounds nuw i16, ptr %26, i32 1
  store ptr %incdec.ptr23, ptr %from, align 8
  %27 = load i16, ptr %26, align 2
  %28 = load ptr, ptr %to, align 8
  %incdec.ptr24 = getelementptr inbounds nuw i16, ptr %28, i32 1
  store ptr %incdec.ptr24, ptr %to, align 8
  store i16 %27, ptr %28, align 2
  br label %sw.bb25

sw.bb25:                                          ; preds = %sw.bb22, %if.end
  %29 = load ptr, ptr %from, align 8
  %incdec.ptr26 = getelementptr inbounds nuw i16, ptr %29, i32 1
  store ptr %incdec.ptr26, ptr %from, align 8
  %30 = load i16, ptr %29, align 2
  %31 = load ptr, ptr %to, align 8
  %incdec.ptr27 = getelementptr inbounds nuw i16, ptr %31, i32 1
  store ptr %incdec.ptr27, ptr %to, align 8
  store i16 %30, ptr %31, align 2
  br label %do.cond

do.cond:                                          ; preds = %sw.bb25
  %32 = load i32, ptr %n, align 4
  %dec = add nsw i32 %32, -1
  store i32 %dec, ptr %n, align 4
  %cmp28 = icmp sgt i32 %dec, 0
  br i1 %cmp28, label %do.body, label %do.end, !llvm.loop !8

do.end:                                           ; preds = %do.cond
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %if.end
  store i32 0, ptr %n, align 4
  br label %for.cond30

for.cond30:                                       ; preds = %for.inc44, %sw.epilog
  %33 = load i32, ptr %n, align 4
  %cmp31 = icmp slt i32 %33, 39
  br i1 %cmp31, label %for.body33, label %for.end46

for.body33:                                       ; preds = %for.cond30
  %34 = load i32, ptr %n, align 4
  %idxprom34 = sext i32 %34 to i64
  %arrayidx35 = getelementptr inbounds [39 x i16], ptr %a, i64 0, i64 %idxprom34
  %35 = load i16, ptr %arrayidx35, align 2
  %conv36 = sext i16 %35 to i32
  %36 = load i32, ptr %n, align 4
  %idxprom37 = sext i32 %36 to i64
  %arrayidx38 = getelementptr inbounds [39 x i16], ptr %b, i64 0, i64 %idxprom37
  %37 = load i16, ptr %arrayidx38, align 2
  %conv39 = sext i16 %37 to i32
  %cmp40 = icmp ne i32 %conv36, %conv39
  br i1 %cmp40, label %if.then42, label %if.end43

if.then42:                                        ; preds = %for.body33
  store i32 1, ptr %retval, align 4
  br label %return

if.end43:                                         ; preds = %for.body33
  br label %for.inc44

for.inc44:                                        ; preds = %if.end43
  %38 = load i32, ptr %n, align 4
  %inc45 = add nsw i32 %38, 1
  store i32 %inc45, ptr %n, align 4
  br label %for.cond30, !llvm.loop !9

for.end46:                                        ; preds = %for.cond30
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end46, %if.then42
  %39 = load i32, ptr %retval, align 4
  ret i32 %39
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
!9 = distinct !{!9, !7}
