; 177841723927018391881988808423027023189
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/177841723927018391881988808423027023189.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/177841723927018391881988808423027023189.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tmp = dso_local global ptr null, align 8
@c = dso_local local_unnamed_addr global ptr @tmp, align 8
@a = dso_local global i32 0, align 4
@d = dso_local global i32 0, align 4
@f = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: nofree norecurse nounwind memory(readwrite, argmem: write) uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %f.promoted.i = load i32, ptr @f, align 4, !tbaa !5
  %cmp9.i = icmp eq i32 %f.promoted.i, 0
  br i1 %cmp9.i, label %for.cond1.preheader.lr.ph.i, label %fn1.exit

for.cond1.preheader.lr.ph.i:                      ; preds = %entry
  %0 = load ptr, ptr @c, align 8, !tbaa !9
  br label %for.body3.i

for.body3.i:                                      ; preds = %lor.end.i, %for.cond1.preheader.lr.ph.i
  %g.08.i = phi i32 [ 1, %for.cond1.preheader.lr.ph.i ], [ %dec.i, %lor.end.i ]
  %1 = load volatile i32, ptr @d, align 4, !tbaa !5
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %lor.rhs.i, label %lor.end.i

lor.rhs.i:                                        ; preds = %for.body3.i
  %2 = load volatile i32, ptr @d, align 4, !tbaa !5
  br label %lor.end.i

lor.end.i:                                        ; preds = %lor.rhs.i, %for.body3.i
  store ptr @a, ptr %0, align 8, !tbaa !13
  store ptr inttoptr (i64 30 to ptr), ptr @tmp, align 8, !tbaa !13
  store volatile ptr null, ptr @tmp, align 8, !tbaa !13
  %dec.i = add nsw i32 %g.08.i, -1
  %cmp2.not.i = icmp eq i32 %g.08.i, 0
  br i1 %cmp2.not.i, label %for.inc5.i, label %for.body3.i, !llvm.loop !15

for.inc5.i:                                       ; preds = %lor.end.i
  store i32 1, ptr @f, align 4, !tbaa !5
  br label %fn1.exit

fn1.exit:                                         ; preds = %entry, %for.inc5.i
  ret i32 0
}

attributes #0 = { nofree norecurse nounwind memory(readwrite, argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!10 = !{!"p2 int", !11, i64 0}
!11 = !{!"any p2 pointer", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"p1 int", !12, i64 0}
!15 = distinct !{!15, !16, !17}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!"llvm.loop.unroll.disable"}
