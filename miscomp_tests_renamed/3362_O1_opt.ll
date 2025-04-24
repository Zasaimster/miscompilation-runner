; 15874462016895533421530275372460089113
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/15874462016895533421530275372460089113_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/15874462016895533421530275372460089113.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local global i32 0, align 4
@b = dso_local local_unnamed_addr global ptr @a, align 8
@e = dso_local global i32 0, align 4
@f = dso_local local_unnamed_addr global ptr @e, align 8
@d = dso_local global i32 0, align 4
@h = dso_local local_unnamed_addr global ptr @d, align 8
@k = dso_local local_unnamed_addr global [1 x i32] [i32 1], align 4
@c = dso_local local_unnamed_addr global i32 0, align 4
@g = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @foo(i32 noundef %p) local_unnamed_addr #0 {
entry:
  %conv = sext i32 %p to i64
  %0 = load ptr, ptr @b, align 8, !tbaa !5
  %1 = load ptr, ptr @h, align 8, !tbaa !5
  %2 = load ptr, ptr @f, align 8, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc6, %entry
  %c.promoted = load i32, ptr @c, align 4, !tbaa !10
  %tobool.not8 = icmp eq i32 %c.promoted, 0
  br i1 %tobool.not8, label %for.end, label %for.cond1.for.end_crit_edge

for.cond1.for.end_crit_edge:                      ; preds = %for.cond
  store i32 0, ptr @c, align 4, !tbaa !10
  br label %for.end

for.end:                                          ; preds = %for.cond1.for.end_crit_edge, %for.cond
  %3 = load i32, ptr @a, align 4, !tbaa !10
  %conv2 = sext i32 %3 to i64
  %xor = xor i64 %conv2, 8589934591
  %4 = load i32, ptr %0, align 4, !tbaa !10
  %conv3 = sext i32 %4 to i64
  %and = and i64 %xor, %conv3
  %cmp = icmp slt i64 %and, %conv
  %conv4 = zext i1 %cmp to i32
  store i32 %conv4, ptr %1, align 4, !tbaa !10
  store i32 %conv4, ptr %2, align 4, !tbaa !10
  %5 = load i32, ptr @g, align 4, !tbaa !10
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [1 x i32], ptr @k, i64 0, i64 %idxprom
  %6 = load i32, ptr %arrayidx, align 4, !tbaa !10
  %tobool5.not = icmp eq i32 %6, 0
  br i1 %tobool5.not, label %for.inc6, label %if.then

if.then:                                          ; preds = %for.end
  ret i32 0

for.inc6:                                         ; preds = %for.end
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr @g, align 4, !tbaa !10
  br label %for.cond, !llvm.loop !12
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #1 {
entry:
  %0 = load ptr, ptr @b, align 8, !tbaa !5
  %1 = load ptr, ptr @h, align 8, !tbaa !5
  %2 = load ptr, ptr @f, align 8, !tbaa !5
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.inc6.i, %entry
  %c.promoted.i = load i32, ptr @c, align 4, !tbaa !10
  %tobool.not8.i = icmp eq i32 %c.promoted.i, 0
  br i1 %tobool.not8.i, label %for.end.i, label %for.cond1.for.end_crit_edge.i

for.cond1.for.end_crit_edge.i:                    ; preds = %for.cond.i
  store i32 0, ptr @c, align 4, !tbaa !10
  br label %for.end.i

for.end.i:                                        ; preds = %for.cond1.for.end_crit_edge.i, %for.cond.i
  %3 = load i32, ptr @a, align 4, !tbaa !10
  %conv2.i = sext i32 %3 to i64
  %xor.i = xor i64 %conv2.i, 8589934591
  %4 = load i32, ptr %0, align 4, !tbaa !10
  %conv3.i = sext i32 %4 to i64
  %and.i = and i64 %xor.i, %conv3.i
  %cmp.i = icmp slt i64 %and.i, 1
  %conv4.i = zext i1 %cmp.i to i32
  store i32 %conv4.i, ptr %1, align 4, !tbaa !10
  store i32 %conv4.i, ptr %2, align 4, !tbaa !10
  %5 = load i32, ptr @g, align 4, !tbaa !10
  %idxprom.i = sext i32 %5 to i64
  %arrayidx.i = getelementptr inbounds [1 x i32], ptr @k, i64 0, i64 %idxprom.i
  %6 = load i32, ptr %arrayidx.i, align 4, !tbaa !10
  %tobool5.not.i = icmp eq i32 %6, 0
  br i1 %tobool5.not.i, label %for.inc6.i, label %foo.exit

for.inc6.i:                                       ; preds = %for.end.i
  %inc.i = add nsw i32 %5, 1
  store i32 %inc.i, ptr @g, align 4, !tbaa !10
  br label %for.cond.i, !llvm.loop !12

foo.exit:                                         ; preds = %for.end.i
  %7 = load i32, ptr @d, align 4, !tbaa !10
  %cmp.not = icmp eq i32 %7, 1
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %foo.exit
  tail call void @abort() #3
  unreachable

if.end:                                           ; preds = %foo.exit
  ret i32 0
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #2

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!6 = !{!"p1 int", !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !8, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.unroll.disable"}
