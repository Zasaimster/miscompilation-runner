; 135122498606034881657252468778786404694
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/135122498606034881657252468778786404694.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/135122498606034881657252468778786404694.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s1 = type { double }
%struct.s2 = type { double }
%union.u = type { %struct.s1 }

; Function Attrs: noinline nounwind uwtable
define dso_local double @f(ptr noundef %a, ptr noundef %b) #0 {
entry:
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  store ptr %a, ptr %a.addr, align 8
  store ptr %b, ptr %b.addr, align 8
  %0 = load ptr, ptr %a.addr, align 8
  %d = getelementptr inbounds nuw %struct.s1, ptr %0, i32 0, i32 0
  store double 1.000000e+00, ptr %d, align 8
  %1 = load ptr, ptr %b.addr, align 8
  %d1 = getelementptr inbounds nuw %struct.s2, ptr %1, i32 0, i32 0
  %2 = load double, ptr %d1, align 8
  %add = fadd double %2, 1.000000e+00
  ret double %add
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca %union.u, align 8
  store i32 0, ptr %retval, align 4
  %d = getelementptr inbounds nuw %struct.s1, ptr %a, i32 0, i32 0
  store double 0.000000e+00, ptr %d, align 8
  %call = call double @f(ptr noundef %a, ptr noundef %a)
  %cmp = fcmp une double %call, 2.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #2
  unreachable

if.end:                                           ; preds = %entry
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare void @abort() #1

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
