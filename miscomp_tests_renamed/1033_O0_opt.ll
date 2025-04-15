; 171363510102939854399713354015555644786
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/171363510102939854399713354015555644786_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/171363510102939854399713354015555644786.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scf10 = type { { double, double }, { double, double } }

@g1s = dso_local global %struct.Scf10 zeroinitializer, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @check(ptr noundef byval(%struct.Scf10) align 8 %x, double noundef %y.coerce0, double noundef %y.coerce1) #0 {
entry:
  %y = alloca { double, double }, align 8
  %0 = getelementptr inbounds nuw { double, double }, ptr %y, i32 0, i32 0
  store double %y.coerce0, ptr %0, align 8
  %1 = getelementptr inbounds nuw { double, double }, ptr %y, i32 0, i32 1
  store double %y.coerce1, ptr %1, align 8
  %y.realp = getelementptr inbounds nuw { double, double }, ptr %y, i32 0, i32 0
  %y.real = load double, ptr %y.realp, align 8
  %y.imagp = getelementptr inbounds nuw { double, double }, ptr %y, i32 0, i32 1
  %y.imag = load double, ptr %y.imagp, align 8
  %cmp.r = fcmp une double 0.000000e+00, %y.real
  %cmp.i = fcmp une double 0.000000e+00, %y.imag
  %or.ri = or i1 %cmp.r, %cmp.i
  br i1 %or.ri, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #2
  unreachable

if.end:                                           ; preds = %entry
  ret void
}

; Function Attrs: noreturn nounwind
declare void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @init(ptr noundef %p, double noundef %y.coerce0, double noundef %y.coerce1) #0 {
entry:
  %y = alloca { double, double }, align 8
  %p.addr = alloca ptr, align 8
  %0 = getelementptr inbounds nuw { double, double }, ptr %y, i32 0, i32 0
  store double %y.coerce0, ptr %0, align 8
  %1 = getelementptr inbounds nuw { double, double }, ptr %y, i32 0, i32 1
  store double %y.coerce1, ptr %1, align 8
  store ptr %p, ptr %p.addr, align 8
  %y.realp = getelementptr inbounds nuw { double, double }, ptr %y, i32 0, i32 0
  %y.real = load double, ptr %y.realp, align 8
  %y.imagp = getelementptr inbounds nuw { double, double }, ptr %y, i32 0, i32 1
  %y.imag = load double, ptr %y.imagp, align 8
  %2 = load ptr, ptr %p.addr, align 8
  %a = getelementptr inbounds nuw %struct.Scf10, ptr %2, i32 0, i32 0
  %a.realp = getelementptr inbounds nuw { double, double }, ptr %a, i32 0, i32 0
  %a.imagp = getelementptr inbounds nuw { double, double }, ptr %a, i32 0, i32 1
  store double %y.real, ptr %a.realp, align 8
  store double %y.imag, ptr %a.imagp, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %coerce = alloca { double, double }, align 8
  %coerce1 = alloca { double, double }, align 8
  store i32 0, ptr %retval, align 4
  %coerce.realp = getelementptr inbounds nuw { double, double }, ptr %coerce, i32 0, i32 0
  %coerce.imagp = getelementptr inbounds nuw { double, double }, ptr %coerce, i32 0, i32 1
  store double 1.000000e+00, ptr %coerce.realp, align 8
  store double 0.000000e+00, ptr %coerce.imagp, align 8
  %0 = getelementptr inbounds nuw { double, double }, ptr %coerce, i32 0, i32 0
  %1 = load double, ptr %0, align 8
  %2 = getelementptr inbounds nuw { double, double }, ptr %coerce, i32 0, i32 1
  %3 = load double, ptr %2, align 8
  call void @init(ptr noundef @g1s, double noundef %1, double noundef %3)
  %coerce1.realp = getelementptr inbounds nuw { double, double }, ptr %coerce1, i32 0, i32 0
  %coerce1.imagp = getelementptr inbounds nuw { double, double }, ptr %coerce1, i32 0, i32 1
  store double 1.000000e+00, ptr %coerce1.realp, align 8
  store double 0.000000e+00, ptr %coerce1.imagp, align 8
  %4 = getelementptr inbounds nuw { double, double }, ptr %coerce1, i32 0, i32 0
  %5 = load double, ptr %4, align 8
  %6 = getelementptr inbounds nuw { double, double }, ptr %coerce1, i32 0, i32 1
  %7 = load double, ptr %6, align 8
  call void @check(ptr noundef byval(%struct.Scf10) align 8 @g1s, double noundef %5, double noundef %7)
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
