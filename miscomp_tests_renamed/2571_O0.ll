; 107918423220759758080487371039122708464
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/107918423220759758080487371039122708464.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/107918423220759758080487371039122708464.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local double @test(double noundef %le, double noundef %ri) #0 {
entry:
  %le.addr = alloca double, align 8
  %ri.addr = alloca double, align 8
  %val = alloca double, align 8
  store double %le, ptr %le.addr, align 8
  store double %ri, ptr %ri.addr, align 8
  %0 = load double, ptr %ri.addr, align 8
  %1 = load double, ptr %le.addr, align 8
  %sub = fsub double %0, %1
  %2 = load double, ptr %ri.addr, align 8
  %3 = load double, ptr %le.addr, align 8
  %add = fadd double %3, 1.000000e+00
  %mul = fmul double %2, %add
  %div = fdiv double %sub, %mul
  store double %div, ptr %val, align 8
  %4 = load double, ptr %val, align 8
  ret double %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %retval1 = alloca double, align 8
  store i32 0, ptr %retval, align 4
  %call = call double @test(double noundef 1.000000e+00, double noundef 2.000000e+00)
  store double %call, ptr %retval1, align 8
  %0 = load double, ptr %retval1, align 8
  %cmp = fcmp olt double %0, 2.400000e-01
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load double, ptr %retval1, align 8
  %cmp2 = fcmp ogt double %1, 2.600000e-01
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void @abort() #3
  unreachable

if.end:                                           ; preds = %lor.lhs.false
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
