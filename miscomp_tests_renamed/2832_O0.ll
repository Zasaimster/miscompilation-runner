; 149537792331384215475130323945478277062
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/149537792331384215475130323945478277062.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/149537792331384215475130323945478277062.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local global i32 0, align 4
@c = dso_local global ptr @a, align 8
@.str = private unnamed_addr constant [15 x i8] c"Hello, World!\0A\00", align 1
@b = dso_local global i32 0, align 4
@d = dso_local global i16 0, align 2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %e = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %0 = load i32, ptr @a, align 4
  store i32 %0, ptr %e, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %1 = load i32, ptr @b, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %e, align 4
  %conv = trunc i32 %2 to i16
  store i16 %conv, ptr @d, align 2
  %3 = load i16, ptr @d, align 2
  %conv1 = zext i16 %3 to i32
  %4 = load i32, ptr %e, align 4
  %or = or i32 %conv1, %4
  %5 = load ptr, ptr @c, align 8
  store i32 %or, ptr %5, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, ptr @a, align 4
  %cmp = icmp ne i32 %6, 0
  br i1 %cmp, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @abort() #3
  unreachable

if.end4:                                          ; preds = %if.end
  ret i32 0
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noreturn nounwind
declare void @abort() #2

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
