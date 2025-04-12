; 120262971685615646392155273100198331481
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/120262971685615646392155273100198331481_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/120262971685615646392155273100198331481.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local local_unnamed_addr global i32 0, align 4
@w = dso_local local_unnamed_addr global i32 1, align 4
@o = dso_local local_unnamed_addr global i32 0, align 4
@e = dso_local local_unnamed_addr global i32 0, align 4
@b = dso_local local_unnamed_addr global i32 0, align 4
@c = dso_local local_unnamed_addr global i16 0, align 2
@z = dso_local local_unnamed_addr global i32 0, align 4
@u = dso_local local_unnamed_addr global i32 0, align 4
@a = dso_local local_unnamed_addr global i32 0, align 4
@t = dso_local local_unnamed_addr global i16 0, align 2
@f = dso_local local_unnamed_addr global i32 0, align 4
@q = dso_local local_unnamed_addr global i16 0, align 2

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %d.promoted = load i32, ptr @d, align 4, !tbaa !5
  %tobool.not33 = icmp eq i32 %d.promoted, 0
  br i1 %tobool.not33, label %for.end19, label %while.cond.preheader.lr.ph

while.cond.preheader.lr.ph:                       ; preds = %entry
  %o.promoted28 = load i32, ptr @o, align 4
  %0 = load i32, ptr @e, align 4
  %tobool3.not = icmp eq i32 %0, 0
  %1 = load i32, ptr @b, align 4
  %conv = trunc i32 %1 to i16
  %2 = load i32, ptr @z, align 4
  %3 = load i32, ptr @u, align 4
  %tobool6.not = icmp eq i32 %3, 0
  %4 = load i32, ptr @a, align 4
  %tobool9.not = icmp eq i32 %4, 0
  %5 = load i16, ptr @t, align 2
  %cmp = icmp slt i16 %5, 1
  %6 = load i32, ptr @w, align 4
  %conv15 = trunc i32 %6 to i8
  %tobool1.not26 = icmp eq i32 %o.promoted28, 0
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %land.end, %while.cond.preheader.lr.ph
  %g.036 = phi i8 [ undef, %while.cond.preheader.lr.ph ], [ %g.1, %land.end ]
  %dec2735 = phi i32 [ %d.promoted, %while.cond.preheader.lr.ph ], [ %dec, %land.end ]
  br i1 %tobool1.not26, label %while.end, label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.cond2.preheader, %while.cond.preheader
  br i1 %tobool3.not, label %for.cond2.preheader, label %for.body4.lr.ph

for.body4.lr.ph:                                  ; preds = %for.cond2.preheader
  store i16 %conv, ptr @c, align 2, !tbaa !9
  store i32 %2, ptr @o, align 4, !tbaa !5
  br label %for.body4

for.body4:                                        ; preds = %for.body4, %for.body4.lr.ph
  br i1 %tobool6.not, label %for.body4, label %for.cond8.preheader.lr.ph

for.cond8.preheader.lr.ph:                        ; preds = %for.body4
  br i1 %tobool9.not, label %for.cond8.preheader, label %for.cond8, !llvm.loop !11

for.cond8.preheader:                              ; preds = %for.cond8.preheader, %for.cond8.preheader.lr.ph
  br label %for.cond8.preheader

for.cond8:                                        ; preds = %for.cond8, %for.cond8.preheader.lr.ph
  br label %for.cond8

while.end:                                        ; preds = %while.cond.preheader
  %g.1 = select i1 %cmp, i8 %conv15, i8 %g.036
  %conv16 = sext i8 %g.1 to i32
  store i32 %conv16, ptr @f, align 4, !tbaa !5
  %tobool18.not = icmp eq i8 %g.1, 0
  br i1 %tobool18.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.end
  store i16 1, ptr @q, align 2, !tbaa !9
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.end
  %dec = add nsw i32 %dec2735, -1
  store i32 %dec, ptr @d, align 4, !tbaa !5
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %for.end19, label %while.cond.preheader, !llvm.loop !14

for.end19:                                        ; preds = %land.end, %entry
  %7 = load i16, ptr @q, align 2, !tbaa !9
  %cmp21.not = icmp eq i16 %7, 1
  br i1 %cmp21.not, label %if.end24, label %if.then23

if.then23:                                        ; preds = %for.end19
  tail call void @abort() #2
  unreachable

if.end24:                                         ; preds = %for.end19
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
!11 = distinct !{!11, !12, !13}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = distinct !{!14, !12, !13}
