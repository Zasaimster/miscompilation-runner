; 134191978554834648414103497204240027709
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/134191978554834648414103497204240027709_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/134191978554834648414103497204240027709.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca i8, align 1
  %b = alloca i8, align 1
  store i32 0, ptr %retval, align 4
  store i8 -30, ptr %a, align 1
  store i8 -31, ptr %b, align 1
  %0 = load i8, ptr %a, align 1
  %conv = sext i8 %0 to i32
  %1 = load i8, ptr %b, align 1
  %conv1 = sext i8 %1 to i16
  %conv2 = zext i16 %conv1 to i32
  %cmp = icmp sgt i32 %conv, %conv2
  br i1 %cmp, label %if.then, label %if.end10

if.then:                                          ; preds = %entry
  %2 = load i8, ptr %a, align 1
  %conv4 = sext i8 %2 to i64
  %3 = load i8, ptr %b, align 1
  %conv5 = sext i8 %3 to i16
  %conv6 = zext i16 %conv5 to i64
  %cmp7 = icmp sgt i64 %conv4, %conv6
  br i1 %cmp7, label %if.then9, label %if.end

if.then9:                                         ; preds = %if.then
  call void @abort() #2
  unreachable

if.end:                                           ; preds = %if.then
  br label %if.end10

if.end10:                                         ; preds = %if.end, %entry
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
