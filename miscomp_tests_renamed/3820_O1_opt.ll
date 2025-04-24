; 166792763576343385034524276927716503638
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/166792763576343385034524276927716503638_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/166792763576343385034524276927716503638.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@X = dso_local local_unnamed_addr global float 0.000000e+00, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @foo(ptr captures(none) %b.coerce0, float %b.coerce1, ptr noundef writeonly captures(none) initializes((0, 4)) %q, ptr noundef readnone captures(none) %h) local_unnamed_addr #0 {
entry:
  %0 = load i32, ptr %b.coerce0, align 4, !tbaa !5
  %conv = sitofp i32 %0 to float
  %1 = load float, ptr @X, align 4, !tbaa !9
  %add = fadd float %1, %conv
  store float %add, ptr @X, align 4, !tbaa !9
  store i32 3, ptr %b.coerce0, align 4, !tbaa !5
  store i32 2, ptr %q, align 4, !tbaa !11
  %2 = load i32, ptr %b.coerce0, align 4, !tbaa !5
  ret i32 %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local noundef i32 @main() local_unnamed_addr #1 {
entry:
  %0 = load float, ptr @X, align 4, !tbaa !9
  %add.i = fadd float %0, 0.000000e+00
  store float %add.i, ptr @X, align 4, !tbaa !9
  ret i32 0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"float", !7, i64 0}
!11 = !{!12, !6, i64 0}
!12 = !{!"A", !6, i64 0, !6, i64 4}
