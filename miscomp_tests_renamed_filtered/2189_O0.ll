; 138305812519302980753019424016329510924
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/138305812519302980753019424016329510924.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/138305812519302980753019424016329510924.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.A = type { i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"X is negative\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @foo() #0 {
entry:
  ret i32 3
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %loc = alloca %struct.A, align 4
  %locp = alloca ptr, align 8
  %f = alloca float, align 4
  %g = alloca float, align 4
  %p = alloca ptr, align 8
  %T355 = alloca i32, align 4
  %T356 = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store float 3.000000e+00, ptr %f, align 4
  store float 2.000000e+00, ptr %g, align 4
  %call = call i32 @foo()
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %g, %cond.true ], [ %f, %cond.false ]
  store ptr %cond, ptr %p, align 8
  %0 = load ptr, ptr %p, align 8
  %1 = load float, ptr %0, align 4
  %conv = fpext float %1 to double
  %cmp = fcmp ogt double %conv, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  store float 1.000000e+00, ptr %g, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %2 = load ptr, ptr %p, align 8
  %cmp2 = icmp ugt ptr %2, null
  br i1 %cmp2, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  br label %if.end6

if.else:                                          ; preds = %if.end
  %call5 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then4
  %call7 = call ptr @malloc(i64 noundef 8) #4
  store ptr %call7, ptr %locp, align 8
  %3 = load ptr, ptr %locp, align 8
  %i = getelementptr inbounds nuw %struct.A, ptr %3, i32 0, i32 1
  store i32 10, ptr %i, align 4
  %4 = load ptr, ptr %locp, align 8
  %i8 = getelementptr inbounds nuw %struct.A, ptr %4, i32 0, i32 1
  %5 = load i32, ptr %i8, align 4
  store i32 %5, ptr %T355, align 4
  %6 = load ptr, ptr %locp, align 8
  %i9 = getelementptr inbounds nuw %struct.A, ptr %6, i32 0, i32 1
  store ptr %i9, ptr %T356, align 8
  %7 = load ptr, ptr %T356, align 8
  store i32 1, ptr %7, align 4
  %8 = load ptr, ptr %locp, align 8
  %i10 = getelementptr inbounds nuw %struct.A, ptr %8, i32 0, i32 1
  %9 = load i32, ptr %i10, align 4
  store i32 %9, ptr %T355, align 4
  %10 = load i32, ptr %T355, align 4
  %cmp11 = icmp ne i32 %10, 1
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end6
  call void @abort() #5
  unreachable

if.end14:                                         ; preds = %if.end6
  ret i32 0
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #2

; Function Attrs: noreturn nounwind
declare void @abort() #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { allocsize(0) }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
