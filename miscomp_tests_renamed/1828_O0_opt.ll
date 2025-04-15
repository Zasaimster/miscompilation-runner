; 181743834294244682855835059754674900657
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/181743834294244682855835059754674900657_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/181743834294244682855835059754674900657.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"abcdef\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"I am not used!\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %s = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store ptr @.str, ptr %s, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  %0 = load ptr, ptr %s, align 8
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 0
  %1 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 97
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %s, align 8
  %arrayidx2 = getelementptr inbounds i8, ptr %2, i64 1
  %3 = load i8, ptr %arrayidx2, align 1
  %conv3 = sext i8 %3 to i32
  %cmp4 = icmp ne i32 %conv3, 98
  br i1 %cmp4, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.end
  %4 = load ptr, ptr %s, align 8
  %arrayidx8 = getelementptr inbounds i8, ptr %4, i64 2
  %5 = load i8, ptr %arrayidx8, align 1
  %conv9 = sext i8 %5 to i32
  %cmp10 = icmp ne i32 %conv9, 99
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end7
  store i32 3, ptr %retval, align 4
  br label %return

if.end13:                                         ; preds = %if.end7
  %6 = load ptr, ptr %s, align 8
  %arrayidx14 = getelementptr inbounds i8, ptr %6, i64 3
  %7 = load i8, ptr %arrayidx14, align 1
  %conv15 = sext i8 %7 to i32
  %cmp16 = icmp ne i32 %conv15, 100
  br i1 %cmp16, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end13
  store i32 4, ptr %retval, align 4
  br label %return

if.end19:                                         ; preds = %if.end13
  %8 = load ptr, ptr %s, align 8
  %arrayidx20 = getelementptr inbounds i8, ptr %8, i64 4
  %9 = load i8, ptr %arrayidx20, align 1
  %conv21 = sext i8 %9 to i32
  %cmp22 = icmp ne i32 %conv21, 101
  br i1 %cmp22, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end19
  store i32 5, ptr %retval, align 4
  br label %return

if.end25:                                         ; preds = %if.end19
  %10 = load ptr, ptr %s, align 8
  %arrayidx26 = getelementptr inbounds i8, ptr %10, i64 5
  %11 = load i8, ptr %arrayidx26, align 1
  %conv27 = sext i8 %11 to i32
  %cmp28 = icmp ne i32 %conv27, 102
  br i1 %cmp28, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.end25
  store i32 6, ptr %retval, align 4
  br label %return

if.end31:                                         ; preds = %if.end25
  %12 = load ptr, ptr %s, align 8
  %arrayidx32 = getelementptr inbounds i8, ptr %12, i64 6
  %13 = load i8, ptr %arrayidx32, align 1
  %conv33 = sext i8 %13 to i32
  %cmp34 = icmp ne i32 %conv33, 0
  br i1 %cmp34, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.end31
  store i32 7, ptr %retval, align 4
  br label %return

if.end37:                                         ; preds = %if.end31
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end37, %if.then36, %if.then30, %if.then24, %if.then18, %if.then12, %if.then6, %if.then
  %14 = load i32, ptr %retval, align 4
  ret i32 %14
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
