; 154476578796324481950133360512396366906
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/154476578796324481950133360512396366906_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/154476578796324481950133360512396366906.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"Hello, World!\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %count = alloca i32, align 4
  %n = alloca i32, align 4
  %from = alloca ptr, align 8
  %to = alloca ptr, align 8
  %saved_stack = alloca ptr, align 8
  %__vla_expr0 = alloca i64, align 8
  %b = alloca [39 x i16], align 16
  %cleanup.dest.slot = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %0 = zext i32 %call to i64
  %1 = call ptr @llvm.stacksave.p0()
  store ptr %1, ptr %saved_stack, align 8
  %vla = alloca i16, i64 %0, align 16
  store i64 %0, ptr %__vla_expr0, align 8
  store i32 0, ptr %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %n, align 4
  %cmp = icmp slt i32 %2, 39
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, ptr %n, align 4
  %conv = trunc i32 %3 to i16
  %4 = load i32, ptr %n, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i16, ptr %vla, i64 %idxprom
  store i16 %conv, ptr %arrayidx, align 2
  %5 = load i32, ptr %n, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds [39 x i16], ptr %b, i64 0, i64 %idxprom1
  store i16 0, ptr %arrayidx2, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, ptr %n, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %n, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store ptr %vla, ptr %from, align 8
  %arraydecay = getelementptr inbounds [39 x i16], ptr %b, i64 0, i64 0
  store ptr %arraydecay, ptr %to, align 8
  store i32 39, ptr %count, align 4
  %7 = load i32, ptr %count, align 4
  %add = add nsw i32 %7, 7
  %div = sdiv i32 %add, 8
  store i32 %div, ptr %n, align 4
  %8 = load i32, ptr %count, align 4
  %rem = srem i32 %8, 8
  switch i32 %rem, label %sw.epilog [
    i32 0, label %sw.bb
    i32 7, label %sw.bb4
    i32 6, label %sw.bb7
    i32 5, label %sw.bb10
    i32 4, label %sw.bb13
    i32 3, label %sw.bb16
    i32 2, label %sw.bb19
    i32 1, label %sw.bb22
  ]

sw.bb:                                            ; preds = %for.end
  br label %do.body

do.body:                                          ; preds = %do.cond, %sw.bb
  %9 = load ptr, ptr %from, align 8
  %incdec.ptr = getelementptr inbounds nuw i16, ptr %9, i32 1
  store ptr %incdec.ptr, ptr %from, align 8
  %10 = load i16, ptr %9, align 2
  %11 = load ptr, ptr %to, align 8
  %incdec.ptr3 = getelementptr inbounds nuw i16, ptr %11, i32 1
  store ptr %incdec.ptr3, ptr %to, align 8
  store i16 %10, ptr %11, align 2
  br label %sw.bb4

sw.bb4:                                           ; preds = %do.body, %for.end
  %12 = load ptr, ptr %from, align 8
  %incdec.ptr5 = getelementptr inbounds nuw i16, ptr %12, i32 1
  store ptr %incdec.ptr5, ptr %from, align 8
  %13 = load i16, ptr %12, align 2
  %14 = load ptr, ptr %to, align 8
  %incdec.ptr6 = getelementptr inbounds nuw i16, ptr %14, i32 1
  store ptr %incdec.ptr6, ptr %to, align 8
  store i16 %13, ptr %14, align 2
  br label %sw.bb7

sw.bb7:                                           ; preds = %sw.bb4, %for.end
  %15 = load ptr, ptr %from, align 8
  %incdec.ptr8 = getelementptr inbounds nuw i16, ptr %15, i32 1
  store ptr %incdec.ptr8, ptr %from, align 8
  %16 = load i16, ptr %15, align 2
  %17 = load ptr, ptr %to, align 8
  %incdec.ptr9 = getelementptr inbounds nuw i16, ptr %17, i32 1
  store ptr %incdec.ptr9, ptr %to, align 8
  store i16 %16, ptr %17, align 2
  br label %sw.bb10

sw.bb10:                                          ; preds = %sw.bb7, %for.end
  %18 = load ptr, ptr %from, align 8
  %incdec.ptr11 = getelementptr inbounds nuw i16, ptr %18, i32 1
  store ptr %incdec.ptr11, ptr %from, align 8
  %19 = load i16, ptr %18, align 2
  %20 = load ptr, ptr %to, align 8
  %incdec.ptr12 = getelementptr inbounds nuw i16, ptr %20, i32 1
  store ptr %incdec.ptr12, ptr %to, align 8
  store i16 %19, ptr %20, align 2
  br label %sw.bb13

