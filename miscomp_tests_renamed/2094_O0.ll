; 132143024369662692528514348939734626114
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/132143024369662692528514348939734626114.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/132143024369662692528514348939734626114.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @test(x86_fp80 noundef %val, ptr noundef %eval) #0 {
entry:
  %val.addr = alloca x86_fp80, align 16
  %eval.addr = alloca ptr, align 8
  %tmp = alloca x86_fp80, align 16
  %i = alloca i32, align 4
  store x86_fp80 %val, ptr %val.addr, align 16
  store ptr %eval, ptr %eval.addr, align 8
  %0 = load x86_fp80, ptr %val.addr, align 16
  %sub = fsub x86_fp80 0xK3FFF8000000000000000, %0
  store x86_fp80 %sub, ptr %tmp, align 16
  store i32 0, ptr %i, align 4
  %1 = load x86_fp80, ptr %val.addr, align 16
  %cmp = fcmp olt x86_fp80 %1, 0xK00000000000000000000
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load x86_fp80, ptr %val.addr, align 16
  %fneg = fneg x86_fp80 %2
  store x86_fp80 %fneg, ptr %val.addr, align 16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load x86_fp80, ptr %val.addr, align 16
  %4 = load x86_fp80, ptr %tmp, align 16
  %cmp1 = fcmp oge x86_fp80 %3, %4
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  br label %while.cond

while.cond:                                       ; preds = %if.end6, %if.then2
  %5 = load x86_fp80, ptr %tmp, align 16
  %6 = load x86_fp80, ptr %val.addr, align 16
  %cmp3 = fcmp olt x86_fp80 %5, %6
  br i1 %cmp3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load x86_fp80, ptr %tmp, align 16
  %mul = fmul x86_fp80 %7, 0xK40008000000000000000
  store x86_fp80 %mul, ptr %tmp, align 16
  %8 = load i32, ptr %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %i, align 4
  %cmp4 = icmp sge i32 %8, 10
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %while.body
  call void @abort() #3
  unreachable

if.end6:                                          ; preds = %while.body
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  br label %if.end18

if.else:                                          ; preds = %if.end
  %9 = load x86_fp80, ptr %val.addr, align 16
  %cmp7 = fcmp une x86_fp80 %9, 0xK00000000000000000000
  br i1 %cmp7, label %if.then8, label %if.end17

if.then8:                                         ; preds = %if.else
  br label %while.cond9

while.cond9:                                      ; preds = %if.end15, %if.then8
  %10 = load x86_fp80, ptr %val.addr, align 16
  %11 = load x86_fp80, ptr %tmp, align 16
  %cmp10 = fcmp olt x86_fp80 %10, %11
  br i1 %cmp10, label %while.body11, label %while.end16

while.body11:                                     ; preds = %while.cond9
  %12 = load x86_fp80, ptr %tmp, align 16
  %div = fdiv x86_fp80 %12, 0xK40008000000000000000
  store x86_fp80 %div, ptr %tmp, align 16
  %13 = load i32, ptr %i, align 4
  %inc12 = add nsw i32 %13, 1
  store i32 %inc12, ptr %i, align 4
  %cmp13 = icmp sge i32 %13, 10
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %while.body11
  call void @abort() #3
  unreachable

if.end15:                                         ; preds = %while.body11
  br label %while.cond9, !llvm.loop !8

while.end16:                                      ; preds = %while.cond9
  br label %if.end17

if.end17:                                         ; preds = %while.end16, %if.else
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %while.end
  %14 = load i32, ptr %i, align 4
  %15 = load ptr, ptr %eval.addr, align 8
  store i32 %14, ptr %15, align 4
  ret void
}

; Function Attrs: noreturn nounwind
declare void @abort() #1

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
  call void @exit(i32 noundef 0) #4
  unreachable
}

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
