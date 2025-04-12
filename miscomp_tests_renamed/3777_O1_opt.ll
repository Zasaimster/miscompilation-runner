; 137161054433037126432944821718332878370
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/137161054433037126432944821718332878370_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/137161054433037126432944821718332878370.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"Hello, World!\0A\00", align 1
@a = dso_local local_unnamed_addr global i32 0, align 4
@b = dso_local local_unnamed_addr global i32 0, align 4
@m = dso_local local_unnamed_addr global i32 0, align 4
@n = dso_local local_unnamed_addr global i32 0, align 4
@o = dso_local local_unnamed_addr global i32 0, align 4
@p = dso_local local_unnamed_addr global i32 0, align 4
@s = dso_local local_unnamed_addr global i32 0, align 4
@u = dso_local local_unnamed_addr global i32 0, align 4
@i = dso_local local_unnamed_addr global i32 0, align 4
@c = dso_local local_unnamed_addr global i8 0, align 1
@q = dso_local local_unnamed_addr global i8 0, align 1
@y = dso_local local_unnamed_addr global i8 0, align 1
@d = dso_local local_unnamed_addr global i16 0, align 2
@e = dso_local local_unnamed_addr global i8 0, align 1
@t = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @fn1(i32 noundef %p1) local_unnamed_addr #0 {
entry:
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %tobool.not = icmp eq i32 %call, 0
  %0 = load i32, ptr @a, align 4
  %add = select i1 %tobool.not, i32 %0, i32 0
  %cond = add nsw i32 %add, %p1
  ret i32 %cond
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext i8 @fn2(i8 noundef zeroext %p1, i32 noundef %p2) local_unnamed_addr #2 {
entry:
  %cmp = icmp sgt i32 %p2, 1
  %conv = zext i8 %p1 to i32
  %shr = select i1 %cmp, i32 0, i32 %p2
  %cond = lshr i32 %conv, %shr
  %conv2 = trunc nuw i32 %cond to i8
  ret i8 %conv2
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %0 = load i32, ptr @p, align 4, !tbaa !5
  %cmp60.i = icmp slt i32 %0, 31
  br i1 %cmp60.i, label %for.body.i, label %fn3.exit

for.body.i:                                       ; preds = %for.inc53.i, %entry
  %x.061.i = phi i32 [ %conv42.i, %for.inc53.i ], [ 0, %entry ]
  %1 = load i8, ptr @c, align 1, !tbaa !9
  %conv.i = sext i8 %1 to i32
  %tobool.i = icmp ne i8 %1, 0
  %land.ext.i = zext i1 %tobool.i to i32
  %cmp3.i = icmp eq i32 %land.ext.i, %conv.i
  %conv4.i = zext i1 %cmp3.i to i32
  %or.i = or i32 %conv4.i, %conv.i
  %call.i.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  %2 = load i32, ptr @a, align 4
  %add.i.i = select i1 %tobool.not.i.i, i32 %2, i32 0
  %cond.i.i = add nsw i32 %or.i, %add.i.i
  store i32 %cond.i.i, ptr @s, align 4, !tbaa !5
  %cmp.i.i = icmp samesign ugt i32 %x.061.i, 1
  %conv.i.i = and i32 %cond.i.i, 255
  %shr.i.i = select i1 %cmp.i.i, i32 0, i32 %x.061.i
  %cond.i58.i = lshr i32 %conv.i.i, %shr.i.i
  %conv2.i.i = trunc nuw nsw i32 %cond.i58.i to i16
  store i32 %cond.i58.i, ptr @t, align 4, !tbaa !5
  store i16 %conv2.i.i, ptr @d, align 2, !tbaa !10
  store i32 %cond.i58.i, ptr @m, align 4, !tbaa !5
  %3 = load i32, ptr @p, align 4, !tbaa !5
  %cmp11.i = icmp eq i32 %3, %cond.i58.i
  %conv12.i = zext i1 %cmp11.i to i32
  store i32 %conv12.i, ptr @o, align 4, !tbaa !5
  store i8 0, ptr @c, align 1, !tbaa !9
  store i8 0, ptr @e, align 1, !tbaa !9
  store i8 0, ptr @y, align 1, !tbaa !9
  store i16 0, ptr @d, align 2, !tbaa !10
  %tobool36.not.i = icmp eq i32 %cond.i58.i, 0
  %4 = load i32, ptr @i, align 4
  %5 = trunc i32 %4 to i8
  %conv41.i = or i8 %5, 7
  br i1 %tobool36.not.i, label %if.then.i, label %for.end.split.i

for.end.split.i:                                  ; preds = %for.body.i
  %6 = load i32, ptr @b, align 4
  %cmp46.i = icmp eq i32 %6, 0
  store i8 %conv41.i, ptr @e, align 1, !tbaa !9
  store i8 0, ptr @q, align 1, !tbaa !9
  br i1 %cmp46.i, label %for.inc53.i, label %for.cond35.i, !llvm.loop !12

for.cond35.i:                                     ; preds = %for.cond35.i, %for.end.split.i
  br label %for.cond35.i

if.then.i:                                        ; preds = %for.body.i
  tail call void @abort() #4
  unreachable

for.inc53.i:                                      ; preds = %for.end.split.i
  %conv42.i = zext i8 %conv41.i to i32
  %inc54.i = add nsw i32 %3, 1
  store i32 %inc54.i, ptr @p, align 4, !tbaa !5
  %cmp.i = icmp slt i32 %3, 30
  br i1 %cmp.i, label %for.body.i, label %fn3.exit, !llvm.loop !14

fn3.exit:                                         ; preds = %for.inc53.i, %entry
  ret i32 0
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #3

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }

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
!10 = !{!11, !11, i64 0}
!11 = !{!"short", !7, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = distinct !{!14, !15, !13}
!15 = !{!"llvm.loop.mustprogress"}
