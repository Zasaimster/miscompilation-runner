; 193609002216900828431134040500539644404
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/193609002216900828431134040500539644404_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/193609002216900828431134040500539644404.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca i8, align 1
  %b = alloca i64, align 8
  %c = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store volatile i8 0, ptr %a, align 1
  store i64 2147483648, ptr %b, align 8
  %0 = load i64, ptr %b, align 8
  %sub = sub nsw i64 0, %0
  %conv = trunc i64 %sub to i32
  %1 = load volatile i8, ptr %a, align 1
  %conv1 = zext i8 %1 to i32
  %mul = mul nsw i32 -2147483647, %conv1
  %sub2 = sub nsw i32 %conv, %mul
  %sub3 = sub nsw i32 0, %sub2
  store i32 %sub3, ptr %c, align 4
  %2 = load i32, ptr %c, align 4
  %cmp = icmp ne i32 %2, 1
  br i1 %cmp, label %if.then, label %if.end

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
