; 165523179815309691001806916922404775261
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/165523179815309691001806916922404775261_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/165523179815309691001806916922404775261.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local global i8 -4, align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @testFunction() #0 {
entry:
  %x = alloca double, align 8
  %y = alloca double, align 8
  %z = alloca double, align 8
  store double 1.050000e+01, ptr %x, align 8
  store double 2.070000e+01, ptr %y, align 8
  %0 = load double, ptr %x, align 8
  %1 = load double, ptr %y, align 8
  %add = fadd double %0, %1
  store double %add, ptr %z, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @bar() #0 {
entry:
  %0 = load i8, ptr @a, align 1
  %conv = sext i8 %0 to i32
  %conv1 = zext i32 %conv to i64
  %rem = srem i64 %conv1, 5
  %conv2 = trunc i64 %rem to i32
  ret i32 %conv2
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %r = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call i32 (...) @foo()
  store i32 %call, ptr %r, align 4
  %0 = load i32, ptr %r, align 4
  %conv = sext i32 %0 to i64
  %cmp = icmp ne i64 %conv, 2147483646
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #4
  unreachable

if.end:                                           ; preds = %entry
  %call2 = call i32 @bar()
  store i32 %call2, ptr %r, align 4
  %1 = load i32, ptr %r, align 4
  %conv3 = sext i32 %1 to i64
  %cmp4 = icmp ne i64 %conv3, 2
  br i1 %cmp4, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  call void @abort() #4
  unreachable

if.end7:                                          ; preds = %if.end
  call void @exit(i32 noundef 0) #5
  unreachable
}

declare i32 @foo(...) #1

; Function Attrs: noreturn nounwind
declare void @abort() #2

; Function Attrs: noreturn
declare void @exit(i32 noundef) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }
attributes #5 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
