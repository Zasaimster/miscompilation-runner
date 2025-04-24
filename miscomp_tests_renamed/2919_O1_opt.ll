; 151220254016595270581406337408098428071
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/151220254016595270581406337408098428071_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/151220254016595270581406337408098428071.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@i = dso_local local_unnamed_addr global i16 0, align 2
@b = dso_local local_unnamed_addr global i32 0, align 4
@k = dso_local local_unnamed_addr global i32 0, align 4
@g = dso_local local_unnamed_addr global i32 0, align 4
@j = dso_local local_unnamed_addr global i32 0, align 4
@c = dso_local global i32 0, align 4
@a = dso_local local_unnamed_addr global i8 0, align 1
@d = dso_local local_unnamed_addr global i32 0, align 4
@h = dso_local local_unnamed_addr global i8 0, align 1
@e = dso_local local_unnamed_addr global i32 0, align 4
@str = private unnamed_addr constant [18 x i8] c"Hello, optimizer!\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %0 = load i16, ptr @i, align 2, !tbaa !5
  %1 = xor i16 %0, 1
  store i16 %1, ptr @i, align 2, !tbaa !5
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %conv4 = zext i16 %1 to i32
  %2 = load i32, ptr @k, align 4, !tbaa !9
  %3 = load i8, ptr @a, align 1, !tbaa !11
  %conv6 = sext i8 %3 to i32
  %sext = shl i32 %conv4, 24
  %conv7 = ashr exact i32 %sext, 24
  %cmp8.not = icmp eq i32 %conv7, %conv6
  %e.promoted37 = load i32, ptr @e, align 4
  %d.promoted41 = load i32, ptr @d, align 4
  %j.promoted = load i32, ptr @j, align 4, !tbaa !9
  %tobool.not = icmp eq i32 %j.promoted, 0
  br i1 %tobool.not, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %entry
  %4 = load volatile i32, ptr @c, align 4, !tbaa !9
  %tobool5 = icmp ne i32 %4, 0
  %5 = zext i1 %tobool5 to i32
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %lor.ext = phi i32 [ 1, %entry ], [ %5, %lor.rhs ]
  br i1 %cmp8.not, label %if.else, label %for.cond10.preheader

for.cond10.preheader:                             ; preds = %lor.end
  %cmp1131 = icmp slt i32 %d.promoted41, 1
  br i1 %cmp1131, label %for.cond10.if.end.loopexit29_crit_edge, label %for.end22

if.else:                                          ; preds = %lor.end
  store i8 1, ptr @h, align 1, !tbaa !11
  %tobool15.not34 = icmp eq i32 %e.promoted37, 0
  br i1 %tobool15.not34, label %for.end22, label %for.cond14.if.end.loopexit_crit_edge

for.cond14.if.end.loopexit_crit_edge:             ; preds = %if.else
  store i32 0, ptr @e, align 4, !tbaa !9
  br label %for.end22

for.cond10.if.end.loopexit29_crit_edge:           ; preds = %for.cond10.preheader
  store i32 1, ptr @d, align 4, !tbaa !9
  br label %for.end22

for.end22:                                        ; preds = %for.cond10.if.end.loopexit29_crit_edge, %for.cond14.if.end.loopexit_crit_edge, %if.else, %for.cond10.preheader
  store i32 1, ptr @b, align 4, !tbaa !9
  store i32 %2, ptr @g, align 4, !tbaa !9
  store i32 %lor.ext, ptr @j, align 4, !tbaa !9
  %6 = load i8, ptr @h, align 1, !tbaa !11
  %cmp24.not = icmp eq i8 %6, 0
  br i1 %cmp24.not, label %if.end27, label %if.then26

if.then26:                                        ; preds = %for.end22
  tail call void @abort() #3
  unreachable

if.end27:                                         ; preds = %for.end22
  ret i32 0
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #2

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { noreturn nounwind }

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
