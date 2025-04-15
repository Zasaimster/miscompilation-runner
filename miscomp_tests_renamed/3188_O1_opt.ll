; 101625130182403830842039354303119106253
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/101625130182403830842039354303119106253_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/101625130182403830842039354303119106253.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Link = dso_local local_unnamed_addr global [1 x i32] [i32 5], align 4
@W = dso_local local_unnamed_addr global [1 x i32] [i32 10], align 4

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @f(i32 noundef %k, i32 noundef %p) local_unnamed_addr #0 {
entry:
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %do.end37, %entry
  %j.267 = phi i32 [ 0, %entry ], [ %j.2, %do.end37 ]
  %pdest.266 = phi i32 [ 0, %entry ], [ %pdest.2, %do.end37 ]
  %p.addr.065 = phi i32 [ %p, %entry ], [ %p.addr.1.lcssa, %do.end37 ]
  %k.addr.064 = phi i32 [ %k, %entry ], [ -1, %do.end37 ]
  %cmp558 = icmp sgt i32 %pdest.266, %p.addr.065
  br i1 %cmp558, label %while.body.lr.ph, label %do.body10.preheader

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %cmp6 = icmp eq i32 %j.267, %p.addr.065
  %inc8 = zext i1 %cmp6 to i32
  %0 = add nsw i32 %pdest.266, %inc8
  %cmp5 = icmp sgt i32 %0, %p.addr.065
  br label %while.body

do.body10.preheader:                              ; preds = %while.body, %while.cond.preheader
  %pdest.3.lcssa = phi i32 [ %pdest.266, %while.cond.preheader ], [ %spec.select, %while.body ]
  %idxprom = sext i32 %k.addr.064 to i64
  %arrayidx = getelementptr inbounds [1 x i32], ptr @W, i64 0, i64 %idxprom
  %cmp18 = icmp slt i32 %p.addr.065, 1
  %cmp21 = icmp sgt i32 %k.addr.064, 0
  %arrayidx.promoted = load i32, ptr %arrayidx, align 4, !tbaa !5
  br label %do.body10

while.body:                                       ; preds = %while.body, %while.body.lr.ph
  %pdest.359 = phi i32 [ %pdest.266, %while.body.lr.ph ], [ %spec.select, %while.body ]
  %spec.select = add nsw i32 %pdest.359, %inc8
  br i1 %cmp5, label %while.body, label %do.body10.preheader, !llvm.loop !9

do.body10:                                        ; preds = %do.cond20, %do.body10.preheader
  %1 = phi i32 [ %4, %do.cond20 ], [ %arrayidx.promoted, %do.body10.preheader ]
  %pdest.5 = phi i32 [ %pdest.7, %do.cond20 ], [ %pdest.3.lcssa, %do.body10.preheader ]
  %2 = icmp eq i32 %1, 0
  br label %do.body11

do.body11:                                        ; preds = %do.cond17, %do.body10
  %3 = phi i32 [ %1, %do.body10 ], [ %4, %do.cond17 ]
  %pdest.6 = phi i32 [ %pdest.5, %do.body10 ], [ %pdest.7, %do.cond17 ]
  %D1361.0 = phi i1 [ %2, %do.body10 ], [ true, %do.cond17 ]
  br i1 %D1361.0, label %do.cond17, label %if.then13

if.then13:                                        ; preds = %do.body11
  store i32 0, ptr %arrayidx, align 4, !tbaa !5
  br label %do.cond17

do.cond17:                                        ; preds = %if.then13, %do.body11
  %4 = phi i32 [ 0, %if.then13 ], [ %3, %do.body11 ]
  %pdest.7 = phi i32 [ 1, %if.then13 ], [ %pdest.6, %do.body11 ]
  br i1 %cmp18, label %do.body11, label %do.cond20, !llvm.loop !12

do.cond20:                                        ; preds = %do.cond17
  br i1 %cmp21, label %do.body10, label %do.body23.preheader, !llvm.loop !13

do.body23.preheader:                              ; preds = %do.cond20
  %cmp2760.not = icmp eq i32 %j.267, 0
  br label %do.body23

do.body23:                                        ; preds = %do.cond35, %do.body23.preheader
  %k.addr.1 = phi i32 [ %5, %do.cond35 ], [ %k.addr.064, %do.body23.preheader ]
  %pdest.8 = phi i32 [ %pdest.9.lcssa, %do.cond35 ], [ %pdest.7, %do.body23.preheader ]
  %idxprom24 = sext i32 %k.addr.1 to i64
  %arrayidx25 = getelementptr inbounds [1 x i32], ptr @Link, i64 0, i64 %idxprom24
  %5 = load i32, ptr %arrayidx25, align 4, !tbaa !5
  br i1 %cmp2760.not, label %do.cond35, label %while.body28.lr.ph

while.body28.lr.ph:                               ; preds = %do.body23
  %cmp29.not = icmp ne i32 %5, -1
  %spec.select56 = zext i1 %cmp29.not to i32
  %inc31 = zext i1 %cmp29.not to i32
  %cmp27 = icmp samesign ugt i32 %j.267, %spec.select56
  br label %while.body28

while.body28:                                     ; preds = %while.body28, %while.body28.lr.ph
  %pdest.961 = phi i32 [ %pdest.8, %while.body28.lr.ph ], [ %spec.select57, %while.body28 ]
  %spec.select57 = add nsw i32 %pdest.961, %inc31
  br i1 %cmp27, label %while.body28, label %do.cond35, !llvm.loop !14

do.cond35:                                        ; preds = %while.body28, %do.body23
  %p.addr.1.lcssa = phi i32 [ 0, %do.body23 ], [ %spec.select56, %while.body28 ]
  %pdest.9.lcssa = phi i32 [ %pdest.8, %do.body23 ], [ %spec.select57, %while.body28 ]
  %cmp36.not = icmp eq i32 %5, -1
  br i1 %cmp36.not, label %do.end37, label %do.body23, !llvm.loop !15

do.end37:                                         ; preds = %do.cond35
  %cmp = icmp sgt i32 %pdest.9.lcssa, 2
  %inc = zext i1 %cmp to i32
  %pdest.2 = add nuw nsw i32 %pdest.9.lcssa, %inc
  %not.cmp = xor i1 %cmp, true
  %j.2 = zext i1 %not.cmp to i32
  br i1 %cmp, label %while.cond.preheader, label %for.end, !llvm.loop !16

for.end:                                          ; preds = %do.end37
  ret i32 %pdest.2
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #1 {
entry:
  %arrayidx.promoted.i = load i32, ptr @W, align 4, !tbaa !5
  %0 = icmp eq i32 %arrayidx.promoted.i, 0
  br i1 %0, label %if.then, label %if.then13.i

if.then13.i:                                      ; preds = %entry
  store i32 0, ptr @W, align 4, !tbaa !5
  ret i32 0

if.then:                                          ; preds = %entry
  tail call void @abort() #3
  unreachable
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #2

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !11}
