; 183637645794905559726881639053003357157
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/183637645794905559726881639053003357157.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/183637645794905559726881639053003357157.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"Done.\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @test(x86_fp80 noundef %val, ptr noundef %eval) #0 {
entry:
  %val.addr = alloca x86_fp80, align 16
  %eval.addr = alloca ptr, align 8
  %tmp = alloca x86_fp80, align 16
  %i = alloca i32, align 4
  store x86_fp80 %val, ptr %val.addr, align 16
  store ptr %eval, ptr %eval.addr, align 8
  %call = call i32 (i32, ...) @process(i32 noundef 100)
  %conv = sitofp i32 %call to x86_fp80
  store x86_fp80 %conv, ptr %tmp, align 16
  store i32 0, ptr %i, align 4
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %conv2 = sitofp i32 %call1 to x86_fp80
  %cmp = fcmp olt x86_fp80 %conv2, 0xK00000000000000000000
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load x86_fp80, ptr %val.addr, align 16
  %fneg = fneg x86_fp80 %0
  store x86_fp80 %fneg, ptr %val.addr, align 16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load x86_fp80, ptr %val.addr, align 16
  %2 = load x86_fp80, ptr %tmp, align 16
  %cmp4 = fcmp oge x86_fp80 %1, %2
  br i1 %cmp4, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  br label %while.cond

while.cond:                                       ; preds = %if.end12, %if.then6
  %3 = load x86_fp80, ptr %tmp, align 16
  %4 = load x86_fp80, ptr %val.addr, align 16
  %cmp7 = fcmp olt x86_fp80 %3, %4
  br i1 %cmp7, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load x86_fp80, ptr %tmp, align 16
  %mul = fmul x86_fp80 %5, 0xK40008000000000000000
  store x86_fp80 %mul, ptr %tmp, align 16
  %6 = load i32, ptr %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %i, align 4
  %cmp9 = icmp sge i32 %6, 10
  br i1 %cmp9, label %if.then11, label %if.end12

if.then11:                                        ; preds = %while.body
  call void @abort() #4
  unreachable

if.end12:                                         ; preds = %while.body
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  br label %if.end27

if.else:                                          ; preds = %if.end
  %7 = load x86_fp80, ptr %val.addr, align 16
  %cmp13 = fcmp une x86_fp80 %7, 0xK00000000000000000000
  br i1 %cmp13, label %if.then15, label %if.end26

if.then15:                                        ; preds = %if.else
  br label %while.cond16

while.cond16:                                     ; preds = %if.end24, %if.then15
  %8 = load x86_fp80, ptr %val.addr, align 16
  %9 = load x86_fp80, ptr %tmp, align 16
  %cmp17 = fcmp olt x86_fp80 %8, %9
  br i1 %cmp17, label %while.body19, label %while.end25

while.body19:                                     ; preds = %while.cond16
  %10 = load x86_fp80, ptr %tmp, align 16
  %div = fdiv x86_fp80 %10, 0xK40008000000000000000
  store x86_fp80 %div, ptr %tmp, align 16
  %11 = load i32, ptr %i, align 4
  %inc20 = add nsw i32 %11, 1
  store i32 %inc20, ptr %i, align 4
  %cmp21 = icmp sge i32 %11, 10
  br i1 %cmp21, label %if.then23, label %if.end24

if.then23:                                        ; preds = %while.body19
  call void @abort() #4
  unreachable

if.end24:                                         ; preds = %while.body19
  br label %while.cond16, !llvm.loop !8

while.end25:                                      ; preds = %while.cond16
  br label %if.end26

if.end26:                                         ; preds = %while.end25, %if.else
  br label %if.end27

if.end27:                                         ; preds = %if.end26, %while.end
  %12 = load i32, ptr %i, align 4
  %13 = load ptr, ptr %eval.addr, align 8
  store i32 %12, ptr %13, align 4
  ret void
}

declare i32 @process(...) #1

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noreturn nounwind
declare void @abort() #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %eval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @test(x86_fp80 noundef 0xK4000C000000000000000, ptr noundef %eval)
  call void @test(x86_fp80 noundef 0xK4000E000000000000000, ptr noundef %eval)
  call void @test(x86_fp80 noundef 0xK40018000000000000000, ptr noundef %eval)
  call void @test(x86_fp80 noundef 0xK4001A000000000000000, ptr noundef %eval)
  call void @exit(i32 noundef 0) #5
  unreachable
}

; Function Attrs: noreturn
declare void @exit(i32 noundef) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }
attributes #5 = { noreturn }

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
