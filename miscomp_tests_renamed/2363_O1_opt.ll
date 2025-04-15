; 136454379134421811889738789124032513625
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/136454379134421811889738789124032513625_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/136454379134421811889738789124032513625.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local local_unnamed_addr global [0 x i32] zeroinitializer, align 4
@b = dso_local local_unnamed_addr global i32 0, align 4
@c = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local noundef i32 @fn1() local_unnamed_addr #0 {
entry:
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @a, i64 48), align 4, !tbaa !5
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.inc23, %entry
  %indvars.iv41 = phi i64 [ 0, %entry ], [ %indvars.iv.next42, %for.inc23 ]
  %0 = mul nuw nsw i64 %indvars.iv41, 3
  %1 = add nuw nsw i64 %0, 9
  %arrayidx = getelementptr inbounds nuw [0 x i32], ptr @a, i64 0, i64 %1
  %2 = load i32, ptr %arrayidx, align 4, !tbaa !5
  br label %for.cond4.preheader

for.cond4.preheader:                              ; preds = %for.cond4.preheader, %for.cond1.preheader
  %indvars.iv = phi i64 [ 0, %for.cond1.preheader ], [ %indvars.iv.next, %for.cond4.preheader ]
  %arrayidx16 = getelementptr inbounds nuw [0 x i32], ptr @a, i64 0, i64 %indvars.iv
  store i32 %2, ptr %arrayidx16, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %cmp2 = icmp eq i64 %indvars.iv, 0
  br i1 %cmp2, label %for.cond4.preheader, label %for.inc23, !llvm.loop !9

for.inc23:                                        ; preds = %for.cond4.preheader
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next42, 3
  br i1 %exitcond.not, label %cleanup, label %for.cond1.preheader, !llvm.loop !12

cleanup:                                          ; preds = %for.inc23
  store i32 1, ptr @c, align 4, !tbaa !5
  ret i32 0
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #1 {
entry:
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @a, i64 48), align 4, !tbaa !5
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.inc23.i, %entry
  %indvars.iv41.i = phi i64 [ 0, %entry ], [ %indvars.iv.next42.i, %for.inc23.i ]
  %0 = mul nuw nsw i64 %indvars.iv41.i, 3
  %1 = add nuw nsw i64 %0, 9
  %arrayidx.i = getelementptr inbounds nuw [0 x i32], ptr @a, i64 0, i64 %1
  %2 = load i32, ptr %arrayidx.i, align 4, !tbaa !5
  br label %for.cond4.preheader.i

for.cond4.preheader.i:                            ; preds = %for.cond4.preheader.i, %for.cond1.preheader.i
  %indvars.iv.i = phi i64 [ 0, %for.cond1.preheader.i ], [ %indvars.iv.next.i, %for.cond4.preheader.i ]
  %arrayidx16.i = getelementptr inbounds nuw [0 x i32], ptr @a, i64 0, i64 %indvars.iv.i
  store i32 %2, ptr %arrayidx16.i, align 4, !tbaa !5
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %cmp2.i = icmp eq i64 %indvars.iv.i, 0
  br i1 %cmp2.i, label %for.cond4.preheader.i, label %for.inc23.i, !llvm.loop !9

for.inc23.i:                                      ; preds = %for.cond4.preheader.i
  %indvars.iv.next42.i = add nuw nsw i64 %indvars.iv41.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next42.i, 3
  br i1 %exitcond.not.i, label %fn1.exit, label %for.cond1.preheader.i, !llvm.loop !12

fn1.exit:                                         ; preds = %for.inc23.i
  store i32 1, ptr @c, align 4, !tbaa !5
  %3 = load i32, ptr @a, align 4, !tbaa !5
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %fn1.exit
  tail call void @abort() #3
  unreachable

if.end:                                           ; preds = %fn1.exit
  ret i32 0
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #2

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!12 = distinct !{!12, !10, !11}
