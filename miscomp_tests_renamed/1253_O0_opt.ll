; 168234081851675595681832884610585499880
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/168234081851675595681832884610585499880_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/168234081851675595681832884610585499880.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"hello\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"%c: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"copied string is %s\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i8, align 1
  %a = alloca ptr, align 8
  %c = alloca i32, align 4
  %b = alloca ptr, align 8
  %destarray = alloca [10 x i8], align 1
  %dest = alloca ptr, align 8
  %src = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store i32 0, ptr %x, align 4
  %0 = load i32, ptr %x, align 4
  %conv = trunc i32 %0 to i8
  store i8 %conv, ptr %y, align 1
  store ptr @.str, ptr %a, align 8
  %1 = load ptr, ptr %a, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.1, ptr noundef %1)
  %2 = load ptr, ptr %a, align 8
  %3 = load i8, ptr %2, align 1
  %conv1 = sext i8 %3 to i32
  store i32 %conv1, ptr %c, align 4
  %4 = load ptr, ptr %a, align 8
  store ptr %4, ptr %b, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load ptr, ptr %b, align 8
  %6 = load i8, ptr %5, align 1
  %conv2 = sext i8 %6 to i32
  %cmp = icmp ne i32 %conv2, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %b, align 8
  %8 = load i8, ptr %7, align 1
  %conv4 = sext i8 %8 to i32
  %9 = load ptr, ptr %b, align 8
  %10 = load i8, ptr %9, align 1
  %conv5 = sext i8 %10 to i32
  %call6 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %conv4, i32 noundef %conv5)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load ptr, ptr %b, align 8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %11, i32 1
  store ptr %incdec.ptr, ptr %b, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %arrayidx = getelementptr inbounds [10 x i8], ptr %destarray, i64 0, i64 0
  store ptr %arrayidx, ptr %dest, align 8
  %12 = load ptr, ptr %a, align 8
  store ptr %12, ptr %src, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.end
  %13 = load ptr, ptr %src, align 8
  %14 = load i8, ptr %13, align 1
  %conv7 = sext i8 %14 to i32
  %cmp8 = icmp ne i32 %conv7, 0
  br i1 %cmp8, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %15 = load ptr, ptr %src, align 8
  %incdec.ptr10 = getelementptr inbounds nuw i8, ptr %15, i32 1
  store ptr %incdec.ptr10, ptr %src, align 8
  %16 = load i8, ptr %15, align 1
  %17 = load ptr, ptr %dest, align 8
  %incdec.ptr11 = getelementptr inbounds nuw i8, ptr %17, i32 1
  store ptr %incdec.ptr11, ptr %dest, align 8
  store i8 %16, ptr %17, align 1
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  %18 = load ptr, ptr %dest, align 8
  store i8 0, ptr %18, align 1
  %arraydecay = getelementptr inbounds [10 x i8], ptr %destarray, i64 0, i64 0
  %call12 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, ptr noundef %arraydecay)
  ret i32 0
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
