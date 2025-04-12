; 178010375891309115324816321760995015527
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/178010375891309115324816321760995015527.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/178010375891309115324816321760995015527.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { ptr, i32 }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %s = alloca %struct.S, align 8
  store i32 0, ptr %retval, align 4
  %x = getelementptr inbounds nuw %struct.S, ptr %s, i32 0, i32 1
  store i32 0, ptr %x, align 8
  %p = getelementptr inbounds nuw %struct.S, ptr %s, i32 0, i32 0
  store ptr null, ptr %p, align 8
  %p1 = getelementptr inbounds nuw %struct.S, ptr %s, i32 0, i32 0
  %0 = load ptr, ptr %p1, align 8
  %p2 = getelementptr inbounds nuw %struct.S, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %p2, align 8
  %p3 = getelementptr inbounds nuw %struct.S, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %p3, align 8
  %p4 = getelementptr inbounds nuw %struct.S, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %p4, align 8
  %p5 = getelementptr inbounds nuw %struct.S, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %p5, align 8
  %x6 = getelementptr inbounds nuw %struct.S, ptr %4, i32 0, i32 1
  %5 = load i32, ptr %x6, align 8
  ret i32 %5
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
