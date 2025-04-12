; 111365846384369477447627112693882058340
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/111365846384369477447627112693882058340_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/111365846384369477447627112693882058340.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@masktab = dso_local local_unnamed_addr global [6 x i16] [i16 1, i16 2, i16 3, i16 4, i16 5, i16 0], align 2
@psd = dso_local local_unnamed_addr global [6 x i16] [i16 50, i16 40, i16 30, i16 20, i16 10, i16 0], align 2
@bndpsd = dso_local local_unnamed_addr global [6 x i16] [i16 1, i16 2, i16 3, i16 4, i16 5, i16 0], align 2
@str = private unnamed_addr constant [9 x i8] c"Positive\00", align 1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @ba_compute_psd(i16 noundef signext %start) local_unnamed_addr #0 {
entry:
  %idxprom = sext i16 %start to i64
  %arrayidx = getelementptr inbounds [6 x i16], ptr @masktab, i64 0, i64 %idxprom
  %0 = load i16, ptr %arrayidx, align 2, !tbaa !5
  %arrayidx3 = getelementptr inbounds [6 x i16], ptr @psd, i64 0, i64 %idxprom
  %1 = load i16, ptr %arrayidx3, align 2, !tbaa !5
  %idxprom4 = sext i16 %0 to i64
  %arrayidx5 = getelementptr inbounds [6 x i16], ptr @bndpsd, i64 0, i64 %idxprom4
  store i16 %1, ptr %arrayidx5, align 2, !tbaa !5
  %cmp24 = icmp slt i16 %start, 3
  br i1 %cmp24, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %conv = sext i16 %start to i32
  %inc = add nsw i32 %conv, 1
  %arrayidx5.promoted = load i16, ptr %arrayidx5, align 2, !tbaa !5
  %2 = sext i16 %start to i64
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv.in = phi i64 [ %2, %for.body.lr.ph ], [ %indvars.iv, %for.body ]
  %3 = phi i16 [ %arrayidx5.promoted, %for.body.lr.ph ], [ %add.i, %for.body ]
  %i.026 = phi i32 [ %inc, %for.body.lr.ph ], [ %inc15, %for.body ]
  %indvars.iv = add nsw i64 %indvars.iv.in, 1
  %arrayidx11 = getelementptr inbounds [6 x i16], ptr @psd, i64 0, i64 %indvars.iv
  %4 = load i16, ptr %arrayidx11, align 2, !tbaa !5
  %add.i = add i16 %4, %3
  %inc15 = add nsw i32 %i.026, 1
  %exitcond.not = icmp eq i32 %inc15, 4
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %for.body, !llvm.loop !9

for.cond.for.end_crit_edge:                       ; preds = %for.body
  store i16 %add.i, ptr %arrayidx5, align 2, !tbaa !5
  br label %for.end

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %entry
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local signext i16 @logadd(ptr noundef readonly captures(none) %a, ptr noundef readonly captures(none) %b) local_unnamed_addr #1 {
entry:
  %0 = load i16, ptr %a, align 2, !tbaa !5
  %1 = load i16, ptr %b, align 2, !tbaa !5
  %add = add i16 %1, %0
  ret i16 %add
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  %0 = load i16, ptr @masktab, align 2, !tbaa !5
  %1 = load i16, ptr @psd, align 2, !tbaa !5
  %idxprom4.i = sext i16 %0 to i64
  %arrayidx5.i = getelementptr inbounds [6 x i16], ptr @bndpsd, i64 0, i64 %idxprom4.i
  store i16 %1, ptr %arrayidx5.i, align 2, !tbaa !5
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %entry
  %indvars.iv.in.i = phi i64 [ 0, %entry ], [ %indvars.iv.i, %for.body.i ]
  %2 = phi i16 [ %1, %entry ], [ %add.i.i, %for.body.i ]
  %i.026.i = phi i32 [ 1, %entry ], [ %inc15.i, %for.body.i ]
  %indvars.iv.i = add nuw nsw i64 %indvars.iv.in.i, 1
  %arrayidx11.i = getelementptr inbounds nuw [6 x i16], ptr @psd, i64 0, i64 %indvars.iv.i
  %3 = load i16, ptr %arrayidx11.i, align 2, !tbaa !5
  %add.i.i = add i16 %3, %2
  %inc15.i = add nuw nsw i32 %i.026.i, 1
  %exitcond.not.i = icmp eq i32 %inc15.i, 4
  br i1 %exitcond.not.i, label %ba_compute_psd.exit, label %for.body.i, !llvm.loop !9

ba_compute_psd.exit:                              ; preds = %for.body.i
  store i16 %add.i.i, ptr %arrayidx5.i, align 2, !tbaa !5
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #3

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }

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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
