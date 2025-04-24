; 106612263635206670316735155719999843354
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/106612263635206670316735155719999843354_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/106612263635206670316735155719999843354.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local local_unnamed_addr global i16 5, align 2
@f = dso_local local_unnamed_addr global i32 4, align 4
@g = dso_local local_unnamed_addr global i32 0, align 4
@c = dso_local local_unnamed_addr global [1 x i8] zeroinitializer, align 1
@b = dso_local local_unnamed_addr global i16 0, align 2
@j = dso_local local_unnamed_addr global i32 0, align 4
@a = dso_local local_unnamed_addr global i8 0, align 1
@h = dso_local local_unnamed_addr global i16 0, align 2
@e = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %f.promoted = load i32, ptr @f, align 4, !tbaa !5
  %tobool.not23 = icmp eq i32 %f.promoted, 0
  br i1 %tobool.not23, label %for.end17, label %for.cond1.preheader.lr.ph

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %.old = load i16, ptr @d, align 2, !tbaa !9
  %cmp6.old = icmp slt i16 %.old, 1
  %0 = load i16, ptr @b, align 2
  %idxprom = sext i16 %0 to i64
  %arrayidx = getelementptr inbounds [1 x i8], ptr @c, i64 0, i64 %idxprom
  %1 = load i32, ptr @j, align 4
  %tobool9.not = icmp eq i32 %1, 0
  %2 = load i8, ptr @a, align 1
  %conv16 = sext i8 %2 to i32
  %tobool.not = icmp eq i8 %2, 0
  br label %for.cond3.preheader

for.cond3.preheader:                              ; preds = %for.cond3.preheader.backedge, %for.cond1.preheader.lr.ph
  %storemerge21 = phi i32 [ 0, %for.cond1.preheader.lr.ph ], [ %storemerge21.be, %for.cond3.preheader.backedge ]
  br label %while.cond

while.cond:                                       ; preds = %for.inc, %for.cond3.preheader
  %i.019 = phi i32 [ 0, %for.cond3.preheader ], [ %inc, %for.inc ]
  br i1 %cmp6.old, label %while.body.preheader, label %for.inc

while.body.preheader:                             ; preds = %while.cond
  %3 = load i8, ptr %arrayidx, align 1, !tbaa !11
  %tobool8 = icmp eq i8 %3, 0
  br i1 %tobool8, label %while.body.preheader.split, label %for.inc, !llvm.loop !12

while.body.preheader.split:                       ; preds = %while.body.preheader
  store i32 %storemerge21, ptr @g, align 4, !tbaa !5
  br label %while.body

while.body:                                       ; preds = %while.body, %while.body.preheader.split
  br label %while.body

for.inc:                                          ; preds = %while.body.preheader, %while.cond
  %inc = add nuw nsw i32 %i.019, 1
  %exitcond.not = icmp eq i32 %inc, 3
  br i1 %exitcond.not, label %L, label %while.cond, !llvm.loop !15

L:                                                ; preds = %for.inc
  br i1 %tobool9.not, label %for.inc12, label %for.inc15

for.inc12:                                        ; preds = %L
  %inc13 = add nuw nsw i32 %storemerge21, 1
  %exitcond25.not = icmp eq i32 %inc13, 33
  br i1 %exitcond25.not, label %for.inc15, label %for.cond3.preheader.backedge

for.cond3.preheader.backedge:                     ; preds = %for.inc15, %for.inc12
  %storemerge21.be = phi i32 [ %inc13, %for.inc12 ], [ 0, %for.inc15 ]
  br label %for.cond3.preheader, !llvm.loop !16

for.inc15:                                        ; preds = %for.inc12, %L
  %storemerge.lcssa = phi i32 [ 33, %for.inc12 ], [ 0, %L ]
  store i32 %storemerge.lcssa, ptr @g, align 4, !tbaa !5
  store i32 %conv16, ptr @f, align 4, !tbaa !5
  br i1 %tobool.not, label %for.end17, label %for.cond3.preheader.backedge

for.end17:                                        ; preds = %for.inc15, %entry
  ret i32 0
}

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!10 = !{!"short", !7, i64 0}
!11 = !{!7, !7, i64 0}
!12 = distinct !{!12, !13, !14}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!"llvm.loop.unroll.disable"}
!15 = distinct !{!15, !13, !14}
!16 = distinct !{!16, !13, !14}
