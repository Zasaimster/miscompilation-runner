; 100411270287232556668441553891593833514
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/100411270287232556668441553891593833514_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/100411270287232556668441553891593833514.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local global [2 x i32] [i32 2, i32 0], align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(ptr noundef %sp, i32 noundef %cnt) #0 {
entry:
  %sp.addr = alloca ptr, align 8
  %cnt.addr = alloca i32, align 4
  %top = alloca ptr, align 8
  store ptr %sp, ptr %sp.addr, align 8
  store i32 %cnt, ptr %cnt.addr, align 4
  %0 = load ptr, ptr %sp.addr, align 8
  store ptr %0, ptr %top, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @foo(ptr noundef getelementptr inbounds (i32, ptr @a, i64 1), i32 noundef 1)
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
