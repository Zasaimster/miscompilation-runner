; 142284583112394606145959702184556568225
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/142284583112394606145959702184556568225.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/142284583112394606145959702184556568225.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { ptr }

@s = dso_local global %struct.S { ptr @zero }, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zero() #0 {
entry:
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @anon() #0 {
entry:
  ret ptr @s
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @go() #0 {
entry:
  ret ptr @anon
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call ptr @go()
  %call1 = call ptr (...) %call()
  %zerofunc = getelementptr inbounds nuw %struct.S, ptr %call1, i32 0, i32 0
  %0 = load ptr, ptr %zerofunc, align 8
  %call2 = call i32 (...) %0()
  ret i32 %call2
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
