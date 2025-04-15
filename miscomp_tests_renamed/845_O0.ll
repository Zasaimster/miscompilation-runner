; 143947518897890626058075612527110270593
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/143947518897890626058075612527110270593.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/143947518897890626058075612527110270593.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.A = type { float, i32 }

@.str = private unnamed_addr constant [13 x i8] c"Hello World\0A\00", align 1
@a = dso_local global %struct.A zeroinitializer, align 4
@b = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo() #0 {
entry:
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  store i32 %call, ptr getelementptr inbounds nuw (%struct.A, ptr @a, i32 0, i32 1), align 4
  %0 = load i32, ptr getelementptr inbounds nuw (%struct.A, ptr @a, i32 0, i32 1), align 4
  %1 = load i32, ptr @b, align 4
  %sub = sub nsw i32 %1, 1
  %cmp = icmp slt i32 %0, %sub
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i32, ptr getelementptr inbounds nuw (%struct.A, ptr @a, i32 0, i32 1), align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i32, ptr @b, align 4
  %sub1 = sub nsw i32 %3, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %sub1, %cond.false ]
  store i32 %cond, ptr getelementptr inbounds nuw (%struct.A, ptr @a, i32 0, i32 1), align 4
  %4 = load i32, ptr getelementptr inbounds nuw (%struct.A, ptr @a, i32 0, i32 1), align 4
  %5 = load i32, ptr @b, align 4
  %sub2 = sub nsw i32 %5, 1
  %cmp3 = icmp sge i32 %4, %sub2
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  call void @abort() #3
  unreachable

if.end:                                           ; preds = %cond.end
  ret void
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noreturn nounwind
declare void @abort() #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @bar(float noundef %x) #0 {
entry:
  %x.addr = alloca float, align 4
  store float %x, ptr %x.addr, align 4
  ret i32 2241
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store float 1.000000e+00, ptr @a, align 4
  store i32 3384, ptr @b, align 4
  call void @foo()
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
