; 194778740390603692837754834526860965181
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/194778740390603692837754834526860965181_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/194778740390603692837754834526860965181.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i32 -715827882, 715827883) i32 @foo(i32 noundef %x, i32 noundef %y, i32 noundef %z) local_unnamed_addr #0 {
entry:
  %add = add nsw i32 %y, %x
  %add1 = add nsw i32 %add, %z
  %div = sdiv i32 %add1, 3
  ret i32 %div
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i32 0, 715827883) i32 @bar(i32 noundef %x, i32 noundef %y, i32 noundef %z) local_unnamed_addr #0 {
entry:
  %mul = mul nsw i32 %x, %x
  %mul1 = mul nsw i32 %y, %y
  %mul2 = mul nsw i32 %z, %z
  %add.i = add nuw nsw i32 %mul1, %mul
  %add1.i = add nuw nsw i32 %add.i, %mul2
  %div.i = udiv i32 %add1.i, 3
  ret i32 %div.i
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
