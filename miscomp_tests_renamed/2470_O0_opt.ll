; 142700828288927941093008030317544985989
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/142700828288927941093008030317544985989_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/142700828288927941093008030317544985989.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fred = type { i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"This won't be compiled.\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %bloggs = alloca %struct.fred, align 4
  %jones = alloca [2 x %struct.fred], align 16
  store i32 0, ptr %retval, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %boris = getelementptr inbounds nuw %struct.fred, ptr %bloggs, i32 0, i32 0
  store i32 %call, ptr %boris, align 4
  %natasha = getelementptr inbounds nuw %struct.fred, ptr %bloggs, i32 0, i32 1
  store i32 34, ptr %natasha, align 4
  %boris1 = getelementptr inbounds nuw %struct.fred, ptr %bloggs, i32 0, i32 0
  %0 = load i32, ptr %boris1, align 4
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %0)
  %natasha3 = getelementptr inbounds nuw %struct.fred, ptr %bloggs, i32 0, i32 1
  %1 = load i32, ptr %natasha3, align 4
  %call4 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %1)
  %arrayidx = getelementptr inbounds [2 x %struct.fred], ptr %jones, i64 0, i64 0
  %boris5 = getelementptr inbounds nuw %struct.fred, ptr %arrayidx, i32 0, i32 0
  store i32 12, ptr %boris5, align 16
  %arrayidx6 = getelementptr inbounds [2 x %struct.fred], ptr %jones, i64 0, i64 0
  %natasha7 = getelementptr inbounds nuw %struct.fred, ptr %arrayidx6, i32 0, i32 1
  store i32 34, ptr %natasha7, align 4
  %arrayidx8 = getelementptr inbounds [2 x %struct.fred], ptr %jones, i64 0, i64 1
  %boris9 = getelementptr inbounds nuw %struct.fred, ptr %arrayidx8, i32 0, i32 0
  store i32 56, ptr %boris9, align 8
  %arrayidx10 = getelementptr inbounds [2 x %struct.fred], ptr %jones, i64 0, i64 1
  %natasha11 = getelementptr inbounds nuw %struct.fred, ptr %arrayidx10, i32 0, i32 1
  store i32 78, ptr %natasha11, align 4
  %arrayidx12 = getelementptr inbounds [2 x %struct.fred], ptr %jones, i64 0, i64 0
  %boris13 = getelementptr inbounds nuw %struct.fred, ptr %arrayidx12, i32 0, i32 0
  %2 = load i32, ptr %boris13, align 16
  %call14 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %2)
  %arrayidx15 = getelementptr inbounds [2 x %struct.fred], ptr %jones, i64 0, i64 0
  %natasha16 = getelementptr inbounds nuw %struct.fred, ptr %arrayidx15, i32 0, i32 1
  %3 = load i32, ptr %natasha16, align 4
  %call17 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %3)
  %arrayidx18 = getelementptr inbounds [2 x %struct.fred], ptr %jones, i64 0, i64 1
  %boris19 = getelementptr inbounds nuw %struct.fred, ptr %arrayidx18, i32 0, i32 0
  %4 = load i32, ptr %boris19, align 8
  %call20 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %4)
  %arrayidx21 = getelementptr inbounds [2 x %struct.fred], ptr %jones, i64 0, i64 1
  %natasha22 = getelementptr inbounds nuw %struct.fred, ptr %arrayidx21, i32 0, i32 1
  %5 = load i32, ptr %natasha22, align 4
  %call23 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %5)
  ret i32 0
}

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
