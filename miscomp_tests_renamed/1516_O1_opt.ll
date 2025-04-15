; 193454959191454080174330505242336602396
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/193454959191454080174330505242336602396_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/193454959191454080174330505242336602396.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@b = dso_local global i32 0, align 4
@c = dso_local local_unnamed_addr global ptr @b, align 8
@f = dso_local local_unnamed_addr global i32 6, align 4
@a = dso_local local_unnamed_addr global i32 0, align 4
@e = dso_local local_unnamed_addr global i32 0, align 4
@g = dso_local local_unnamed_addr global i32 0, align 4
@h = dso_local local_unnamed_addr global i32 0, align 4
@d = dso_local local_unnamed_addr global i16 0, align 2

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %0 = load i32, ptr @f, align 4, !tbaa !5
  %conv = sext i32 %0 to i64
  %g.promoted.i = load i32, ptr @g, align 4, !tbaa !5
  %cmp9.i = icmp slt i32 %g.promoted.i, 1
  br i1 %cmp9.i, label %for.body.lr.ph.i, label %foo.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %1 = load ptr, ptr @c, align 8, !tbaa !9
  %2 = load i32, ptr @a, align 4, !tbaa !5
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %for.body.lr.ph.i
  %inc810.i = phi i32 [ %g.promoted.i, %for.body.lr.ph.i ], [ %inc.i, %for.body.i ]
  %3 = load i32, ptr %1, align 4, !tbaa !5
  store i32 %3, ptr @h, align 4, !tbaa !5
  %sext.i = shl i32 %3, 16
  %conv1.i = ashr exact i32 %sext.i, 16
  %cmp2.i = icmp eq i32 %conv1.i, %2
  %conv4.i = zext i1 %cmp2.i to i64
  %cmp5.i = icmp ugt i64 %conv, %conv4.i
  %conv6.i = zext i1 %cmp5.i to i32
  store i32 %conv6.i, ptr @e, align 4, !tbaa !5
  %inc.i = add i32 %inc810.i, 1
  store i32 %inc.i, ptr @g, align 4, !tbaa !5
  %exitcond.not.i = icmp eq i32 %inc810.i, 0
  br i1 %exitcond.not.i, label %for.cond.for.end_crit_edge.i, label %for.body.i, !llvm.loop !12

for.cond.for.end_crit_edge.i:                     ; preds = %for.body.i
  %conv.i = trunc i32 %3 to i16
  store i16 %conv.i, ptr @d, align 2, !tbaa !15
  br label %foo.exit

foo.exit:                                         ; preds = %for.cond.for.end_crit_edge.i, %entry
  %4 = load i32, ptr @e, align 4, !tbaa !5
  %cmp.not = icmp eq i32 %4, 1
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %foo.exit
  tail call void @abort() #2
  unreachable

if.end:                                           ; preds = %foo.exit
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
!9 = !{!10, !10, i64 0}
!10 = !{!"p1 int", !11, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = distinct !{!12, !13, !14}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!"llvm.loop.unroll.disable"}
!15 = !{!16, !16, i64 0}
!16 = !{!"short", !7, i64 0}
