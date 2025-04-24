; 120323421154307293461085569893905335231
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/120323421154307293461085569893905335231_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/120323421154307293461085569893905335231.c"
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
  %a = alloca [39 x i16], align 16
  %saved_stack = alloca ptr, align 8
  %__vla_expr0 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %0 = load i32, ptr %count, align 4
  %add = add nsw i32 %0, 7
  %div = sdiv i32 %add, 8
  %1 = zext i32 %div to i64
  %2 = call ptr @llvm.stacksave.p0()
  store ptr %2, ptr %saved_stack, align 8
  %vla = alloca i16, i64 %1, align 16
  store i64 %1, ptr %__vla_expr0, align 8
  store i32 0, ptr %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, ptr %n, align 4
  %cmp = icmp slt i32 %3, 39
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, ptr %n, align 4
  %conv = trunc i32 %4 to i16
  %5 = load i32, ptr %n, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [39 x i16], ptr %a, i64 0, i64 %idxprom
  store i16 %conv, ptr %arrayidx, align 2
  %6 = load i32, ptr %n, align 4
  %idxprom1 = sext i32 %6 to i64
  %arrayidx2 = getelementptr inbounds i16, ptr %vla, i64 %idxprom1
  store i16 0, ptr %arrayidx2, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, ptr %n, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr %n, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %arraydecay = getelementptr inbounds [39 x i16], ptr %a, i64 0, i64 0
  store ptr %arraydecay, ptr %from, align 8
  store ptr %vla, ptr %to, align 8
  store i32 39, ptr %count, align 4
  %8 = load i32, ptr %count, align 4
  %add3 = add nsw i32 %8, 7
  %div4 = sdiv i32 %add3, 8
  store i32 %div4, ptr %n, align 4
  %9 = load i32, ptr %count, align 4
  %rem = srem i32 %9, 8
  switch i32 %rem, label %sw.epilog [
    i32 0, label %sw.bb
    i32 7, label %sw.bb6
    i32 6, label %sw.bb9
    i32 5, label %sw.bb12
    i32 4, label %sw.bb15
    i32 3, label %sw.bb18
    i32 2, label %sw.bb21
    i32 1, label %sw.bb24
  ]

sw.bb:                                            ; preds = %for.end
  br label %do.body

do.body:                                          ; preds = %do.cond, %sw.bb
  %10 = load ptr, ptr %from, align 8
  %incdec.ptr = getelementptr inbounds nuw i16, ptr %10, i32 1
  store ptr %incdec.ptr, ptr %from, align 8
  %11 = load i16, ptr %10, align 2
  %12 = load ptr, ptr %to, align 8
  %incdec.ptr5 = getelementptr inbounds nuw i16, ptr %12, i32 1
  store ptr %incdec.ptr5, ptr %to, align 8
  store i16 %11, ptr %12, align 2
  br label %sw.bb6

sw.bb6:                                           ; preds = %do.body, %for.end
  %13 = load ptr, ptr %from, align 8
  %incdec.ptr7 = getelementptr inbounds nuw i16, ptr %13, i32 1
  store ptr %incdec.ptr7, ptr %from, align 8
  %14 = load i16, ptr %13, align 2
  %15 = load ptr, ptr %to, align 8
  %incdec.ptr8 = getelementptr inbounds nuw i16, ptr %15, i32 1
  store ptr %incdec.ptr8, ptr %to, align 8
  store i16 %14, ptr %15, align 2
  br label %sw.bb9

sw.bb9:                                           ; preds = %sw.bb6, %for.end
  %16 = load ptr, ptr %from, align 8
  %incdec.ptr10 = getelementptr inbounds nuw i16, ptr %16, i32 1
  store ptr %incdec.ptr10, ptr %from, align 8
  %17 = load i16, ptr %16, align 2
  %18 = load ptr, ptr %to, align 8
  %incdec.ptr11 = getelementptr inbounds nuw i16, ptr %18, i32 1
  store ptr %incdec.ptr11, ptr %to, align 8
  store i16 %17, ptr %18, align 2
  br label %sw.bb12

sw.bb12:                                          ; preds = %sw.bb9, %for.end
  %19 = load ptr, ptr %from, align 8
  %incdec.ptr13 = getelementptr inbounds nuw i16, ptr %19, i32 1
  store ptr %incdec.ptr13, ptr %from, align 8
  %20 = load i16, ptr %19, align 2
  %21 = load ptr, ptr %to, align 8
  %incdec.ptr14 = getelementptr inbounds nuw i16, ptr %21, i32 1
  store ptr %incdec.ptr14, ptr %to, align 8
  store i16 %20, ptr %21, align 2
  br label %sw.bb15

