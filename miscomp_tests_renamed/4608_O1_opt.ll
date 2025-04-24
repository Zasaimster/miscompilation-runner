; 181550468366904881550961900027623829703
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/181550468366904881550961900027623829703_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/181550468366904881550961900027623829703.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ops = dso_local local_unnamed_addr global [0 x i32] zeroinitializer, align 4
@correct = dso_local local_unnamed_addr global [13 x i32] [i32 46, i32 12, i32 11, i32 3, i32 3, i32 3, i32 2, i32 2, i32 2, i32 2, i32 2, i32 1, i32 1], align 16
@num = dso_local local_unnamed_addr global i32 13, align 4

; Function Attrs: nofree noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %0 = load i32, ptr @num, align 4, !tbaa !5
  %cmp52 = icmp sgt i32 %0, 0
  br i1 %cmp52, label %for.cond1.preheader.lr.ph, label %for.cond20.preheader

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %j.048 = add nsw i32 %0, -1
  %1 = zext nneg i32 %0 to i64
  %2 = add nsw i64 %1, -1
  %3 = sext i32 %j.048 to i64
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.end, %for.cond1.preheader.lr.ph
  %indvars.iv62 = phi i64 [ 0, %for.cond1.preheader.lr.ph ], [ %indvars.iv.next63, %for.end ]
  %cmp249 = icmp slt i64 %indvars.iv62, %3
  br i1 %cmp249, label %for.body3, label %for.end

for.cond20.preheader:                             ; preds = %for.end, %entry
  %cmp2154 = icmp sgt i32 %0, 0
  br i1 %cmp2154, label %for.body22.preheader, label %for.end32

for.body22.preheader:                             ; preds = %for.cond20.preheader
  %wide.trip.count68 = zext nneg i32 %0 to i64
  br label %for.body22

for.body3:                                        ; preds = %for.inc, %for.cond1.preheader
  %indvars.iv56 = phi i64 [ %indvars.iv.next57, %for.inc ], [ %1, %for.cond1.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ %2, %for.cond1.preheader ]
  %4 = add nsw i64 %indvars.iv56, -2
  %arrayidx = getelementptr inbounds [0 x i32], ptr @ops, i64 0, i64 %4
  %5 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %arrayidx6 = getelementptr inbounds [0 x i32], ptr @ops, i64 0, i64 %indvars.iv
  %6 = load i32, ptr %arrayidx6, align 4, !tbaa !5
  %cmp7 = icmp slt i32 %5, %6
  br i1 %cmp7, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body3
  store i32 %5, ptr %arrayidx6, align 4, !tbaa !5
  store i32 %6, ptr %arrayidx, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body3
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %cmp2 = icmp sgt i64 %indvars.iv.next, %indvars.iv62
  %indvars.iv.next57 = add nsw i64 %indvars.iv56, -1
  br i1 %cmp2, label %for.body3, label %for.end, !llvm.loop !9

for.end:                                          ; preds = %for.inc, %for.cond1.preheader
  %indvars.iv.next63 = add nuw nsw i64 %indvars.iv62, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next63, %wide.trip.count
  br i1 %exitcond.not, label %for.cond20.preheader, label %for.cond1.preheader, !llvm.loop !12

for.cond20:                                       ; preds = %for.body22
  %indvars.iv.next66 = add nuw nsw i64 %indvars.iv65, 1
  %exitcond69.not = icmp eq i64 %indvars.iv.next66, %wide.trip.count68
  br i1 %exitcond69.not, label %for.end32, label %for.body22, !llvm.loop !13

for.body22:                                       ; preds = %for.cond20, %for.body22.preheader
  %indvars.iv65 = phi i64 [ 0, %for.body22.preheader ], [ %indvars.iv.next66, %for.cond20 ]
  %arrayidx24 = getelementptr inbounds nuw [0 x i32], ptr @ops, i64 0, i64 %indvars.iv65
  %7 = load i32, ptr %arrayidx24, align 4, !tbaa !5
  %arrayidx26 = getelementptr inbounds nuw [13 x i32], ptr @correct, i64 0, i64 %indvars.iv65
  %8 = load i32, ptr %arrayidx26, align 4, !tbaa !5
  %cmp27.not = icmp eq i32 %7, %8
  br i1 %cmp27.not, label %for.cond20, label %if.then28

if.then28:                                        ; preds = %for.body22
  tail call void @abort() #3
  unreachable

for.end32:                                        ; preds = %for.cond20, %for.cond20.preheader
  tail call void @exit(i32 noundef 0) #3
  unreachable
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #1

; Function Attrs: nofree noreturn
declare void @exit(i32 noundef) local_unnamed_addr #2

attributes #0 = { nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