sw.bb13:                                          ; preds = %sw.bb10, %for.end
  %21 = load ptr, ptr %from, align 8
  %incdec.ptr14 = getelementptr inbounds nuw i16, ptr %21, i32 1
  store ptr %incdec.ptr14, ptr %from, align 8
  %22 = load i16, ptr %21, align 2
  %23 = load ptr, ptr %to, align 8
  %incdec.ptr15 = getelementptr inbounds nuw i16, ptr %23, i32 1
  store ptr %incdec.ptr15, ptr %to, align 8
  store i16 %22, ptr %23, align 2
  br label %sw.bb16

sw.bb16:                                          ; preds = %sw.bb13, %for.end
  %24 = load ptr, ptr %from, align 8
  %incdec.ptr17 = getelementptr inbounds nuw i16, ptr %24, i32 1
  store ptr %incdec.ptr17, ptr %from, align 8
  %25 = load i16, ptr %24, align 2
  %26 = load ptr, ptr %to, align 8
  %incdec.ptr18 = getelementptr inbounds nuw i16, ptr %26, i32 1
  store ptr %incdec.ptr18, ptr %to, align 8
  store i16 %25, ptr %26, align 2
  br label %sw.bb19

sw.bb19:                                          ; preds = %sw.bb16, %for.end
  %27 = load ptr, ptr %from, align 8
  %incdec.ptr20 = getelementptr inbounds nuw i16, ptr %27, i32 1
  store ptr %incdec.ptr20, ptr %from, align 8
  %28 = load i16, ptr %27, align 2
  %29 = load ptr, ptr %to, align 8
  %incdec.ptr21 = getelementptr inbounds nuw i16, ptr %29, i32 1
  store ptr %incdec.ptr21, ptr %to, align 8
  store i16 %28, ptr %29, align 2
  br label %sw.bb22

sw.bb22:                                          ; preds = %sw.bb19, %for.end
  %30 = load ptr, ptr %from, align 8
  %incdec.ptr23 = getelementptr inbounds nuw i16, ptr %30, i32 1
  store ptr %incdec.ptr23, ptr %from, align 8
  %31 = load i16, ptr %30, align 2
  %32 = load ptr, ptr %to, align 8
  %incdec.ptr24 = getelementptr inbounds nuw i16, ptr %32, i32 1
  store ptr %incdec.ptr24, ptr %to, align 8
  store i16 %31, ptr %32, align 2
  br label %do.cond

do.cond:                                          ; preds = %sw.bb22
  %33 = load i32, ptr %n, align 4
  %dec = add nsw i32 %33, -1
  store i32 %dec, ptr %n, align 4
  %cmp25 = icmp sgt i32 %dec, 0
  br i1 %cmp25, label %do.body, label %do.end, !llvm.loop !8

do.end:                                           ; preds = %do.cond
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %for.end
  store i32 0, ptr %n, align 4
  br label %for.cond27

for.cond27:                                       ; preds = %for.inc39, %sw.epilog
  %34 = load i32, ptr %n, align 4
  %cmp28 = icmp slt i32 %34, 39
  br i1 %cmp28, label %for.body30, label %for.end41

for.body30:                                       ; preds = %for.cond27
  %35 = load i32, ptr %n, align 4
  %idxprom31 = sext i32 %35 to i64
  %arrayidx32 = getelementptr inbounds i16, ptr %vla, i64 %idxprom31
  %36 = load i16, ptr %arrayidx32, align 2
  %conv33 = sext i16 %36 to i32
  %37 = load i32, ptr %n, align 4
  %idxprom34 = sext i32 %37 to i64
  %arrayidx35 = getelementptr inbounds [39 x i16], ptr %b, i64 0, i64 %idxprom34
  %38 = load i16, ptr %arrayidx35, align 2
  %conv36 = sext i16 %38 to i32
  %cmp37 = icmp ne i32 %conv33, %conv36
  br i1 %cmp37, label %if.then, label %if.end

if.then:                                          ; preds = %for.body30
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %for.body30
  br label %for.inc39

for.inc39:                                        ; preds = %if.end
  %39 = load i32, ptr %n, align 4
  %inc40 = add nsw i32 %39, 1
  store i32 %inc40, ptr %n, align 4
  br label %for.cond27, !llvm.loop !9

for.end41:                                        ; preds = %for.cond27
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end41, %if.then
  %40 = load ptr, ptr %saved_stack, align 8
  call void @llvm.stackrestore.p0(ptr %40)
  %41 = load i32, ptr %retval, align 4
  ret i32 %41
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn }

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
