; 119350275404024185684918839995681671953
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/119350275404024185684918839995681671953_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/119350275404024185684918839995681671953.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %pa = alloca ptr, align 8
  %pb = alloca ptr, align 8
  %pc = alloca ptr, align 8
  %ppa = alloca ptr, align 8
  %ppb = alloca ptr, align 8
  %ppc = alloca ptr, align 8
  %i = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %z = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %0 = load ptr, ptr %pa, align 8
  %1 = load i32, ptr %0, align 4
  %dec = add nsw i32 %1, -1
  store i32 %dec, ptr %0, align 4
  store i32 %1, ptr %a, align 4
  store i32 20, ptr %b, align 4
  store i32 30, ptr %c, align 4
  store ptr %a, ptr %pa, align 8
  store ptr %b, ptr %pb, align 8
  store ptr %c, ptr %pc, align 8
  store ptr %pa, ptr %ppa, align 8
  store ptr %pb, ptr %ppb, align 8
  store ptr %pc, ptr %ppc, align 8
  store i32 0, ptr %x, align 4
  store i32 0, ptr %y, align 4
  store i32 0, ptr %z, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %2, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %pa, align 8
  %cmp1 = icmp eq ptr %3, %a
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  store ptr %b, ptr %pa, align 8
  br label %if.end

if.else:                                          ; preds = %for.body
  store ptr %a, ptr %pa, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.cond

while.cond:                                       ; preds = %if.end6, %if.end
  %4 = load ptr, ptr %pa, align 8
  %5 = load i32, ptr %4, align 4
  %dec2 = add nsw i32 %5, -1
  store i32 %dec2, ptr %4, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i32, ptr %x, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %x, align 4
  %7 = load ptr, ptr %pa, align 8
  %8 = load i32, ptr %7, align 4
  %cmp3 = icmp slt i32 %8, 3
  br i1 %cmp3, label %if.then4, label %if.else5

if.then4:                                         ; preds = %while.body
  br label %while.end

if.else5:                                         ; preds = %while.body
  store ptr %b, ptr %pa, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.else5
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %if.then4, %while.cond
  %9 = load i32, ptr %x, align 4
  %inc7 = add nsw i32 %9, 1
  store i32 %inc7, ptr %x, align 4
  store ptr %b, ptr %pa, align 8
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %10 = load i32, ptr %i, align 4
  %inc8 = add nsw i32 %10, 1
  store i32 %inc8, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %11 = load ptr, ptr %pa, align 8
  %12 = load i32, ptr %11, align 4
  %cmp9 = icmp ne i32 %12, -5
  br i1 %cmp9, label %if.then13, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %13 = load ptr, ptr %pb, align 8
  %14 = load i32, ptr %13, align 4
  %cmp10 = icmp ne i32 %14, -5
  br i1 %cmp10, label %if.then13, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %lor.lhs.false
  %15 = load i32, ptr %x, align 4
  %cmp12 = icmp ne i32 %15, 43
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %lor.lhs.false11, %lor.lhs.false, %for.end
  call void @abort() #3
  unreachable

if.end14:                                         ; preds = %lor.lhs.false11
  call void @exit(i32 noundef 0) #4
  unreachable
}

; Function Attrs: noreturn nounwind
declare void @abort() #1

; Function Attrs: noreturn
declare void @exit(i32 noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }
attributes #4 = { noreturn }

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
