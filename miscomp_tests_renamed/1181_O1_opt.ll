; 192848202016611649416342980448996076261
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/192848202016611649416342980448996076261_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/192848202016611649416342980448996076261.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IOGBounds = type { i16, i16, i16, i16 }

@expectedwidth = dso_local local_unnamed_addr global i32 50, align 4
@global_vramPtr = dso_local local_unnamed_addr global ptr inttoptr (i64 40960 to ptr), align 8
@global_bounds = dso_local local_unnamed_addr global %struct.IOGBounds { i16 100, i16 150, i16 100, i16 150 }, align 2
@global_saveRect = dso_local local_unnamed_addr global %struct.IOGBounds { i16 75, i16 175, i16 75, i16 175 }, align 2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  ret i32 0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
