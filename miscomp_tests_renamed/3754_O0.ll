; 165629143745038512314610962285001275910
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/165629143745038512314610962285001275910.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/165629143745038512314610962285001275910.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fred = type { i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %bloggs = alloca %struct.fred, align 4
  %jones = alloca [2 x %struct.fred], align 16
  store i32 0, ptr %retval, align 4
  %boris = getelementptr inbounds nuw %struct.fred, ptr %bloggs, i32 0, i32 0
  store i32 42, ptr %boris, align 4
  %natasha = getelementptr inbounds nuw %struct.fred, ptr %bloggs, i32 0, i32 1
  store i32 34, ptr %natasha, align 4
  %boris1 = getelementptr inbounds nuw %struct.fred, ptr %bloggs, i32 0, i32 0
  %0 = load i32, ptr %boris1, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %0)
  %natasha2 = getelementptr inbounds nuw %struct.fred, ptr %bloggs, i32 0, i32 1
  %1 = load i32, ptr %natasha2, align 4
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %1)
  %arrayidx = getelementptr inbounds [2 x %struct.fred], ptr %jones, i64 0, i64 0
  %boris4 = getelementptr inbounds nuw %struct.fred, ptr %arrayidx, i32 0, i32 0
  store i32 12, ptr %boris4, align 16
  %arrayidx5 = getelementptr inbounds [2 x %struct.fred], ptr %jones, i64 0, i64 0
  %natasha6 = getelementptr inbounds nuw %struct.fred, ptr %arrayidx5, i32 0, i32 1
  store i32 34, ptr %natasha6, align 4
  %arrayidx7 = getelementptr inbounds [2 x %struct.fred], ptr %jones, i64 0, i64 1
  %boris8 = getelementptr inbounds nuw %struct.fred, ptr %arrayidx7, i32 0, i32 0
  store i32 56, ptr %boris8, align 8
  %arrayidx9 = getelementptr inbounds [2 x %struct.fred], ptr %jones, i64 0, i64 1
  %natasha10 = getelementptr inbounds nuw %struct.fred, ptr %arrayidx9, i32 0, i32 1
  store i32 78, ptr %natasha10, align 4
  %arrayidx11 = getelementptr inbounds [2 x %struct.fred], ptr %jones, i64 0, i64 0
  %boris12 = getelementptr inbounds nuw %struct.fred, ptr %arrayidx11, i32 0, i32 0
  %2 = load i32, ptr %boris12, align 16
  %call13 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %2)
  %arrayidx14 = getelementptr inbounds [2 x %struct.fred], ptr %jones, i64 0, i64 0
  %natasha15 = getelementptr inbounds nuw %struct.fred, ptr %arrayidx14, i32 0, i32 1
  %3 = load i32, ptr %natasha15, align 4
  %call16 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %3)
  %arrayidx17 = getelementptr inbounds [2 x %struct.fred], ptr %jones, i64 0, i64 1
  %boris18 = getelementptr inbounds nuw %struct.fred, ptr %arrayidx17, i32 0, i32 0
  %4 = load i32, ptr %boris18, align 8
  %call19 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %4)
  %arrayidx20 = getelementptr inbounds [2 x %struct.fred], ptr %jones, i64 0, i64 1
  %natasha21 = getelementptr inbounds nuw %struct.fred, ptr %arrayidx20, i32 0, i32 1
  %5 = load i32, ptr %natasha21, align 4
  %call22 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %5)
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
