; 116297481656022042670823839630890295776
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/116297481656022042670823839630890295776.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/116297481656022042670823839630890295776.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"Not happening\0A\00", align 1

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
  %foo = alloca [6 x double], align 16
  %tx = alloca double, align 8
  %ty = alloca double, align 8
  %d = alloca double, align 8
  store i32 0, ptr %retval, align 4
  store double 0.000000e+00, ptr %tx, align 8
  %call = call i32 @f(ptr noundef %ty)
  %0 = load double, ptr %ty, align 8
  %cmp = fcmp olt double %0, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load double, ptr %tx, align 8
  %2 = load double, ptr %ty, align 8
  %cmp2 = fcmp ogt double %1, %2
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %3 = load double, ptr %tx, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %4 = load double, ptr %ty, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %3, %cond.true ], [ %4, %cond.false ]
  store double %cond, ptr %d, align 8
  %5 = load double, ptr %ty, align 8
  %6 = load double, ptr %d, align 8
  %cmp3 = fcmp une double %5, %6
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %cond.end
  call void @abort() #4
  unreachable

if.end5:                                          ; preds = %cond.end
  call void @exit(i32 noundef 0) #5
  unreachable
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noreturn nounwind
declare void @abort() #2

; Function Attrs: noreturn
declare void @exit(i32 noundef) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }
attributes #5 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
