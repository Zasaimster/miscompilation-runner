; 134360385018456022458395648270173148597
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/134360385018456022458395648270173148597_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/134360385018456022458395648270173148597.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@c = dso_local local_unnamed_addr global i32 20, align 4
@a = dso_local local_unnamed_addr global i32 0, align 4
@b = dso_local local_unnamed_addr global i32 0, align 4
@d = dso_local local_unnamed_addr global i8 0, align 1

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a.promoted = load i32, ptr @a, align 4, !tbaa !5
  %cmp31 = icmp slt i32 %a.promoted, 1
  br i1 %cmp31, label %for.cond1.preheader.lr.ph, label %for.end12

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %d.promoted28 = load i8, ptr @d, align 1
  %b.promoted25 = load i32, ptr @b, align 4
  %0 = load i32, ptr @c, align 4
  %tobool.not = icmp eq i32 %0, 0
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.inc10, %for.cond1.preheader.lr.ph
  %inc112434 = phi i32 [ %a.promoted, %for.cond1.preheader.lr.ph ], [ %inc11, %for.inc10 ]
  %b.promoted2733 = phi i32 [ %b.promoted25, %for.cond1.preheader.lr.ph ], [ %b.promoted26, %for.inc10 ]
  %spec.select.lcssa233032 = phi i8 [ %d.promoted28, %for.cond1.preheader.lr.ph ], [ %spec.select.lcssa2329, %for.inc10 ]
  %cmp220 = icmp slt i32 %b.promoted2733, 1
  br i1 %cmp220, label %for.body3, label %for.inc10

for.body3:                                        ; preds = %if.end9, %for.cond1.preheader
  %inc1822 = phi i32 [ %inc, %if.end9 ], [ %b.promoted2733, %for.cond1.preheader ]
  %spec.select1921 = phi i8 [ %spec.select, %if.end9 ], [ %spec.select.lcssa233032, %for.cond1.preheader ]
  %cmp6 = icmp sgt i8 %spec.select1921, 0
  %not = sext i1 %cmp6 to i8
  %spec.select = xor i8 %spec.select1921, %not
  br i1 %tobool.not, label %if.then8, label %if.end9

if.then8:                                         ; preds = %for.body3
  store i8 %spec.select, ptr @d, align 1, !tbaa !9
  tail call void @abort() #2
  unreachable

if.end9:                                          ; preds = %for.body3
  %inc = add i32 %inc1822, 1
  store i32 %inc, ptr @b, align 4, !tbaa !5
  %exitcond.not = icmp eq i32 %inc1822, 0
  br i1 %exitcond.not, label %for.cond1.for.inc10_crit_edge, label %for.body3, !llvm.loop !10

for.cond1.for.inc10_crit_edge:                    ; preds = %if.end9
  store i8 %spec.select, ptr @d, align 1, !tbaa !9
  br label %for.inc10

for.inc10:                                        ; preds = %for.cond1.for.inc10_crit_edge, %for.cond1.preheader
  %spec.select.lcssa2329 = phi i8 [ %spec.select, %for.cond1.for.inc10_crit_edge ], [ %spec.select.lcssa233032, %for.cond1.preheader ]
  %b.promoted26 = phi i32 [ 1, %for.cond1.for.inc10_crit_edge ], [ %b.promoted2733, %for.cond1.preheader ]
  %inc11 = add i32 %inc112434, 1
  store i32 %inc11, ptr @a, align 4, !tbaa !5
  %exitcond36.not = icmp eq i32 %inc112434, 0
  br i1 %exitcond36.not, label %for.end12, label %for.cond1.preheader, !llvm.loop !13

for.end12:                                        ; preds = %for.inc10, %entry
  %1 = load i8, ptr @d, align 1, !tbaa !9
  %cmp14.not = icmp eq i8 %1, 0
  br i1 %cmp14.not, label %if.end17, label %if.then16

if.then16:                                        ; preds = %for.end12
  tail call void @abort() #2
  unreachable

if.end17:                                         ; preds = %for.end12
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
!9 = !{!7, !7, i64 0}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !11, !12}
