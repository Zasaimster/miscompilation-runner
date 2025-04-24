; 176618916778271553826472901056484761073
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/176618916778271553826472901056484761073_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/176618916778271553826472901056484761073.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local float @fx(double noundef %0) #0 {
entry:
  %x.addr = alloca float, align 4
  %x = fptrunc double %0 to float
  store float %x, ptr %x.addr, align 4
  %1 = load float, ptr %x.addr, align 4
  %conv = fpext float %1 to double
  %mul = fmul double 0x40026BB1BBB58975, %conv
  %div = fdiv double 3.000000e+00, %mul
  %add = fadd double 1.000000e+00, %div
  %conv1 = fptrunc double %add to float
  ret float %conv1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca float, align 4
  %b = alloca float, align 4
  %c = alloca float, align 4
  store i32 0, ptr %retval, align 4
  %call = call float @inita()
  store float %call, ptr %a, align 4
  %call1 = call float @initc()
  store float %call1, ptr %c, align 4
  %call2 = call i32 @f()
  %0 = load float, ptr %c, align 4
  %conv = fpext float %0 to double
  %call3 = call float @fx(double noundef %conv)
  %1 = load float, ptr %a, align 4
  %add = fadd float %call3, %1
  store float %add, ptr %b, align 4
  %call4 = call i32 @f()
  %2 = load float, ptr %a, align 4
  %conv5 = fpext float %2 to double
  %cmp = fcmp une double %conv5, 3.000000e+00
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load float, ptr %b, align 4
  %conv7 = fpext float %3 to double
  %cmp8 = fcmp olt double %conv7, 4.325700e+00
  br i1 %cmp8, label %if.then, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false
  %4 = load float, ptr %b, align 4
  %conv11 = fpext float %4 to double
  %cmp12 = fcmp ogt double %conv11, 4.325800e+00
  br i1 %cmp12, label %if.then, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %lor.lhs.false10
  %5 = load float, ptr %c, align 4
  %conv15 = fpext float %5 to double
  %cmp16 = fcmp une double %conv15, 4.000000e+00
  br i1 %cmp16, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false14, %lor.lhs.false10, %lor.lhs.false, %entry
  call void @abort() #3
  unreachable

if.end:                                           ; preds = %lor.lhs.false14
  call void @exit(i32 noundef 0) #4
  unreachable
}

; Function Attrs: noreturn nounwind
declare void @abort() #1

; Function Attrs: noreturn
declare void @exit(i32 noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local float @inita() #0 {
entry:
  ret float 3.000000e+00
}

; Function Attrs: noinline nounwind uwtable
define dso_local float @initc() #0 {
entry:
  ret float 4.000000e+00
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f() #0 {
entry:
  %retval = alloca i32, align 4
  %0 = load i32, ptr %retval, align 4
  ret i32 %0
}

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
