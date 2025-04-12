; 13437605121930394096974736318540083184
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/13437605121930394096974736318540083184_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/13437605121930394096974736318540083184.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@str = private unnamed_addr constant [14 x i8] c"Hello, World!\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local noundef range(i32 5, 13) i32 @test_store_ccp(i32 noundef %i) local_unnamed_addr #0 {
entry:
  %cmp = icmp slt i32 %i, 5
  %cmp1 = icmp sgt i32 %i, 8
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %0 = select i1 %cmp1, i32 5, i32 12
  %add = select i1 %cmp, i32 12, i32 %0
  ret i32 %add
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @test_store_copy_prop(i32 noundef %i) local_unnamed_addr #1 {
entry:
  %cmp1 = icmp sgt i32 %i, 8
  %.sroa.speculate.load.false.sroa.speculated = zext i1 %cmp1 to i32
  %.sroa.speculated = add nsw i32 %i, %.sroa.speculate.load.false.sroa.speculated
  ret i32 %.sroa.speculated
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %puts.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #2

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
