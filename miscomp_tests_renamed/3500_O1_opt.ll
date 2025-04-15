; 180331593382765345388099305654239465317
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/180331593382765345388099305654239465317_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/180331593382765345388099305654239465317.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g = internal unnamed_addr global i16 0, align 2
@p = internal unnamed_addr global i16 0, align 2
@e = dso_local local_unnamed_addr global i8 0, align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local signext range(i8 0, 2) i8 @frob(i16 noundef zeroext %a, i16 noundef zeroext %b) local_unnamed_addr #0 {
entry:
  store i16 %a, ptr @g, align 2, !tbaa !5
  store i16 %b, ptr @p, align 2, !tbaa !5
  %conv.i.i = zext i16 %a to i32
  %0 = load i8, ptr @e, align 1, !tbaa !9
  %conv1.i.i = zext i8 %0 to i32
  %sub.i.i = add nsw i32 %conv1.i.i, -1
  %cmp.i.i = icmp eq i32 %sub.i.i, %conv.i.i
  %add.i.i = add i16 %a, 1
  %conv4.i.i = select i1 %cmp.i.i, i16 0, i16 %add.i.i
  store i16 %conv4.i.i, ptr @g, align 2, !tbaa !5
  %cmp.i = icmp eq i16 %b, %conv4.i.i
  %..i = zext i1 %cmp.i to i8
  ret i8 %..i
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local zeroext i16 @get_n() local_unnamed_addr #1 {
entry:
  %0 = load i16, ptr @p, align 2, !tbaa !5
  %g.promoted = load i16, ptr @g, align 2, !tbaa !5
  %cmp.i7.not = icmp eq i16 %0, %g.promoted
  br i1 %cmp.i7.not, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %entry
  %1 = load i8, ptr @e, align 1, !tbaa !9
  %conv1.i.i = zext i8 %1 to i32
  %sub.i.i = add nsw i32 %conv1.i.i, -1
  br label %while.body

while.body:                                       ; preds = %while.body, %while.body.lr.ph
  %n.09 = phi i16 [ 0, %while.body.lr.ph ], [ %inc, %while.body ]
  %conv4.i.i68 = phi i16 [ %g.promoted, %while.body.lr.ph ], [ %conv4.i.i, %while.body ]
  %conv.i.i = zext i16 %conv4.i.i68 to i32
  %cmp.i.i = icmp eq i32 %sub.i.i, %conv.i.i
  %add.i.i = add i16 %conv4.i.i68, 1
  %conv4.i.i = select i1 %cmp.i.i, i16 0, i16 %add.i.i
  %inc = add nuw nsw i16 %n.09, 1
  %cmp.i = icmp ne i16 %0, %conv4.i.i
  %cmp = icmp samesign ult i16 %n.09, 4
  %2 = select i1 %cmp.i, i1 %cmp, i1 false
  br i1 %2, label %while.body, label %while.cond.while.end_crit_edge, !llvm.loop !10

while.cond.while.end_crit_edge:                   ; preds = %while.body
  store i16 %conv4.i.i, ptr @g, align 2, !tbaa !5
  br label %while.end

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %entry
  %n.0.lcssa = phi i16 [ %inc, %while.cond.while.end_crit_edge ], [ 0, %entry ]
  ret i16 %n.0.lcssa
}

; Function Attrs: nofree noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  store i8 3, ptr @e, align 1, !tbaa !9
  store i16 0, ptr @g, align 2, !tbaa !5
  store i16 2, ptr @p, align 2, !tbaa !5
  store i16 2, ptr @g, align 2, !tbaa !5
  tail call void @exit(i32 noundef 0) #4
  unreachable
}

; Function Attrs: nofree noreturn
declare void @exit(i32 noundef) local_unnamed_addr #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }

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
!9 = !{!7, !7, i64 0}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
