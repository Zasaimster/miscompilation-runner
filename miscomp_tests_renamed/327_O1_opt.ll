; 171368228594129231318364527984980112780
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/171368228594129231318364527984980112780_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/171368228594129231318364527984980112780.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @foo(ptr noundef readnone captures(none) %start, ptr noundef readnone captures(none) %end) local_unnamed_addr #0 {
entry:
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  %a = alloca [5 x i64], align 16
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %a) #4
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.inc54, %entry
  %indvars.iv108 = phi i64 [ 1, %entry ], [ %indvars.iv.next109, %for.inc54 ]
  %indvars.iv93 = phi i64 [ 0, %entry ], [ %indvars.iv.next94, %for.inc54 ]
  br label %for.cond4.preheader

for.cond1.loopexit:                               ; preds = %for.cond37, %for.end35
  %indvars.iv.next99 = add nuw nsw i64 %indvars.iv98, 1
  %exitcond107.not = icmp eq i64 %indvars.iv.next105, 5
  br i1 %exitcond107.not, label %for.inc54, label %for.cond4.preheader, !llvm.loop !5

for.cond4.preheader:                              ; preds = %for.cond1.loopexit, %for.cond1.preheader
  %indvars.iv104 = phi i64 [ 0, %for.cond1.preheader ], [ %indvars.iv.next105, %for.cond1.loopexit ]
  %indvars.iv98 = phi i64 [ 1, %for.cond1.preheader ], [ %indvars.iv.next99, %for.cond1.loopexit ]
  br label %for.body6

for.body6:                                        ; preds = %for.body6, %for.cond4.preheader
  %indvars.iv = phi i64 [ 0, %for.cond4.preheader ], [ %indvars.iv.next, %for.body6 ]
  %arrayidx = getelementptr inbounds nuw [5 x i64], ptr %a, i64 0, i64 %indvars.iv
  store i64 %indvars.iv, ptr %arrayidx, align 8, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 5
  br i1 %exitcond.not, label %for.body13, label %for.body6, !llvm.loop !12

for.cond10:                                       ; preds = %for.body13
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 1
  %exitcond92.not = icmp eq i64 %indvars.iv.next88, %indvars.iv108
  br i1 %exitcond92.not, label %for.cond22, label %for.body13, !llvm.loop !13

for.body13:                                       ; preds = %for.cond10, %for.body6
  %indvars.iv87 = phi i64 [ %indvars.iv.next88, %for.cond10 ], [ 0, %for.body6 ]
  %arrayidx15 = getelementptr inbounds nuw [5 x i64], ptr %a, i64 0, i64 %indvars.iv87
  %0 = load i64, ptr %arrayidx15, align 8, !tbaa !8
  %cmp17.not = icmp eq i64 %0, %indvars.iv87
  br i1 %cmp17.not, label %for.cond10, label %if.then

if.then:                                          ; preds = %for.body13
  tail call void @abort() #5
  unreachable

for.cond22:                                       ; preds = %for.body25, %for.cond10
  %indvars.iv95 = phi i64 [ %indvars.iv.next96, %for.body25 ], [ %indvars.iv93, %for.cond10 ]
  %cmp23.not.not = icmp samesign ult i64 %indvars.iv95, %indvars.iv104
  br i1 %cmp23.not.not, label %for.body25, label %for.end35

for.body25:                                       ; preds = %for.cond22
  %indvars.iv.next96 = add nuw nsw i64 %indvars.iv95, 1
  %arrayidx27 = getelementptr inbounds nuw [5 x i64], ptr %a, i64 0, i64 %indvars.iv.next96
  %1 = load i64, ptr %arrayidx27, align 8, !tbaa !8
  %cmp29.not = icmp eq i64 %1, %indvars.iv95
  br i1 %cmp29.not, label %for.cond22, label %if.then31, !llvm.loop !14

if.then31:                                        ; preds = %for.body25
  tail call void @abort() #5
  unreachable

for.end35:                                        ; preds = %for.cond22
  %indvars.iv.next105 = add nuw nsw i64 %indvars.iv104, 1
  %cmp3882 = icmp samesign ult i64 %indvars.iv104, 4
  br i1 %cmp3882, label %for.body40, label %for.cond1.loopexit

for.cond37:                                       ; preds = %for.body40
  %indvars.iv.next101 = add nuw nsw i64 %indvars.iv100, 1
  %exitcond103.not = icmp eq i64 %indvars.iv.next101, 5
  br i1 %exitcond103.not, label %for.cond1.loopexit, label %for.body40, !llvm.loop !15

for.body40:                                       ; preds = %for.cond37, %for.end35
  %indvars.iv100 = phi i64 [ %indvars.iv.next101, %for.cond37 ], [ %indvars.iv98, %for.end35 ]
  %arrayidx42 = getelementptr inbounds nuw [5 x i64], ptr %a, i64 0, i64 %indvars.iv100
  %2 = load i64, ptr %arrayidx42, align 8, !tbaa !8
  %cmp44.not = icmp eq i64 %2, %indvars.iv100
  br i1 %cmp44.not, label %for.cond37, label %if.then46

if.then46:                                        ; preds = %for.body40
  tail call void @abort() #5
  unreachable

for.inc54:                                        ; preds = %for.cond1.loopexit
  %indvars.iv.next94 = add nuw nsw i64 %indvars.iv93, 1
  %indvars.iv.next109 = add nuw nsw i64 %indvars.iv108, 1
  %exitcond113.not = icmp eq i64 %indvars.iv.next94, 5
  br i1 %exitcond113.not, label %for.end56, label %for.cond1.preheader, !llvm.loop !16

for.end56:                                        ; preds = %for.inc54
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %a) #4
  ret i32 0
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!5 = distinct !{!5, !6, !7}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!"llvm.loop.unroll.disable"}
!8 = !{!9, !9, i64 0}
!9 = !{!"long", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = distinct !{!12, !6, !7}
!13 = distinct !{!13, !6, !7}
!14 = distinct !{!14, !6, !7}
!15 = distinct !{!15, !6, !7}
!16 = distinct !{!16, !6, !7}
