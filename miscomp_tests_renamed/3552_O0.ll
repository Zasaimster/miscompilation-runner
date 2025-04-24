; 161890031318263457283067581078711336132
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/161890031318263457283067581078711336132.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/161890031318263457283067581078711336132.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.A = type { i32, i32 }

; Function Attrs: noinline nounwind uwtable
define dso_local void @bar(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  store float 0.000000e+00, ptr %0, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @foo(ptr noundef %locp, i32 noundef %i, i32 noundef %str) #0 {
entry:
  %locp.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  %str.addr = alloca i32, align 4
  %f = alloca float, align 4
  %g = alloca float, align 4
  %p = alloca ptr, align 8
  %T355 = alloca i32, align 4
  %T356 = alloca ptr, align 8
  store ptr %locp, ptr %locp.addr, align 8
  store i32 %i, ptr %i.addr, align 4
  store i32 %str, ptr %str.addr, align 4
  %0 = load i32, ptr %i.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %g, %cond.true ], [ %f, %cond.false ]
  store ptr %cond, ptr %p, align 8
  %1 = load ptr, ptr %p, align 8
  call void @bar(ptr noundef %1)
  %2 = load ptr, ptr %p, align 8
  %3 = load float, ptr %2, align 4
  %conv = fpext float %3 to double
  %cmp = fcmp ogt double %conv, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  store i32 1, ptr %str.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %4 = load ptr, ptr %locp.addr, align 8
  %i2 = getelementptr inbounds nuw %struct.A, ptr %4, i32 0, i32 1
  %5 = load i32, ptr %i2, align 4
  store i32 %5, ptr %T355, align 4
  %6 = load ptr, ptr %locp.addr, align 8
  %i3 = getelementptr inbounds nuw %struct.A, ptr %6, i32 0, i32 1
  store ptr %i3, ptr %T356, align 8
  %7 = load i32, ptr %str.addr, align 4
  %8 = load ptr, ptr %T356, align 8
  store i32 %7, ptr %8, align 4
  %9 = load ptr, ptr %locp.addr, align 8
  %i4 = getelementptr inbounds nuw %struct.A, ptr %9, i32 0, i32 1
  %10 = load i32, ptr %i4, align 4
  store i32 %10, ptr %T355, align 4
  %11 = load i32, ptr %T355, align 4
  ret i32 %11
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %loc = alloca %struct.A, align 4
  %str = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %i = getelementptr inbounds nuw %struct.A, ptr %loc, i32 0, i32 1
  store i32 2, ptr %i, align 4
  %call = call i32 @foo(ptr noundef %loc, i32 noundef 10, i32 noundef 3)
  store i32 %call, ptr %str, align 4
  %0 = load i32, ptr %str, align 4
  %cmp = icmp ne i32 %0, 1
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
