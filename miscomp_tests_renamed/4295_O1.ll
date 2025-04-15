; 168395528490040599713031992038174740323
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/168395528490040599713031992038174740323.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/168395528490040599713031992038174740323.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { i32 }

@d = dso_local global ptr null, align 8
@e = dso_local local_unnamed_addr global ptr @d, align 8
@a = dso_local local_unnamed_addr global i32 0, align 4
@b = dso_local local_unnamed_addr global %struct.S zeroinitializer, align 4
@c = dso_local local_unnamed_addr global i8 0, align 1
@f = dso_local global i32 0, align 4

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: write, inaccessiblemem: none) uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %c.promoted11 = load i8, ptr @c, align 1
  %0 = load ptr, ptr @e, align 8, !tbaa !5
  %1 = add i8 %c.promoted11, 56
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %entry, %for.inc4
  %storemerge14 = phi i32 [ -19, %entry ], [ %inc5, %for.inc4 ]
  %dec8.lcssa1213 = phi i8 [ %c.promoted11, %entry ], [ %2, %for.inc4 ]
  %2 = add i8 %dec8.lcssa1213, -24
  store ptr @f, ptr %0, align 8, !tbaa !11
  %3 = load ptr, ptr @d, align 8, !tbaa !11
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %return, label %for.inc4

for.inc4:                                         ; preds = %for.cond1.preheader
  %inc5 = add nsw i32 %storemerge14, 1
  %tobool.not = icmp eq i32 %inc5, 0
  br i1 %tobool.not, label %return, label %for.cond1.preheader, !llvm.loop !13

return:                                           ; preds = %for.inc4, %for.cond1.preheader
  %dec.lcssa.lcssa = phi i8 [ %1, %for.inc4 ], [ %2, %for.cond1.preheader ]
  %storemerge.lcssa = phi i32 [ 0, %for.inc4 ], [ %storemerge14, %for.cond1.preheader ]
  store i32 24, ptr @b, align 4, !tbaa !16
  store i8 %dec.lcssa.lcssa, ptr @c, align 1, !tbaa !19
  store i32 %storemerge.lcssa, ptr @a, align 4, !tbaa !20
  ret i32 0
}

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, argmem: write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"p2 int", !7, i64 0}
!7 = !{!"any p2 pointer", !8, i64 0}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !12, i64 0}
!12 = !{!"p1 int", !8, i64 0}
!13 = distinct !{!13, !14, !15}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!"llvm.loop.unroll.disable"}
!16 = !{!17, !18, i64 0}
!17 = !{!"S", !18, i64 0}
!18 = !{!"int", !9, i64 0}
!19 = !{!9, !9, i64 0}
!20 = !{!18, !18, i64 0}
