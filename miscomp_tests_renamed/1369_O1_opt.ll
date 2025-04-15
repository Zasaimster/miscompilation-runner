; 131705549598152595843744714017096548282
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/131705549598152595843744714017096548282_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/131705549598152595843744714017096548282.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = internal unnamed_addr constant [2 x i32] [i32 1, i32 2], align 4

; Function Attrs: nofree nounwind uwtable
define dso_local void @foo(ptr noundef readonly captures(none) %x, i32 noundef %y) local_unnamed_addr #0 {
entry:
  %cmp12 = icmp sgt i32 %y, 0
  br i1 %cmp12, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %entry
  %wide.trip.count = zext nneg i32 %y to i64
  br label %for.body

for.body:                                         ; preds = %cleanup, %for.body.preheader
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %cleanup ]
  %c.014 = phi i32 [ undef, %for.body.preheader ], [ %c.1, %cleanup ]
  %b.013 = phi i32 [ 0, %for.body.preheader ], [ %b.1, %cleanup ]
  %arrayidx = getelementptr inbounds nuw i32, ptr %x, i64 %indvars.iv
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %cmp1.not = icmp eq i32 %0, 0
  br i1 %cmp1.not, label %cleanup, label %if.end

if.end:                                           ; preds = %for.body
  %tobool.not = icmp eq i32 %b.013, 0
  %cmp2.not = icmp sgt i32 %0, %c.014
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp2.not
  br i1 %or.cond, label %cleanup, label %if.then3

if.then3:                                         ; preds = %if.end
  tail call void @abort() #2
  unreachable

cleanup:                                          ; preds = %if.end, %for.body
  %b.1 = phi i32 [ %b.013, %for.body ], [ 1, %if.end ]
  %c.1 = phi i32 [ %c.014, %for.body ], [ %0, %if.end ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  %or.cond17 = select i1 %cmp1.not, i1 true, i1 %exitcond.not
  br i1 %or.cond17, label %for.end, label %for.body, !llvm.loop !9

for.end:                                          ; preds = %cleanup, %entry
  ret void
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #1

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i, %entry
  %indvars.iv.i = phi i64 [ 0, %entry ], [ %indvars.iv.next.i, %cleanup.i ]
  %c.014.i = phi i32 [ undef, %entry ], [ %c.1.i, %cleanup.i ]
  %b.013.i = phi i32 [ 0, %entry ], [ %b.1.i, %cleanup.i ]
  %arrayidx.i = getelementptr inbounds nuw i32, ptr @a, i64 %indvars.iv.i
  %0 = load i32, ptr %arrayidx.i, align 4, !tbaa !5
  %cmp1.not.i = icmp eq i32 %0, 0
  br i1 %cmp1.not.i, label %cleanup.i, label %if.end.i

if.end.i:                                         ; preds = %for.body.i
  %tobool.not.i = icmp eq i32 %b.013.i, 0
  %cmp2.not.i = icmp sgt i32 %0, %c.014.i
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %cmp2.not.i
  br i1 %or.cond.i, label %cleanup.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  tail call void @abort() #2
  unreachable

cleanup.i:                                        ; preds = %if.end.i, %for.body.i
  %b.1.i = phi i32 [ %b.013.i, %for.body.i ], [ 1, %if.end.i ]
  %c.1.i = phi i32 [ %c.014.i, %for.body.i ], [ %0, %if.end.i ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 2
  %or.cond17.i = select i1 %cmp1.not.i, i1 true, i1 %exitcond.not.i
  br i1 %or.cond17.i, label %foo.exit, label %for.body.i, !llvm.loop !9

foo.exit:                                         ; preds = %cleanup.i
  ret i32 0
}

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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
