; 123577844838775993948223526608913240012
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/123577844838775993948223526608913240012_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/123577844838775993948223526608913240012.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@b = dso_local local_unnamed_addr global i16 0, align 2
@a = dso_local local_unnamed_addr global i32 0, align 4
@d = dso_local local_unnamed_addr global i32 0, align 4
@c = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %b.promoted = load i16, ptr @b, align 2, !tbaa !5
  %inc16 = add i16 %b.promoted, 1
  %cmp17 = icmp slt i16 %b.promoted, 2
  br i1 %cmp17, label %for.body.lr.ph, label %for.end13

for.body.lr.ph:                                   ; preds = %entry
  store i32 0, ptr @a, align 4
  %0 = load i32, ptr @d, align 4, !tbaa !9
  %tobool = icmp ne i32 %0, 0
  %1 = load i32, ptr @c, align 4
  %tobool9.not = icmp eq i32 %1, 0
  br label %for.body

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %inc19 = phi i16 [ %inc16, %for.body.lr.ph ], [ %inc, %for.inc ]
  %inc121418 = phi i16 [ %b.promoted, %for.body.lr.ph ], [ %inc12, %for.inc ]
  %tobool6 = icmp ne i16 %inc19, 0
  %or.cond = or i1 %tobool6, %tobool
  %brmerge = select i1 %or.cond, i1 true, i1 %tobool9.not
  br i1 %brmerge, label %for.inc, label %for.cond8.preheader.split

for.cond8.preheader.split:                        ; preds = %for.body
  store i16 %inc19, ptr @b, align 2, !tbaa !5
  br label %for.cond8

for.cond8:                                        ; preds = %for.cond8, %for.cond8.preheader.split
  br label %for.cond8

for.inc:                                          ; preds = %for.body
  %inc12 = add nsw i16 %inc121418, 2
  %inc = add nsw i16 %inc121418, 3
  %cmp = icmp ugt i16 %inc121418, 32765
  br i1 %cmp, label %for.body, label %for.end13, !llvm.loop !11

for.end13:                                        ; preds = %for.inc, %entry
  %inc.lcssa = phi i16 [ %inc16, %entry ], [ %inc, %for.inc ]
  store i16 %inc.lcssa, ptr @b, align 2, !tbaa !5
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
