; 173548118562142936620701267660019974509
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/173548118562142936620701267660019974509.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/173548118562142936620701267660019974509.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @fn1(i32 noundef %p1) local_unnamed_addr #0 {
entry:
  %0 = load i32, ptr @a, align 4, !tbaa !5
  %add = add nsw i32 %0, %p1
  ret i32 %add
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext i8 @fn2(i8 noundef zeroext %p1, i32 noundef %p2) local_unnamed_addr #1 {
entry:
  %cmp = icmp sgt i32 %p2, 1
  %conv = zext i8 %p1 to i32
  %shr = select i1 %cmp, i32 0, i32 %p2
  %cond = lshr i32 %conv, %shr
  %conv2 = trunc nuw i32 %cond to i8
  ret i8 %conv2
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  %p.promoted.i = load i32, ptr @p, align 4, !tbaa !5
  %cmp60.i = icmp slt i32 %p.promoted.i, 31
  br i1 %cmp60.i, label %for.body.lr.ph.i, label %fn3.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %c.promoted.i = load i8, ptr @c, align 1
  %0 = load i32, ptr @a, align 4, !tbaa !5
  store i8 0, ptr @c, align 1, !tbaa !9
  %1 = load i32, ptr @i, align 4
  %2 = trunc i32 %1 to i8
  %conv41.i = or i8 %2, 7
  %3 = load i32, ptr @b, align 4
  %cmp46.i = icmp eq i32 %3, 0
  %conv42.i = zext i8 %conv41.i to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc53.i, %for.body.lr.ph.i
  %x.062.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %conv42.i, %for.inc53.i ]
  %inc545961.i = phi i32 [ %p.promoted.i, %for.body.lr.ph.i ], [ %inc54.i, %for.inc53.i ]
  %4 = phi i8 [ %c.promoted.i, %for.body.lr.ph.i ], [ 0, %for.inc53.i ]
  %conv.i = sext i8 %4 to i32
  %tobool.i = icmp ne i8 %4, 0
  %land.ext.i = zext i1 %tobool.i to i32
  %cmp3.i = icmp eq i32 %land.ext.i, %conv.i
  %conv4.i = zext i1 %cmp3.i to i32
  %or.i = or i32 %conv4.i, %conv.i
  %add.i.i = add nsw i32 %or.i, %0
  %cmp.i.i = icmp samesign ugt i32 %x.062.i, 1
  %conv.i.i = and i32 %add.i.i, 255
  %shr.i.i = select i1 %cmp.i.i, i32 0, i32 %x.062.i
  %cond.i.i = lshr i32 %conv.i.i, %shr.i.i
  %tobool36.not.i = icmp eq i32 %cond.i.i, 0
  br i1 %tobool36.not.i, label %if.then.i, label %for.end.split.i

for.end.split.i:                                  ; preds = %for.body.i
  store i8 0, ptr @q, align 1, !tbaa !9
  br i1 %cmp46.i, label %for.inc53.i, label %for.end.split.split.i, !llvm.loop !10

for.end.split.split.i:                            ; preds = %for.end.split.i
  %cmp11.i.le12 = icmp eq i32 %p.promoted.i, %cond.i.i
  %conv12.i.le7 = zext i1 %cmp11.i.le12 to i32
  store i32 %add.i.i, ptr @s, align 4, !tbaa !5
  store i32 %cond.i.i, ptr @t, align 4, !tbaa !5
  store i16 0, ptr @d, align 2, !tbaa !12
  store i32 %cond.i.i, ptr @m, align 4, !tbaa !5
  store i32 %conv12.i.le7, ptr @o, align 4, !tbaa !5
  store i8 %conv41.i, ptr @e, align 1, !tbaa !9
  store i8 0, ptr @y, align 1, !tbaa !9
  br label %for.cond35.i

for.cond35.i:                                     ; preds = %for.cond35.i, %for.end.split.split.i
  br label %for.cond35.i

if.then.i:                                        ; preds = %for.body.i
  %cmp11.i.le = icmp eq i32 %inc545961.i, %cond.i.i
  %conv12.i.le9 = zext i1 %cmp11.i.le to i32
  store i32 %add.i.i, ptr @s, align 4, !tbaa !5
  store i32 %cond.i.i, ptr @t, align 4, !tbaa !5
  store i16 0, ptr @d, align 2, !tbaa !12
  store i32 %cond.i.i, ptr @m, align 4, !tbaa !5
  store i32 %conv12.i.le9, ptr @o, align 4, !tbaa !5
  store i8 0, ptr @e, align 1, !tbaa !9
  store i8 0, ptr @y, align 1, !tbaa !9
  tail call void @abort() #4
  unreachable

for.inc53.i:                                      ; preds = %for.end.split.i
  %inc54.i = add i32 %inc545961.i, 1
  store i32 %inc54.i, ptr @p, align 4, !tbaa !5
  %exitcond.not.i = icmp eq i32 %inc54.i, 31
  br i1 %exitcond.not.i, label %for.cond.for.end55_crit_edge.i, label %for.body.i, !llvm.loop !14

for.cond.for.end55_crit_edge.i:                   ; preds = %for.inc53.i
  %cmp11.i.le15 = icmp eq i32 %cond.i.i, 30
  %conv12.i.le = zext i1 %cmp11.i.le15 to i32
  store i32 %add.i.i, ptr @s, align 4, !tbaa !5
  store i32 %cond.i.i, ptr @t, align 4, !tbaa !5
  store i16 0, ptr @d, align 2, !tbaa !12
  store i32 %cond.i.i, ptr @m, align 4, !tbaa !5
  store i32 %conv12.i.le, ptr @o, align 4, !tbaa !5
  store i8 %conv41.i, ptr @e, align 1, !tbaa !9
  store i8 0, ptr @y, align 1, !tbaa !9
  br label %fn3.exit

fn3.exit:                                         ; preds = %entry, %for.cond.for.end55_crit_edge.i
  ret i32 0
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = !{!13, !13, i64 0}
!13 = !{!"short", !7, i64 0}
!14 = distinct !{!14, !15, !11}
!15 = !{!"llvm.loop.mustprogress"}
