; 18368275829728973339333484279437801915
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/18368275829728973339333484279437801915.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/18368275829728973339333484279437801915.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"Hello, World!\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local { double, double } @f() #0 {
entry:
  %retval = alloca { double, double }, align 8
  %saved_stack = alloca ptr, align 8
  %__vla_expr0 = alloca i64, align 8
  %c = alloca { double, double }, align 8
  %call = call i32 (...) @compute()
  %0 = zext i32 %call to i64
  %1 = call ptr @llvm.stacksave.p0()
  store ptr %1, ptr %saved_stack, align 8
  %vla = alloca i32, i64 %0, align 16
  store i64 %0, ptr %__vla_expr0, align 8
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %idxprom = sext i32 %call1 to i64
  %arrayidx = getelementptr inbounds i32, ptr %vla, i64 %idxprom
  store i32 0, ptr %arrayidx, align 4
  %arrayidx2 = getelementptr inbounds i32, ptr %vla, i64 9
  %2 = load i32, ptr %arrayidx2, align 4
  %conv = sitofp i32 %2 to double
  %c.realp = getelementptr inbounds nuw { double, double }, ptr %c, i32 0, i32 0
  %c.imagp = getelementptr inbounds nuw { double, double }, ptr %c, i32 0, i32 1
  store double %conv, ptr %c.realp, align 8
  store double 0.000000e+00, ptr %c.imagp, align 8
  %c.realp3 = getelementptr inbounds nuw { double, double }, ptr %c, i32 0, i32 0
  %c.real = load double, ptr %c.realp3, align 8
  %c.imagp4 = getelementptr inbounds nuw { double, double }, ptr %c, i32 0, i32 1
  %c.imag = load double, ptr %c.imagp4, align 8
  %retval.realp = getelementptr inbounds nuw { double, double }, ptr %retval, i32 0, i32 0
  %retval.imagp = getelementptr inbounds nuw { double, double }, ptr %retval, i32 0, i32 1
  store double %c.real, ptr %retval.realp, align 8
  store double %c.imag, ptr %retval.imagp, align 8
  %3 = load ptr, ptr %saved_stack, align 8
  call void @llvm.stackrestore.p0(ptr %3)
  %4 = load { double, double }, ptr %retval, align 8
  ret { double, double } %4
}

declare i32 @compute(...) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #2

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #2

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
  call void @abort() #5
  unreachable

if.end:                                           ; preds = %entry
  call void @exit(i32 noundef 0) #6
  unreachable
}

; Function Attrs: noreturn nounwind
declare void @abort() #3

; Function Attrs: noreturn
declare void @exit(i32 noundef) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind }
attributes #6 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
