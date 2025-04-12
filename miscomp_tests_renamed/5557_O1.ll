; 123052973906255070568633019815028027378
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/123052973906255070568633019815028027378.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/123052973906255070568633019815028027378.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree nosync nounwind memory(none) uwtable
define dso_local i32 @bar() local_unnamed_addr #0 {
entry:
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse, %entry
  %ret.tr = phi i32 [ poison, %entry ], [ %current.ret.tr, %tailrecurse ]
  %ret.known.tr = phi i1 [ false, %entry ], [ true, %tailrecurse ]
  %current.ret.tr = select i1 %ret.known.tr, i32 %ret.tr, i32 undef
  br label %tailrecurse
}

; Function Attrs: nofree noreturn nosync nounwind memory(none) uwtable
define dso_local noundef i32 @main() local_unnamed_addr #1 {
entry:
  %call = tail call i32 @bar()
  unreachable
}

attributes #0 = { nofree nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noreturn nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
