; 131543788568274704685506899726766856982
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/131543788568274704685506899726766856982.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/131543788568274704685506899726766856982.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local x86_fp80 @f(x86_fp80 noundef %d, i32 noundef %i) #0 {
entry:
  %d.addr = alloca x86_fp80, align 16
  %i.addr = alloca i32, align 4
  %e = alloca x86_fp80, align 16
  store x86_fp80 %d, ptr %d.addr, align 16
  store i32 %i, ptr %i.addr, align 4
  %0 = load x86_fp80, ptr %d.addr, align 16
  %fneg = fneg x86_fp80 %0
  store x86_fp80 %fneg, ptr %d.addr, align 16
  %1 = load x86_fp80, ptr %d.addr, align 16
  store x86_fp80 %1, ptr %e, align 16
  %2 = load i32, ptr %i.addr, align 4
  %cmp = icmp eq i32 %2, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load x86_fp80, ptr %d.addr, align 16
  %mul = fmul x86_fp80 %3, 0xK40008000000000000000
  store x86_fp80 %mul, ptr %d.addr, align 16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, ptr %i.addr, align 4
  %cmp1 = icmp slt i32 %4, 0
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 5, ptr %i.addr, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %5 = load x86_fp80, ptr %e, align 16
  %6 = load x86_fp80, ptr %d.addr, align 16
  %7 = load x86_fp80, ptr %d.addr, align 16
  %neg = fneg x86_fp80 %5
  %8 = call x86_fp80 @llvm.fmuladd.f80(x86_fp80 %neg, x86_fp80 %6, x86_fp80 %7)
  store x86_fp80 %8, ptr %d.addr, align 16
  %9 = load x86_fp80, ptr %e, align 16
  %10 = load x86_fp80, ptr %d.addr, align 16
  %11 = load x86_fp80, ptr %d.addr, align 16
  %neg6 = fneg x86_fp80 %9
  %12 = call x86_fp80 @llvm.fmuladd.f80(x86_fp80 %neg6, x86_fp80 %10, x86_fp80 %11)
  store x86_fp80 %12, ptr %d.addr, align 16
  %13 = load x86_fp80, ptr %e, align 16
  %14 = load x86_fp80, ptr %d.addr, align 16
  %15 = load x86_fp80, ptr %d.addr, align 16
  %neg8 = fneg x86_fp80 %13
  %16 = call x86_fp80 @llvm.fmuladd.f80(x86_fp80 %neg8, x86_fp80 %14, x86_fp80 %15)
  store x86_fp80 %16, ptr %d.addr, align 16
  %17 = load x86_fp80, ptr %e, align 16
  %18 = load x86_fp80, ptr %d.addr, align 16
  %19 = load x86_fp80, ptr %d.addr, align 16
  %neg10 = fneg x86_fp80 %17
  %20 = call x86_fp80 @llvm.fmuladd.f80(x86_fp80 %neg10, x86_fp80 %18, x86_fp80 %19)
  store x86_fp80 %20, ptr %d.addr, align 16
  %21 = load x86_fp80, ptr %e, align 16
  %22 = load x86_fp80, ptr %d.addr, align 16
  %23 = load x86_fp80, ptr %d.addr, align 16
  %neg12 = fneg x86_fp80 %21
  %24 = call x86_fp80 @llvm.fmuladd.f80(x86_fp80 %neg12, x86_fp80 %22, x86_fp80 %23)
  store x86_fp80 %24, ptr %d.addr, align 16
  %25 = load x86_fp80, ptr %d.addr, align 16
  ret x86_fp80 %25
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare x86_fp80 @llvm.fmuladd.f80(x86_fp80, x86_fp80, x86_fp80) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call x86_fp80 @f(x86_fp80 noundef 0xK40008000000000000000, i32 noundef 1)
  %conv = fptosi x86_fp80 %call to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @abort() #4
  unreachable

if.end:                                           ; preds = %entry
  call void @exit(i32 noundef 0) #5
  unreachable
}

; Function Attrs: noreturn nounwind
declare void @abort() #2

; Function Attrs: noreturn
declare void @exit(i32 noundef) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