sw.bb15:                                          ; preds = %sw.bb12, %for.end
  %22 = load ptr, ptr %from, align 8
  %incdec.ptr16 = getelementptr inbounds nuw i16, ptr %22, i32 1
  store ptr %incdec.ptr16, ptr %from, align 8
  %23 = load i16, ptr %22, align 2
  %24 = load ptr, ptr %to, align 8
  %incdec.ptr17 = getelementptr inbounds nuw i16, ptr %24, i32 1
  store ptr %incdec.ptr17, ptr %to, align 8
  store i16 %23, ptr %24, align 2
  br label %sw.bb18

sw.bb18:                                          ; preds = %sw.bb15, %for.end
  %25 = load ptr, ptr %from, align 8
  %incdec.ptr19 = getelementptr inbounds nuw i16, ptr %25, i32 1
  store ptr %incdec.ptr19, ptr %from, align 8
  %26 = load i16, ptr %25, align 2
  %27 = load ptr, ptr %to, align 8
  %incdec.ptr20 = getelementptr inbounds nuw i16, ptr %27, i32 1
  store ptr %incdec.ptr20, ptr %to, align 8
  store i16 %26, ptr %27, align 2
  br label %sw.bb21

sw.bb21:                                          ; preds = %sw.bb18, %for.end
  %28 = load ptr, ptr %from, align 8
  %incdec.ptr22 = getelementptr inbounds nuw i16, ptr %28, i32 1
  store ptr %incdec.ptr22, ptr %from, align 8
  %29 = load i16, ptr %28, align 2
  %30 = load ptr, ptr %to, align 8
  %incdec.ptr23 = getelementptr inbounds nuw i16, ptr %30, i32 1
  store ptr %incdec.ptr23, ptr %to, align 8
  store i16 %29, ptr %30, align 2
  br label %sw.bb24

sw.bb24:                                          ; preds = %sw.bb21, %for.end
  %31 = load ptr, ptr %from, align 8
  %incdec.ptr25 = getelementptr inbounds nuw i16, ptr %31, i32 1
  store ptr %incdec.ptr25, ptr %from, align 8
  %32 = load i16, ptr %31, align 2
  %33 = load ptr, ptr %to, align 8
  %incdec.ptr26 = getelementptr inbounds nuw i16, ptr %33, i32 1
  store ptr %incdec.ptr26, ptr %to, align 8
  store i16 %32, ptr %33, align 2
  br label %do.cond

do.cond:                                          ; preds = %sw.bb24
  %34 = load i32, ptr %n, align 4
  %dec = add nsw i32 %34, -1
  store i32 %dec, ptr %n, align 4
  %cmp27 = icmp sgt i32 %dec, 0
  br i1 %cmp27, label %do.body, label %do.end, !llvm.loop !8

do.end:                                           ; preds = %do.cond
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %for.end
  store i32 0, ptr %n, align 4
  br label %for.cond29

for.cond29:                                       ; preds = %for.inc41, %sw.epilog
  %35 = load i32, ptr %n, align 4
  %cmp30 = icmp slt i32 %35, 39
  br i1 %cmp30, label %for.body32, label %for.end43

for.body32:                                       ; preds = %for.cond29
  %36 = load i32, ptr %n, align 4
  %idxprom33 = sext i32 %36 to i64
  %arrayidx34 = getelementptr inbounds [39 x i16], ptr %a, i64 0, i64 %idxprom33
  %37 = load i16, ptr %arrayidx34, align 2
  %conv35 = sext i16 %37 to i32
  %38 = load i32, ptr %n, align 4
  %idxprom36 = sext i32 %38 to i64
  %arrayidx37 = getelementptr inbounds i16, ptr %vla, i64 %idxprom36
  %39 = load i16, ptr %arrayidx37, align 2
  %conv38 = sext i16 %39 to i32
  %cmp39 = icmp ne i32 %conv35, %conv38
  br i1 %cmp39, label %if.then, label %if.end

if.then:                                          ; preds = %for.body32
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %for.body32
  br label %for.inc41

for.inc41:                                        ; preds = %if.end
  %40 = load i32, ptr %n, align 4
  %inc42 = add nsw i32 %40, 1
  store i32 %inc42, ptr %n, align 4
  br label %for.cond29, !llvm.loop !9

for.end43:                                        ; preds = %for.cond29
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end43, %if.then
  %41 = load ptr, ptr %saved_stack, align 8
  call void @llvm.stackrestore.p0(ptr %41)
  %42 = load i32, ptr %retval, align 4
  ret i32 %42
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn }

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
