; 196403181972677210684561588793611939040
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/196403181972677210684561588793611939040_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/196403181972677210684561588793611939040.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i32, i32 }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %s = alloca %struct.anon, align 4
  store i32 0, ptr %retval, align 4
  %x = getelementptr inbounds nuw %struct.anon, ptr %s, i32 0, i32 0
  store i32 3, ptr %x, align 4
  %y = getelementptr inbounds nuw %struct.anon, ptr %s, i32 0, i32 1
  %0 = load i32, ptr %y, align 4
  %x1 = getelementptr inbounds nuw %struct.anon, ptr %s, i32 0, i32 0
  %1 = load i32, ptr %x1, align 4
  %sub = sub nsw i32 %0, %1
  %sub2 = sub nsw i32 %sub, 2
  %y3 = getelementptr inbounds nuw %struct.anon, ptr %s, i32 0, i32 1
  store i32 %sub2, ptr %y3, align 4
  %y4 = getelementptr inbounds nuw %struct.anon, ptr %s, i32 0, i32 1
  %2 = load i32, ptr %y4, align 4
  %x5 = getelementptr inbounds nuw %struct.anon, ptr %s, i32 0, i32 0
  %3 = load i32, ptr %x5, align 4
  %sub6 = sub nsw i32 %2, %3
  %sub7 = sub nsw i32 %sub6, 2
  ret i32 %sub7
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
