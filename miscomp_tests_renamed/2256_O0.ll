; 126999416524702311894696619070547736160
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/126999416524702311894696619070547736160.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/126999416524702311894696619070547736160.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local global i32 0, align 4
@b = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  %e = alloca i32, align 4
  %f = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 -4, ptr %c, align 4
  store i32 254, ptr %d, align 4
  %0 = load i32, ptr @a, align 4
  %and = and i32 %0, 1
  store i32 %and, ptr %e, align 4
  %1 = load i32, ptr @b, align 4
  %and1 = and i32 %1, 2
  store i32 %and1, ptr %f, align 4
  %2 = load i32, ptr %c, align 4
  %3 = load i32, ptr %e, align 4
  %4 = load i32, ptr %f, align 4
  %and2 = and i32 %3, %4
  %or = or i32 %2, %and2
  %conv = trunc i32 %or to i8
  %conv3 = sext i8 %conv to i32
  %5 = load i32, ptr %d, align 4
  %conv4 = trunc i32 %5 to i8
  %conv5 = sext i8 %conv4 to i32
  %cmp = icmp eq i32 %conv3, %conv5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  ret i32 0

if.else:                                          ; preds = %entry
  call void @abort() #2
  unreachable
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
