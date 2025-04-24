; 186245379054023311608615493674022619733
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/186245379054023311608615493674022619733.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/186245379054023311608615493674022619733.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @f(ptr noundef %a, double noundef %y) #0 {
entry:
  %a.addr = alloca ptr, align 8
  %y.addr = alloca double, align 8
  store ptr %a, ptr %a.addr, align 8
  store double %y, ptr %y.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @g(double noundef %a, double noundef %b, double noundef %c, double noundef %d) #0 {
entry:
  %a.addr = alloca double, align 8
  %b.addr = alloca double, align 8
  %c.addr = alloca double, align 8
  %d.addr = alloca double, align 8
  %x = alloca double, align 8
  %y = alloca double, align 8
  %z = alloca double, align 8
  %p = alloca ptr, align 8
  store double %a, ptr %a.addr, align 8
  store double %b, ptr %b.addr, align 8
  store double %c, ptr %c.addr, align 8
  store double %d, ptr %d.addr, align 8
  store double 3.000000e+00, ptr %x, align 8
  store double 0.000000e+00, ptr %y, align 8
  %0 = alloca i8, i64 16, align 16
  store ptr %0, ptr %p, align 8
  %1 = load ptr, ptr %p, align 8
  %2 = load double, ptr %y, align 8
  call void @f(ptr noundef %1, double noundef %2)
  %3 = load double, ptr %x, align 8
  %4 = load double, ptr %y, align 8
  %mul = fmul double %3, %4
  %5 = load double, ptr %a.addr, align 8
  %mul1 = fmul double %mul, %5
  store double %mul1, ptr %z, align 8
  %6 = load double, ptr %z, align 8
  %7 = load double, ptr %b.addr, align 8
  %add = fadd double %6, %7
  ret double %add
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca double, align 8
  %b = alloca double, align 8
  %c = alloca double, align 8
  %d = alloca double, align 8
  store i32 0, ptr %retval, align 4
  store double 1.000000e+00, ptr %a, align 8
  store double 0.000000e+00, ptr %b, align 8
  store double 1.000000e+01, ptr %c, align 8
  store double 0.000000e+00, ptr %d, align 8
  %0 = load double, ptr %a, align 8
  %1 = load double, ptr %b, align 8
  %2 = load double, ptr %c, align 8
  %3 = load double, ptr %d, align 8
  %call = call double @g(double noundef %0, double noundef %1, double noundef %2, double noundef %3)
  %cmp = fcmp une double %call, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #3
  unreachable

if.end:                                           ; preds = %entry
  %4 = load double, ptr %a, align 8
  %cmp1 = fcmp une double %4, 1.000000e+00
  br i1 %cmp1, label %if.then7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %5 = load double, ptr %b, align 8
  %cmp2 = fcmp une double %5, 0.000000e+00
  br i1 %cmp2, label %if.then7, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %6 = load double, ptr %c, align 8
  %cmp4 = fcmp une double %6, 1.000000e+01
  br i1 %cmp4, label %if.then7, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false3
  %7 = load double, ptr %d, align 8
  %cmp6 = fcmp une double %7, 0.000000e+00
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %lor.lhs.false5, %lor.lhs.false3, %lor.lhs.false, %if.end
  call void @abort() #3
  unreachable

if.end8:                                          ; preds = %lor.lhs.false5
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
