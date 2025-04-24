; 151874999867940438595522498251865579157
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/151874999867940438595522498251865579157.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/151874999867940438595522498251865579157.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"This won't print.\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f(ptr noundef %ty) #0 {
entry:
  %retval = alloca i32, align 4
  %ty.addr = alloca ptr, align 8
  store ptr %ty, ptr %ty.addr, align 8
  %0 = load ptr, ptr %ty.addr, align 8
  store double -1.000000e+00, ptr %0, align 8
  %1 = load i32, ptr %retval, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %saved_stack = alloca ptr, align 8
  %__vla_expr0 = alloca i64, align 8
  %tx = alloca double, align 8
  %ty = alloca double, align 8
  %d = alloca double, align 8
  store i32 0, ptr %retval, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %0 = zext i32 %call to i64
  %1 = call ptr @llvm.stacksave.p0()
  store ptr %1, ptr %saved_stack, align 8
  %vla = alloca double, i64 %0, align 16
  store i64 %0, ptr %__vla_expr0, align 8
  store double 0.000000e+00, ptr %tx, align 8
  %call1 = call i32 @f(ptr noundef %ty)
  %2 = load double, ptr %ty, align 8
  %cmp = fcmp olt double %2, 1.000000e+01
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load double, ptr %ty, align 8
  %fneg = fneg double %3
  store double %fneg, ptr %ty, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load double, ptr %tx, align 8
  %5 = load double, ptr %ty, align 8
  %cmp2 = fcmp ogt double %4, %5
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %6 = load double, ptr %tx, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %7 = load double, ptr %ty, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %6, %cond.true ], [ %7, %cond.false ]
  store double %cond, ptr %d, align 8
  %8 = load double, ptr %ty, align 8
  %9 = load double, ptr %d, align 8
  %cmp3 = fcmp une double %8, %9
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %cond.end
  call void @abort() #5
  unreachable

if.end5:                                          ; preds = %cond.end
  call void @exit(i32 noundef 0) #6
  unreachable
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #2

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
