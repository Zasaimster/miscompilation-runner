; 12803304912720005235655323288453036488
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/12803304912720005235655323288453036488_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/12803304912720005235655323288453036488.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"b=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"c=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"e=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"f=%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"g=%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"i=%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"j=%d\0A\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"k=%d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call i32 (...) @example4()
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef 1)
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef 2)
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef 0)
  %call4 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef 1)
  %call5 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, i32 noundef 2)
  %call6 = call i32 (ptr, ...) @printf(ptr noundef @.str.5, i32 noundef 0)
  %call7 = call i32 (ptr, ...) @printf(ptr noundef @.str.6, i32 noundef 1)
  %call8 = call i32 (ptr, ...) @printf(ptr noundef @.str.7, i32 noundef 2)
  ret i32 0
}

declare i32 @example4(...) #1

declare i32 @printf(ptr noundef, ...) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
