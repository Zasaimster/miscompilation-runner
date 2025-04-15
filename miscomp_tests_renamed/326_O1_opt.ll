; 155525804760561651638412467458129240511
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/155525804760561651638412467458129240511_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/155525804760561651638412467458129240511.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree nounwind uwtable
define dso_local void @foo(ptr noundef readonly captures(none) %x, i32 noundef %y) local_unnamed_addr #0 {
entry:
  %cmp9 = icmp sgt i32 %y, 0
  br i1 %cmp9, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %entry
  %wide.trip.count = zext nneg i32 %y to i64
  br label %for.body

for.body:                                         ; preds = %cleanup, %for.body.preheader
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %cleanup ]
  %c.011 = phi i32 [ undef, %for.body.preheader ], [ %c.1, %cleanup ]
  %b.010 = phi i32 [ 0, %for.body.preheader ], [ %b.1, %cleanup ]
  %arrayidx = getelementptr inbounds nuw i32, ptr %x, i64 %indvars.iv
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %cmp1.not = icmp eq i32 %0, 0
  br i1 %cmp1.not, label %cleanup, label %if.end

if.end:                                           ; preds = %for.body
  %tobool.not = icmp eq i32 %b.010, 0
  %cmp2.not = icmp sgt i32 %0, %c.011
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp2.not
  br i1 %or.cond, label %cleanup, label %if.then3

if.then3:                                         ; preds = %if.end
  tail call void @abort() #3
  unreachable

cleanup:                                          ; preds = %if.end, %for.body
  %b.1 = phi i32 [ %b.010, %for.body ], [ 1, %if.end ]
  %c.1 = phi i32 [ %c.011, %for.body ], [ %0, %if.end ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  %or.cond14 = select i1 %cmp1.not, i1 true, i1 %exitcond.not
  br i1 %or.cond14, label %for.end, label %for.body, !llvm.loop !9

for.end:                                          ; preds = %cleanup, %entry
  ret void
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  ret i32 0
}

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
