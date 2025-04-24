; 134246061375040698087250189935746171889
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/134246061375040698087250189935746171889_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/134246061375040698087250189935746171889.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %ssi = alloca i16, align 2
  %usi = alloca i16, align 2
  %fail = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i16 0, ptr %ssi, align 2
  store i16 -256, ptr %usi, align 2
  %0 = load i16, ptr %ssi, align 2
  %conv = sext i16 %0 to i32
  %1 = load i16, ptr %usi, align 2
  %conv1 = zext i16 %1 to i32
  %cmp = icmp slt i32 %conv, %conv1
  %lnot = xor i1 %cmp, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, ptr %fail, align 4
  %2 = load i32, ptr %fail, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #2
  unreachable

if.end:                                           ; preds = %entry
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
