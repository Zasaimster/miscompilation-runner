; 156314587619452817266233951632534862079
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/156314587619452817266233951632534862079_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/156314587619452817266233951632534862079.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef range(i32 1, 5) i32 @foo(i32 noundef %status) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq i32 %status, 3
  %spec.store.select = select i1 %cmp, i32 3, i32 1
  %cmp1 = icmp eq i32 %status, 4
  %spec.store.select4 = select i1 %cmp1, i32 4, i32 %spec.store.select
  ret i32 %spec.store.select4
}

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
