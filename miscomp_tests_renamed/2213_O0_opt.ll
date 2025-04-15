; 120855048449892988400327327380490580878
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/120855048449892988400327327380490580878_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/120855048449892988400327327380490580878.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"Hello, World!\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %arr = alloca [2 x [4 x i8]], align 1
  %p = alloca ptr, align 8
  %q = alloca ptr, align 8
  %v = alloca [4 x i32], align 16
  store i32 0, ptr %retval, align 4
  %arraydecay = getelementptr inbounds [2 x [4 x i8]], ptr %arr, i64 0, i64 0
  store ptr %arraydecay, ptr %p, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %arrayidx = getelementptr inbounds [2 x [4 x i8]], ptr %arr, i64 0, i64 1
  %arrayidx1 = getelementptr inbounds [4 x i8], ptr %arrayidx, i64 0, i64 3
  store ptr %arrayidx1, ptr %q, align 8
  %arrayidx2 = getelementptr inbounds [2 x [4 x i8]], ptr %arr, i64 0, i64 1
  %arrayidx3 = getelementptr inbounds [4 x i8], ptr %arrayidx2, i64 0, i64 3
  store i8 2, ptr %arrayidx3, align 1
  %arrayidx4 = getelementptr inbounds [4 x i32], ptr %v, i64 0, i64 0
  store i32 2, ptr %arrayidx4, align 16
  %arrayidx5 = getelementptr inbounds [2 x [4 x i8]], ptr %arr, i64 0, i64 1
  %arrayidx6 = getelementptr inbounds [4 x i8], ptr %arrayidx5, i64 0, i64 3
  %0 = load i8, ptr %arrayidx6, align 1
  %conv = sext i8 %0 to i32
  %cmp = icmp ne i32 %conv, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %p, align 8
  %arrayidx8 = getelementptr inbounds [4 x i8], ptr %1, i64 1
  %arrayidx9 = getelementptr inbounds [4 x i8], ptr %arrayidx8, i64 0, i64 3
  %2 = load i8, ptr %arrayidx9, align 1
  %conv10 = sext i8 %2 to i32
  %cmp11 = icmp ne i32 %conv10, 2
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end
  store i32 1, ptr %retval, align 4
  br label %return

if.end14:                                         ; preds = %if.end
  %3 = load ptr, ptr %q, align 8
  %4 = load i8, ptr %3, align 1
  %conv15 = sext i8 %4 to i32
  %cmp16 = icmp ne i32 %conv15, 2
  br i1 %cmp16, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end14
  store i32 1, ptr %retval, align 4
  br label %return

if.end19:                                         ; preds = %if.end14
  %arraydecay20 = getelementptr inbounds [4 x i32], ptr %v, i64 0, i64 0
  %5 = load i32, ptr %arraydecay20, align 16
  %cmp21 = icmp ne i32 %5, 2
  br i1 %cmp21, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end19
  store i32 1, ptr %retval, align 4
  br label %return

if.end24:                                         ; preds = %if.end19
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end24, %if.then23, %if.then18, %if.then13, %if.then
  %6 = load i32, ptr %retval, align 4
  ret i32 %6
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
