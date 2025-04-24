; 118738151515188292789160119730496747750
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/118738151515188292789160119730496747750_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/118738151515188292789160119730496747750.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@i = dso_local local_unnamed_addr global i32 0, align 4
@d = dso_local local_unnamed_addr global i32 0, align 4
@c = dso_local local_unnamed_addr global i32 0, align 4
@f = dso_local local_unnamed_addr global i32 0, align 4
@e = dso_local local_unnamed_addr global [3 x i8] zeroinitializer, align 1
@a = dso_local local_unnamed_addr global [2 x i32] zeroinitializer, align 4
@b = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %i.promoted = load i32, ptr @i, align 4, !tbaa !5
  %cmp14 = icmp slt i32 %i.promoted, 1
  br i1 %cmp14, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %e.promoted = load i8, ptr @e, align 1
  %f.promoted = load i32, ptr @f, align 4
  %0 = load i32, ptr @d, align 4, !tbaa !5
  %tobool.not = icmp eq i32 %0, 0
  %1 = load i32, ptr @c, align 4
  %tobool1.not = icmp eq i32 %1, 0
  br label %for.body

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %inc1116 = phi i32 [ %i.promoted, %for.body.lr.ph ], [ %inc, %for.inc ]
  %2 = phi i32 [ %f.promoted, %for.body.lr.ph ], [ %5, %for.inc ]
  %conv31315 = phi i8 [ %e.promoted, %for.body.lr.ph ], [ %conv312, %for.inc ]
  br i1 %tobool.not, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  br i1 %tobool1.not, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  store i32 2, ptr @f, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  %3 = phi i32 [ 2, %if.then2 ], [ %2, %if.then ]
  %4 = trunc i32 %3 to i8
  %conv3 = and i8 %conv31315, %4
  store i8 %conv3, ptr @e, align 1, !tbaa !9
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.body
  %conv312 = phi i8 [ %conv31315, %for.body ], [ %conv3, %if.end ]
  %5 = phi i32 [ %2, %for.body ], [ %3, %if.end ]
  %inc = add i32 %inc1116, 1
  %exitcond.not = icmp eq i32 %inc1116, 0
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %for.body, !llvm.loop !10

for.cond.for.end_crit_edge:                       ; preds = %for.inc
  store i32 1, ptr @i, align 4, !tbaa !5
  br label %for.end

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %entry
  %6 = load i8, ptr @e, align 1, !tbaa !9
  %7 = lshr i8 %6, 1
  %8 = and i8 %7, 1
  %idxprom = zext nneg i8 %8 to i64
  %arrayidx = getelementptr inbounds nuw [2 x i32], ptr @a, i64 0, i64 %idxprom
  %9 = load i32, ptr %arrayidx, align 4, !tbaa !5
  store i32 %9, ptr @b, align 4, !tbaa !5
  %cmp7.not = icmp eq i32 %9, 0
  br i1 %cmp7.not, label %if.end10, label %if.then9

if.then9:                                         ; preds = %for.end
  tail call void @abort() #2
  unreachable

if.end10:                                         ; preds = %for.end
  ret i32 0
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #1

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

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
!9 = !{!7, !7, i64 0}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
