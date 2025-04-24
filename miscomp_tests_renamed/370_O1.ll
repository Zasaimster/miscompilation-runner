; 106255199540674486931853147295561610792
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/106255199540674486931853147295561610792.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/106255199540674486931853147295561610792.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@b = dso_local local_unnamed_addr global i16 0, align 2
@f = dso_local local_unnamed_addr global i32 0, align 4
@h = dso_local local_unnamed_addr global i32 0, align 4
@d = dso_local local_unnamed_addr global i32 0, align 4
@a = dso_local local_unnamed_addr global i32 0, align 4
@i = dso_local local_unnamed_addr global i32 0, align 4
@g = dso_local local_unnamed_addr global i32 0, align 4
@e = dso_local local_unnamed_addr global i32 0, align 4
@c = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local noundef i32 @fn1() local_unnamed_addr #0 {
entry:
  store i16 0, ptr @b, align 2, !tbaa !5
  %0 = load i32, ptr @h, align 4, !tbaa !9
  %tobool.not = icmp eq i32 %0, 0
  %f.promoted23 = load i32, ptr @f, align 4
  %1 = load i32, ptr @c, align 4
  %tobool12.not = icmp eq i32 %1, 0
  br label %for.cond.outer

for.cond.outer:                                   ; preds = %for.cond3, %entry
  %inc.lcssa26.ph = phi i32 [ %inc.lcssa25, %for.cond3 ], [ %f.promoted23, %entry ]
  br label %for.cond

for.cond:                                         ; preds = %for.cond.outer, %if.then
  br i1 %tobool.not, label %for.cond1.preheader, label %if.then

for.cond1.preheader:                              ; preds = %for.cond
  %tobool2.not20 = icmp eq i32 %inc.lcssa26.ph, 0
  br i1 %tobool2.not20, label %for.cond5, label %for.cond1.for.cond3.preheader_crit_edge

if.then:                                          ; preds = %for.cond
  store i32 0, ptr @d, align 4, !tbaa !9
  br label %for.cond

for.cond1.for.cond3.preheader_crit_edge:          ; preds = %for.cond1.preheader
  store i32 0, ptr @f, align 4, !tbaa !9
  br label %for.cond5

for.cond3:                                        ; preds = %for.cond5
  store i32 1, ptr @a, align 4, !tbaa !9
  br label %for.cond.outer

for.cond5:                                        ; preds = %for.cond1.preheader, %for.cond1.for.cond3.preheader_crit_edge
  %inc.lcssa25 = phi i32 [ 0, %for.cond1.for.cond3.preheader_crit_edge ], [ %inc.lcssa26.ph, %for.cond1.preheader ]
  br i1 %tobool12.not, label %return.critedge, label %for.cond3, !llvm.loop !11

return.critedge:                                  ; preds = %for.cond5
  store i32 -1, ptr @i, align 4
  store i32 -1, ptr @g, align 4
  store i32 0, ptr @e, align 4
  store i32 0, ptr @a, align 4, !tbaa !9
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  store i16 0, ptr @b, align 2, !tbaa !5
  %0 = load i32, ptr @h, align 4, !tbaa !9
  %tobool.not.i = icmp eq i32 %0, 0
  %f.promoted23.i = load i32, ptr @f, align 4
  %1 = load i32, ptr @c, align 4
  %tobool12.not.i = icmp eq i32 %1, 0
  br label %for.cond.i.outer

for.cond.i.outer:                                 ; preds = %for.cond5.i, %entry
  %inc.lcssa26.i.ph = phi i32 [ %inc.lcssa25.i, %for.cond5.i ], [ %f.promoted23.i, %entry ]
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i.outer, %if.then.i
  br i1 %tobool.not.i, label %for.cond1.preheader.i, label %if.then.i

for.cond1.preheader.i:                            ; preds = %for.cond.i
  %tobool2.not20.i = icmp eq i32 %inc.lcssa26.i.ph, 0
  br i1 %tobool2.not20.i, label %for.cond3.preheader.i, label %for.cond1.for.cond3.preheader_crit_edge.i

if.then.i:                                        ; preds = %for.cond.i
  store i32 0, ptr @d, align 4, !tbaa !9
  br label %for.cond.i

for.cond1.for.cond3.preheader_crit_edge.i:        ; preds = %for.cond1.preheader.i
  store i32 0, ptr @f, align 4, !tbaa !9
  br label %for.cond3.preheader.i

for.cond3.preheader.i:                            ; preds = %for.cond1.for.cond3.preheader_crit_edge.i, %for.cond1.preheader.i
  %inc.lcssa25.i = phi i32 [ 0, %for.cond1.for.cond3.preheader_crit_edge.i ], [ %inc.lcssa26.i.ph, %for.cond1.preheader.i ]
  br i1 %tobool12.not.i, label %fn1.exit, label %for.cond5.i, !llvm.loop !11

for.cond5.i:                                      ; preds = %for.cond3.preheader.i
  store i32 1, ptr @a, align 4, !tbaa !9
  br label %for.cond.i.outer

fn1.exit:                                         ; preds = %for.cond3.preheader.i
  store i32 -1, ptr @i, align 4
  store i32 -1, ptr @g, align 4
  store i32 0, ptr @e, align 4
  store i32 0, ptr @a, align 4, !tbaa !9
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
!6 = !{!"short", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !7, i64 0}
!11 = distinct !{!11, !12, !13}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.unroll.disable"}
