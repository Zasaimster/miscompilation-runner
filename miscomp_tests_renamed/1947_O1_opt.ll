; 142381085007074660345819901774933417844
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/142381085007074660345819901774933417844_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/142381085007074660345819901774933417844.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local local_unnamed_addr global [20 x i32] zeroinitializer, align 16
@b = dso_local local_unnamed_addr global i32 0, align 4
@c = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local noundef i32 @fn1() local_unnamed_addr #0 {
entry:
  %0 = load i32, ptr @a, align 16, !tbaa !5
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @a, i64 48), align 16, !tbaa !5
  %1 = load i32, ptr @b, align 4
  %tobool8.not = icmp eq i32 %1, 0
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.inc27, %entry
  %indvars.iv50 = phi i64 [ 0, %entry ], [ %indvars.iv.next51, %for.inc27 ]
  %g.047 = phi i32 [ %0, %entry ], [ 0, %for.inc27 ]
  %2 = mul nuw nsw i64 %indvars.iv50, 3
  %3 = add nuw nsw i64 %2, 9
  %arrayidx18 = getelementptr inbounds nuw [20 x i32], ptr @a, i64 0, i64 %3
  br label %for.cond4.preheader

for.cond4.preheader:                              ; preds = %for.end, %for.cond1.preheader
  %indvars.iv = phi i64 [ 0, %for.cond1.preheader ], [ %indvars.iv.next, %for.end ]
  %g.145 = phi i32 [ %g.047, %for.cond1.preheader ], [ 0, %for.end ]
  %4 = load i32, ptr getelementptr inbounds nuw (i8, ptr @a, i64 48), align 16, !tbaa !5
  %cmp7 = icmp sgt i32 %4, 1
  %conv = zext i1 %cmp7 to i32
  br label %for.body6

for.body6:                                        ; preds = %if.end, %for.cond4.preheader
  %g.243 = phi i32 [ %g.145, %for.cond4.preheader ], [ 0, %if.end ]
  %f.042 = phi i32 [ 0, %for.cond4.preheader ], [ %inc, %if.end ]
  %tobool.not = icmp eq i32 %g.243, %conv
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %for.body6
  %inc = add nuw nsw i32 %f.042, 1
  %cmp5 = icmp eq i32 %f.042, 0
  %or.cond = select i1 %tobool8.not, i1 %cmp5, i1 false
  br i1 %or.cond, label %for.body6, label %for.end, !llvm.loop !9

for.end:                                          ; preds = %if.end
  %arrayidx20 = getelementptr inbounds nuw [20 x i32], ptr @a, i64 0, i64 %indvars.iv
  %5 = load i32, ptr %arrayidx18, align 4, !tbaa !5
  store i32 %5, ptr %arrayidx20, align 4, !tbaa !5
  store i32 1, ptr @c, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %cmp2 = icmp eq i64 %indvars.iv, 0
  br i1 %cmp2, label %for.cond4.preheader, label %for.inc27, !llvm.loop !12

for.inc27:                                        ; preds = %for.end
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next51, 3
  br i1 %exitcond.not, label %cleanup, label %for.cond1.preheader, !llvm.loop !13

cleanup:                                          ; preds = %for.inc27, %for.body6
  ret i32 0
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #1 {
entry:
  %0 = load i32, ptr @a, align 16, !tbaa !5
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @a, i64 48), align 16, !tbaa !5
  %1 = load i32, ptr @b, align 4
  %tobool8.not.i = icmp eq i32 %1, 0
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.inc27.i, %entry
  %indvars.iv50.i = phi i64 [ 0, %entry ], [ %indvars.iv.next51.i, %for.inc27.i ]
  %g.047.i = phi i32 [ %0, %entry ], [ 0, %for.inc27.i ]
  %2 = mul nuw nsw i64 %indvars.iv50.i, 3
  %3 = add nuw nsw i64 %2, 9
  %arrayidx18.i = getelementptr inbounds nuw [20 x i32], ptr @a, i64 0, i64 %3
  br label %for.cond4.preheader.i

for.cond4.preheader.i:                            ; preds = %for.end.i, %for.cond1.preheader.i
  %indvars.iv.i = phi i64 [ 0, %for.cond1.preheader.i ], [ %indvars.iv.next.i, %for.end.i ]
  %g.145.i = phi i32 [ %g.047.i, %for.cond1.preheader.i ], [ 0, %for.end.i ]
  %4 = load i32, ptr getelementptr inbounds nuw (i8, ptr @a, i64 48), align 16, !tbaa !5
  %cmp7.i = icmp sgt i32 %4, 1
  %conv.i = zext i1 %cmp7.i to i32
  br label %for.body6.i

for.body6.i:                                      ; preds = %if.end.i, %for.cond4.preheader.i
  %g.243.i = phi i32 [ %g.145.i, %for.cond4.preheader.i ], [ 0, %if.end.i ]
  %f.042.i = phi i32 [ 0, %for.cond4.preheader.i ], [ %inc.i, %if.end.i ]
  %tobool.not.i = icmp eq i32 %g.243.i, %conv.i
  br i1 %tobool.not.i, label %if.end.i, label %fn1.exit

if.end.i:                                         ; preds = %for.body6.i
  %inc.i = add nuw nsw i32 %f.042.i, 1
  %cmp5.i = icmp eq i32 %f.042.i, 0
  %or.cond.i = select i1 %tobool8.not.i, i1 %cmp5.i, i1 false
  br i1 %or.cond.i, label %for.body6.i, label %for.end.i, !llvm.loop !9

for.end.i:                                        ; preds = %if.end.i
  %arrayidx20.i = getelementptr inbounds nuw [20 x i32], ptr @a, i64 0, i64 %indvars.iv.i
  %5 = load i32, ptr %arrayidx18.i, align 4, !tbaa !5
  store i32 %5, ptr %arrayidx20.i, align 4, !tbaa !5
  store i32 1, ptr @c, align 4, !tbaa !5
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %cmp2.i = icmp eq i64 %indvars.iv.i, 0
  br i1 %cmp2.i, label %for.cond4.preheader.i, label %for.inc27.i, !llvm.loop !12

for.inc27.i:                                      ; preds = %for.end.i
  %indvars.iv.next51.i = add nuw nsw i64 %indvars.iv50.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next51.i, 3
  br i1 %exitcond.not.i, label %fn1.exit, label %for.cond1.preheader.i, !llvm.loop !13

fn1.exit:                                         ; preds = %for.inc27.i, %for.body6.i
  %6 = load i32, ptr @a, align 16, !tbaa !5
  %cmp.not = icmp eq i32 %6, 0
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
!13 = distinct !{!13, !10, !11}
