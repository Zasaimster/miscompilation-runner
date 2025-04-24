; 14245006317784743148798448358813033828
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/14245006317784743148798448358813033828_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/14245006317784743148798448358813033828.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { i32 }

@c = dso_local local_unnamed_addr global i32 1, align 4
@d = dso_local local_unnamed_addr global i32 0, align 4
@e = dso_local local_unnamed_addr global i32 0, align 4
@f = dso_local local_unnamed_addr global i32 0, align 4
@b = dso_local local_unnamed_addr global i32 0, align 4
@s = dso_local global %struct.S zeroinitializer, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local signext i8 @foo(i8 noundef signext %i, i32 noundef %j) local_unnamed_addr #0 {
entry:
  %conv = zext i8 %i to i32
  %cmp = icmp slt i8 %i, 0
  %shl = select i1 %cmp, i32 0, i32 %j
  %cond = shl i32 %conv, %shl
  %conv4 = trunc i32 %cond to i8
  ret i8 %conv4
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #1 {
entry:
  %0 = load i32, ptr @d, align 4, !tbaa !5
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %L, label %if.end

if.end:                                           ; preds = %entry
  %1 = load i32, ptr @e, align 4, !tbaa !5
  %tobool1 = icmp ne i32 %1, 0
  %2 = load i32, ptr @f, align 4
  %tobool2 = icmp ne i32 %2, 0
  %3 = select i1 %tobool1, i1 true, i1 %tobool2
  %conv = zext i1 %3 to i8
  br label %L

L:                                                ; preds = %if.end, %entry
  %k.0 = phi i8 [ %conv, %if.end ], [ -83, %entry ]
  %b.promoted = load i32, ptr @b, align 4, !tbaa !5
  %cmp19 = icmp slt i32 %b.promoted, 1
  br i1 %cmp19, label %for.body, label %for.end

for.body:                                         ; preds = %land.end, %L
  %k.121 = phi i8 [ %k.2, %land.end ], [ %k.0, %L ]
  %inc1820 = phi i32 [ %inc, %land.end ], [ %b.promoted, %L ]
  %4 = load volatile i32, ptr @s, align 4, !tbaa !9
  %cmp.i = icmp slt i8 %k.121, 0
  %shl.i = select i1 %cmp.i, i8 0, i8 2
  %cond.i = shl i8 %k.121, %shl.i
  %cmp6 = icmp slt i8 %k.121, %cond.i
  br i1 %cmp6, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.body
  store i32 0, ptr @c, align 4, !tbaa !5
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.body
  %k.2 = phi i8 [ 0, %land.rhs ], [ %k.121, %for.body ]
  %inc = add i32 %inc1820, 1
  %exitcond.not = icmp eq i32 %inc1820, 0
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %for.body, !llvm.loop !11

for.cond.for.end_crit_edge:                       ; preds = %land.end
  store i32 1, ptr @b, align 4, !tbaa !5
  br label %for.end

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %L
  %5 = load i32, ptr @c, align 4, !tbaa !5
  %cmp13.not = icmp eq i32 %5, 1
  br i1 %cmp13.not, label %if.end16, label %if.then15

if.then15:                                        ; preds = %for.end
  tail call void @abort() #3
  unreachable

if.end16:                                         ; preds = %for.end
  ret i32 0
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!9 = !{!10, !6, i64 0}
!10 = !{!"S", !6, i64 0}
!11 = distinct !{!11, !12, !13}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.unroll.disable"}
