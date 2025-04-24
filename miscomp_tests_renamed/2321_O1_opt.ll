; 140280828340213805281209148891735095030
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/140280828340213805281209148891735095030_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/140280828340213805281209148891735095030.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local local_unnamed_addr global i32 1, align 4
@a = dso_local local_unnamed_addr global i32 0, align 4
@b = dso_local local_unnamed_addr global i32 0, align 4
@c = dso_local local_unnamed_addr global i32 0, align 4
@e = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: nofree noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  tail call fastcc void @foo()
  tail call void @exit(i32 noundef 0) #3
  unreachable
}

; Function Attrs: nofree noreturn
declare void @exit(i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc void @foo() unnamed_addr #2 {
entry:
  %0 = load i32, ptr @a, align 4, !tbaa !5
  %b.promoted50 = load i32, ptr @b, align 4, !tbaa !5
  %1 = load i32, ptr @d, align 4
  %tobool.not = icmp eq i32 %1, 0
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.inc28, %entry
  %f.054 = phi i32 [ 1, %entry ], [ %inc29, %for.inc28 ]
  %inc26.lcssa5253 = phi i32 [ %b.promoted50, %entry ], [ %inc26.lcssa51, %for.inc28 ]
  %cmp248 = icmp slt i32 %inc26.lcssa5253, 1
  br i1 %cmp248, label %for.body3.lr.ph, label %for.inc28

for.body3.lr.ph:                                  ; preds = %for.cond1.preheader
  br i1 %tobool.not, label %for.cond1.for.inc28_crit_edge, label %for.cond4.preheader

for.cond4.preheader:                              ; preds = %for.body3.lr.ph
  store i32 %0, ptr @a, align 4, !tbaa !5
  store i32 4, ptr @c, align 4, !tbaa !5
  store i32 1, ptr @e, align 4, !tbaa !5
  br label %cleanup

for.cond1.for.inc28_crit_edge:                    ; preds = %for.body3.lr.ph
  store i32 1, ptr @b, align 4, !tbaa !5
  br label %for.inc28

for.inc28:                                        ; preds = %for.cond1.for.inc28_crit_edge, %for.cond1.preheader
  %inc26.lcssa51 = phi i32 [ 1, %for.cond1.for.inc28_crit_edge ], [ %inc26.lcssa5253, %for.cond1.preheader ]
  %inc29 = add nuw nsw i32 %f.054, 1
  %exitcond.not = icmp eq i32 %inc29, 3
  br i1 %exitcond.not, label %cleanup, label %for.cond1.preheader, !llvm.loop !9

cleanup:                                          ; preds = %for.inc28, %for.cond4.preheader
  ret void
}

attributes #0 = { nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
