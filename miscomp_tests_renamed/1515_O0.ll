; 156486750308362467263205489933379483594
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/156486750308362467263205489933379483594.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/156486750308362467263205489933379483594.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local global i32 -1, align 4
@b = dso_local global i32 -1, align 4
@c = dso_local global i32 1, align 4
@d = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %e = alloca double, align 8
  %f = alloca double, align 8
  %g = alloca double, align 8
  store i32 0, ptr %retval, align 4
  %0 = load i32, ptr @c, align 4
  %conv = sitofp i32 %0 to double
  store double %conv, ptr %f, align 8
  %1 = load i32, ptr @d, align 4
  %conv1 = sitofp i32 %1 to double
  store double %conv1, ptr %g, align 8
  %2 = load i32, ptr @a, align 4
  %3 = load i32, ptr @b, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %4 = load double, ptr %f, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %5 = load double, ptr %g, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %4, %cond.true ], [ %5, %cond.false ]
  store double %cond, ptr %e, align 8
  %6 = load double, ptr %e, align 8
  %tobool = fcmp une double %6, 0.000000e+00
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  call void @abort() #3
  unreachable

if.end:                                           ; preds = %cond.end
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
