; 195108553871145112286401337380586170149
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/195108553871145112286401337380586170149.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/195108553871145112286401337380586170149.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { double }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %x = alloca double, align 8
  store i32 0, ptr %retval, align 4
  %call = call double @minus_zero()
  store double %call, ptr %x, align 8
  %0 = load double, ptr %x, align 8
  %call1 = call double @asin(double noundef %0)
  store double %call1, ptr %x, align 8
  %1 = load double, ptr %x, align 8
  %cmp = fcmp une double %1, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #3
  unreachable

if.end:                                           ; preds = %entry
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal double @minus_zero() #0 {
entry:
  %__x = alloca %union.anon, align 8
  ret double 0.000000e+00
}

; Function Attrs: noinline nounwind uwtable
define internal double @asin(double noundef %__x) #0 {
entry:
  %__x.addr = alloca double, align 8
  store double %__x, ptr %__x.addr, align 8
  %0 = load double, ptr %__x.addr, align 8
  %conv = fpext double %0 to x86_fp80
  %1 = load double, ptr %__x.addr, align 8
  %2 = load double, ptr %__x.addr, align 8
  %neg = fneg double %1
  %3 = call double @llvm.fmuladd.f64(double %neg, double %2, double 1.000000e+00)
  %conv1 = fpext double %3 to x86_fp80
  %call = call x86_fp80 @__sqrtl(x86_fp80 noundef %conv1)
  %call2 = call x86_fp80 @__atan2l(x86_fp80 noundef %conv, x86_fp80 noundef %call)
  %conv3 = fptrunc x86_fp80 %call2 to double
  ret double %conv3
}

; Function Attrs: noreturn nounwind
declare void @abort() #1

; Function Attrs: noinline nounwind uwtable
define internal x86_fp80 @__atan2l(x86_fp80 noundef %__y, x86_fp80 noundef %__x) #0 {
entry:
  %__y.addr = alloca x86_fp80, align 16
  %__x.addr = alloca x86_fp80, align 16
  %__value = alloca x86_fp80, align 16
  store x86_fp80 %__y, ptr %__y.addr, align 16
  store x86_fp80 %__x, ptr %__x.addr, align 16
  %0 = load x86_fp80, ptr %__x.addr, align 16
  %1 = load x86_fp80, ptr %__y.addr, align 16
  %2 = call x86_fp80 asm sideeffect "fpatan\0A\09", "={st},0,{st(1)},~{st(1)},~{dirflag},~{fpsr},~{flags}"(x86_fp80 %0, x86_fp80 %1) #4, !srcloc !6
  store x86_fp80 %2, ptr %__value, align 16
  %3 = load x86_fp80, ptr %__value, align 16
  ret x86_fp80 %3
}

; Function Attrs: noinline nounwind uwtable
define internal x86_fp80 @__sqrtl(x86_fp80 noundef %__x) #0 {
entry:
  %__x.addr = alloca x86_fp80, align 16
  %__result = alloca x86_fp80, align 16
  store x86_fp80 %__x, ptr %__x.addr, align 16
  %0 = load x86_fp80, ptr %__x.addr, align 16
  %1 = call x86_fp80 asm sideeffect "fsqrt", "={st},0,~{dirflag},~{fpsr},~{flags}"(x86_fp80 %0) #4, !srcloc !7
  store x86_fp80 %1, ptr %__result, align 16
  %2 = load x86_fp80, ptr %__result, align 16
  ret x86_fp80 %2
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { noreturn nounwind }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
!6 = !{i64 348, i64 357}
!7 = !{i64 552}
