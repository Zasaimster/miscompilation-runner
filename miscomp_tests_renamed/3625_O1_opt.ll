; 163345266266589708291883442300293207039
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/163345266266589708291883442300293207039_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/163345266266589708291883442300293207039.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@b = dso_local local_unnamed_addr global i32 0, align 4
@i = dso_local local_unnamed_addr global i16 0, align 2
@k = dso_local local_unnamed_addr global i32 0, align 4
@g = dso_local local_unnamed_addr global i32 0, align 4
@j = dso_local local_unnamed_addr global i32 0, align 4
@c = dso_local global i32 0, align 4
@a = dso_local local_unnamed_addr global i8 0, align 1
@d = dso_local local_unnamed_addr global i32 0, align 4
@h = dso_local local_unnamed_addr global i8 0, align 1
@e = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %0 = load i32, ptr @b, align 4, !tbaa !5
  %inc = add nsw i32 %0, 1
  store i32 %inc, ptr @b, align 4, !tbaa !5
  %1 = load i16, ptr @i, align 2, !tbaa !9
  %2 = trunc i32 %0 to i16
  %conv1 = xor i16 %1, %2
  store i16 %conv1, ptr @i, align 2, !tbaa !9
  %conv4 = zext i16 %conv1 to i32
  %3 = load i32, ptr @k, align 4, !tbaa !5
  %4 = load i8, ptr @a, align 1, !tbaa !11
  %conv6 = sext i8 %4 to i32
  %sext = shl i32 %conv4, 24
  %conv7 = ashr exact i32 %sext, 24
  %cmp8.not = icmp eq i32 %conv7, %conv6
  %e.promoted38 = load i32, ptr @e, align 4
  %d.promoted42 = load i32, ptr @d, align 4
  %j.promoted = load i32, ptr @j, align 4, !tbaa !5
  %tobool.not = icmp eq i32 %j.promoted, 0
  br i1 %tobool.not, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %entry
  %5 = load volatile i32, ptr @c, align 4, !tbaa !5
  %tobool5 = icmp ne i32 %5, 0
  %6 = zext i1 %tobool5 to i32
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %lor.ext = phi i32 [ 1, %entry ], [ %6, %lor.rhs ]
  br i1 %cmp8.not, label %if.else, label %for.cond10.preheader

for.cond10.preheader:                             ; preds = %lor.end
  %cmp1132 = icmp slt i32 %d.promoted42, 1
  br i1 %cmp1132, label %for.cond10.if.end.loopexit30_crit_edge, label %for.end23

if.else:                                          ; preds = %lor.end
  store i8 1, ptr @h, align 1, !tbaa !11
  %tobool16.not35 = icmp eq i32 %e.promoted38, 0
  br i1 %tobool16.not35, label %for.end23, label %for.cond15.if.end.loopexit_crit_edge

for.cond15.if.end.loopexit_crit_edge:             ; preds = %if.else
  store i32 0, ptr @e, align 4, !tbaa !5
  br label %for.end23

for.cond10.if.end.loopexit30_crit_edge:           ; preds = %for.cond10.preheader
  store i32 1, ptr @d, align 4, !tbaa !5
  br label %for.end23

for.end23:                                        ; preds = %for.cond10.if.end.loopexit30_crit_edge, %for.cond15.if.end.loopexit_crit_edge, %if.else, %for.cond10.preheader
  store i32 1, ptr @b, align 4, !tbaa !5
  store i32 %3, ptr @g, align 4, !tbaa !5
  store i32 %lor.ext, ptr @j, align 4, !tbaa !5
  %7 = load i8, ptr @h, align 1, !tbaa !11
  %cmp25.not = icmp eq i8 %7, 0
  br i1 %cmp25.not, label %if.end28, label %if.then27

if.then27:                                        ; preds = %for.end23
  tail call void @abort() #2
  unreachable

if.end28:                                         ; preds = %for.end23
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
!10 = !{!"short", !7, i64 0}
!11 = !{!7, !7, i64 0}
