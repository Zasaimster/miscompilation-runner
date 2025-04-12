; 149792697286851165645958494368699378785
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/149792697286851165645958494368699378785.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/149792697286851165645958494368699378785.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [24 x i8] c"This will never print.\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local double @f(double noundef %x) #0 {
entry:
  %x.addr = alloca double, align 8
  store double %x, ptr %x.addr, align 8
  %0 = load double, ptr %x.addr, align 8
  %1 = load double, ptr %x.addr, align 8
  %mul = fmul double %0, %1
  ret double %mul
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @Int(ptr noundef %f, double noundef %a) #0 {
entry:
  %f.addr = alloca ptr, align 8
  %a.addr = alloca double, align 8
  store ptr %f, ptr %f.addr, align 8
  store double %a, ptr %a.addr, align 8
  %0 = load ptr, ptr %f.addr, align 8
  %1 = load double, ptr %a.addr, align 8
  %call = call double %0(double noundef %1)
  ret double %call
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %cmp = icmp ugt ptr @f, inttoptr (i64 10 to ptr)
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @exit(i32 noundef 0) #3
  unreachable
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noreturn
declare void @exit(i32 noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
