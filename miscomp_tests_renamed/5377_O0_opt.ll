; 195094921485012840097396408608947446905
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/195094921485012840097396408608947446905_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/195094921485012840097396408608947446905.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"Hello World\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %s = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %conv = sext i32 %call to i64
  %0 = inttoptr i64 %conv to ptr
  store ptr %0, ptr %s, align 8
  %1 = load ptr, ptr %s, align 8
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 0
  %2 = load i8, ptr %arrayidx, align 1
  %conv1 = sext i8 %2 to i32
  %cmp = icmp ne i32 %conv1, 97
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %s, align 8
  %arrayidx3 = getelementptr inbounds i8, ptr %3, i64 1
  %4 = load i8, ptr %arrayidx3, align 1
  %conv4 = sext i8 %4 to i32
  %cmp5 = icmp ne i32 %conv4, 98
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4
  br label %return

if.end8:                                          ; preds = %if.end
  %5 = load ptr, ptr %s, align 8
  %arrayidx9 = getelementptr inbounds i8, ptr %5, i64 2
  %6 = load i8, ptr %arrayidx9, align 1
  %conv10 = sext i8 %6 to i32
  %cmp11 = icmp ne i32 %conv10, 99
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end8
  store i32 3, ptr %retval, align 4
  br label %return

if.end14:                                         ; preds = %if.end8
  %7 = load ptr, ptr %s, align 8
  %arrayidx15 = getelementptr inbounds i8, ptr %7, i64 3
  %8 = load i8, ptr %arrayidx15, align 1
  %conv16 = sext i8 %8 to i32
  %cmp17 = icmp ne i32 %conv16, 100
  br i1 %cmp17, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4
  br label %return

if.end20:                                         ; preds = %if.end14
  %9 = load ptr, ptr %s, align 8
  %arrayidx21 = getelementptr inbounds i8, ptr %9, i64 4
  %10 = load i8, ptr %arrayidx21, align 1
  %conv22 = sext i8 %10 to i32
  %cmp23 = icmp ne i32 %conv22, 101
  br i1 %cmp23, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.end20
  store i32 5, ptr %retval, align 4
  br label %return

if.end26:                                         ; preds = %if.end20
  %11 = load ptr, ptr %s, align 8
  %arrayidx27 = getelementptr inbounds i8, ptr %11, i64 5
  %12 = load i8, ptr %arrayidx27, align 1
  %conv28 = sext i8 %12 to i32
  %cmp29 = icmp ne i32 %conv28, 102
  br i1 %cmp29, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.end26
  store i32 6, ptr %retval, align 4
  br label %return

if.end32:                                         ; preds = %if.end26
  %13 = load ptr, ptr %s, align 8
  %arrayidx33 = getelementptr inbounds i8, ptr %13, i64 6
  %14 = load i8, ptr %arrayidx33, align 1
  %conv34 = sext i8 %14 to i32
  %cmp35 = icmp ne i32 %conv34, 0
  br i1 %cmp35, label %if.then37, label %if.end38

if.then37:                                        ; preds = %if.end32
  store i32 7, ptr %retval, align 4
  br label %return

if.end38:                                         ; preds = %if.end32
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end38, %if.then37, %if.then31, %if.then25, %if.then19, %if.then13, %if.then7, %if.then
  %15 = load i32, ptr %retval, align 4
  ret i32 %15
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
