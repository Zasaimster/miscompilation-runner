; 100972287854136896918172884656265784872
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/100972287854136896918172884656265784872.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/100972287854136896918172884656265784872.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local { double, double } @f() #0 {
entry:
  %retval = alloca { double, double }, align 8
  %a = alloca [40 x i32], align 16
  %c = alloca { double, double }, align 8
  %retval.realp = getelementptr inbounds nuw { double, double }, ptr %retval, i32 0, i32 0
  %retval.imagp = getelementptr inbounds nuw { double, double }, ptr %retval, i32 0, i32 1
  store double 4.200000e+01, ptr %retval.realp, align 8
  store double 0.000000e+00, ptr %retval.imagp, align 8
  %0 = load { double, double }, ptr %retval, align 8
  ret { double, double } %0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %c = alloca { double, double }, align 8
  store i32 0, ptr %retval, align 4
  %call = call { double, double } @f()
  %0 = extractvalue { double, double } %call, 0
  %1 = extractvalue { double, double } %call, 1
  %c.realp = getelementptr inbounds nuw { double, double }, ptr %c, i32 0, i32 0
  %c.imagp = getelementptr inbounds nuw { double, double }, ptr %c, i32 0, i32 1
  store double %0, ptr %c.realp, align 8
  store double %1, ptr %c.imagp, align 8
  %tobool = fcmp une double %0, 0.000000e+00
  %tobool1 = fcmp une double %1, 0.000000e+00
  %tobool2 = or i1 %tobool, %tobool1
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #3
  unreachable

if.end:                                           ; preds = %entry
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
