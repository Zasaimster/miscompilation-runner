; 157633346433590287452837291822314910363
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/157633346433590287452837291822314910363_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/157633346433590287452837291822314910363.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@i = dso_local local_unnamed_addr global i16 0, align 2
@b = dso_local local_unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Main function executed.\0A\00", align 1
@k = dso_local local_unnamed_addr global i32 0, align 4
@g = dso_local local_unnamed_addr global i32 0, align 4
@j = dso_local local_unnamed_addr global i32 0, align 4
@c = dso_local global i32 0, align 4
@a = dso_local local_unnamed_addr global i8 0, align 1
@d = dso_local local_unnamed_addr global i32 0, align 4
@h = dso_local local_unnamed_addr global i8 0, align 1
@e = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %call = tail call i32 (...) @printHello() #4
  %0 = load i16, ptr @i, align 2, !tbaa !5
  %1 = trunc i32 %call to i16
  %conv1 = xor i16 %0, %1
  store i16 %conv1, ptr @i, align 2, !tbaa !5
  store i32 0, ptr @b, align 4, !tbaa !9
  %call337 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %cmp38 = icmp slt i32 %call337, 1
  br i1 %cmp38, label %for.body.lr.ph, label %for.end23

for.body.lr.ph:                                   ; preds = %entry
  %conv5 = zext i16 %conv1 to i32
  %sext = shl i32 %conv5, 24
  %conv8 = ashr exact i32 %sext, 24
  br label %for.body

for.body:                                         ; preds = %if.end, %for.body.lr.ph
  %2 = load i32, ptr @k, align 4, !tbaa !9
  store i32 %2, ptr @g, align 4, !tbaa !9
  %3 = load i32, ptr @j, align 4, !tbaa !9
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %for.body
  %4 = load volatile i32, ptr @c, align 4, !tbaa !9
  %tobool6 = icmp ne i32 %4, 0
  %5 = zext i1 %tobool6 to i32
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %for.body
  %lor.ext = phi i32 [ 1, %for.body ], [ %5, %lor.rhs ]
  store i32 %lor.ext, ptr @j, align 4, !tbaa !9
  %6 = load i8, ptr @a, align 1, !tbaa !11
  %conv7 = sext i8 %6 to i32
  %cmp9.not = icmp eq i32 %conv8, %conv7
  br i1 %cmp9.not, label %if.else, label %for.cond11.preheader

for.cond11.preheader:                             ; preds = %lor.end
  %d.promoted = load i32, ptr @d, align 4, !tbaa !9
  %cmp1232 = icmp slt i32 %d.promoted, 1
  br i1 %cmp1232, label %for.cond11.if.end.loopexit30_crit_edge, label %if.end

if.else:                                          ; preds = %lor.end
  store i8 1, ptr @h, align 1, !tbaa !11
  %e.promoted = load i32, ptr @e, align 4, !tbaa !9
  %tobool16.not35 = icmp eq i32 %e.promoted, 0
  br i1 %tobool16.not35, label %if.end, label %for.cond15.if.end.loopexit_crit_edge

for.cond15.if.end.loopexit_crit_edge:             ; preds = %if.else
  store i32 0, ptr @e, align 4, !tbaa !9
  br label %if.end

for.cond11.if.end.loopexit30_crit_edge:           ; preds = %for.cond11.preheader
  store i32 1, ptr @d, align 4, !tbaa !9
  br label %if.end

if.end:                                           ; preds = %for.cond11.if.end.loopexit30_crit_edge, %for.cond15.if.end.loopexit_crit_edge, %if.else, %for.cond11.preheader
  %7 = load i32, ptr @b, align 4, !tbaa !9
  %inc22 = add nsw i32 %7, 1
  store i32 %inc22, ptr @b, align 4, !tbaa !9
  %call3 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %cmp = icmp slt i32 %call3, 1
  br i1 %cmp, label %for.body, label %for.end23, !llvm.loop !12

for.end23:                                        ; preds = %if.end, %entry
  %8 = load i8, ptr @h, align 1, !tbaa !11
  %cmp25.not = icmp eq i8 %8, 0
  br i1 %cmp25.not, label %if.end28, label %if.then27

if.then27:                                        ; preds = %for.end23
  tail call void @abort() #5
  unreachable

if.end28:                                         ; preds = %for.end23
  ret i32 0
}

declare i32 @printHello(...) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"short", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !7, i64 0}
!11 = !{!7, !7, i64 0}
!12 = distinct !{!12, !13, !14}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!"llvm.loop.unroll.disable"}
