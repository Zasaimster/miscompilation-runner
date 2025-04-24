; 195875812942023636527790227966542076416
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/195875812942023636527790227966542076416_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/195875812942023636527790227966542076416.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f(ptr noundef %ty) #0 {
entry:
  %ty.addr = alloca ptr, align 8
  store ptr %ty, ptr %ty.addr, align 8
  %0 = load ptr, ptr %ty.addr, align 8
  store double -1.000000e+00, ptr %0, align 8
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
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
  %1 = load double, ptr %ty, align 8
  %fneg = fneg double %1
  store double %fneg, ptr %ty, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load double, ptr %tx, align 8
  %3 = load double, ptr %ty, align 8
  %cmp1 = fcmp ogt double %2, %3
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %4 = load double, ptr %tx, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %5 = load double, ptr %ty, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %4, %cond.true ], [ %5, %cond.false ]
  store double %cond, ptr %d, align 8
  %6 = load double, ptr %ty, align 8
  %7 = load double, ptr %d, align 8
  %cmp2 = fcmp une double %6, %7
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %cond.end
  call void @abort() #3
  unreachable

if.end4:                                          ; preds = %cond.end
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
