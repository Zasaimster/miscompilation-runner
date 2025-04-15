; 115159993053341839491407464503534146181
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/115159993053341839491407464503534146181.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/115159993053341839491407464503534146181.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@c = dso_local local_unnamed_addr global i32 0, align 4
@b = dso_local local_unnamed_addr global i32 0, align 4
@d = dso_local local_unnamed_addr global i16 0, align 2
@a = dso_local local_unnamed_addr global i8 0, align 1

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %c.promoted = load i32, ptr @c, align 4, !tbaa !5
  %cmp21 = icmp slt i32 %c.promoted, 2
  br i1 %cmp21, label %for.body.lr.ph, label %cleanup15

for.body.lr.ph:                                   ; preds = %entry
  %0 = load i32, ptr @b, align 4
  %tobool3 = icmp ne i32 %0, 0
  %1 = load i16, ptr @d, align 2
  %tobool4 = icmp ne i16 %1, 0
  %2 = select i1 %tobool3, i1 %tobool4, i1 false
  %land.ext = zext i1 %2 to i32
  %not5 = xor i32 %land.ext, -1
  %conv6 = trunc nsw i32 %not5 to i8
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %timeout.024 = phi i32 [ 0, %for.body.lr.ph ], [ %timeout.2, %for.inc ]
  %e.023 = phi i32 [ 0, %for.body.lr.ph ], [ %e.3, %for.inc ]
  %inc142022 = phi i32 [ %c.promoted, %for.body.lr.ph ], [ %inc14, %for.inc ]
  %tobool.not = icmp ugt i32 %e.023, -8
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  store i8 %conv6, ptr @a, align 1, !tbaa !9
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %e.1 = phi i32 [ %not5, %if.then ], [ %e.023, %for.body ]
  %umax = tail call i32 @llvm.umax.i32(i32 %e.1, i32 94)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %e.2 = phi i32 [ %e.1, %if.end ], [ %inc, %while.body ]
  %timeout.1 = phi i32 [ %timeout.024, %if.end ], [ %inc9, %while.body ]
  %exitcond.not = icmp eq i32 %e.2, %umax
  br i1 %exitcond.not, label %cleanup, label %while.body

while.body:                                       ; preds = %while.cond
  %inc = add i32 %e.2, 1
  %inc9 = add i32 %timeout.1, 1
  %cmp10 = icmp ugt i32 %inc9, 100
  br i1 %cmp10, label %cleanup, label %while.cond, !llvm.loop !10

cleanup:                                          ; preds = %while.cond, %while.body
  %e.3 = phi i32 [ %inc, %while.body ], [ %e.2, %while.cond ]
  %timeout.2 = phi i32 [ %inc9, %while.body ], [ %timeout.1, %while.cond ]
  %cleanup.dest.slot.0 = phi i32 [ 7, %while.body ], [ 0, %while.cond ]
  switch i32 %cleanup.dest.slot.0, label %cleanup15 [
    i32 0, label %for.inc
    i32 7, label %die
  ]

for.inc:                                          ; preds = %cleanup
  %inc14 = add i32 %inc142022, 1
  store i32 %inc14, ptr @c, align 4, !tbaa !5
  %exitcond25.not = icmp eq i32 %inc14, 2
  br i1 %exitcond25.not, label %cleanup15, label %for.body, !llvm.loop !13

die:                                              ; preds = %cleanup
  tail call void @abort() #3
  unreachable

cleanup15:                                        ; preds = %cleanup, %for.inc, %entry
  ret i32 0
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #2

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!9 = !{!7, !7, i64 0}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !11, !12}
