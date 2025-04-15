; 196763463152690280624751458436722925317
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/196763463152690280624751458436722925317_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/196763463152690280624751458436722925317.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@foo.t16 = internal unnamed_addr constant [16 x float] [float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01], align 16
@foo.tmp = internal unnamed_addr global [4 x float] zeroinitializer, align 16

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc11.i, %entry
  %indvars.iv31.i = phi i64 [ 0, %entry ], [ %indvars.iv.next32.i, %for.inc11.i ]
  %indvars.iv.i = phi i32 [ 4, %entry ], [ %indvars.iv.next.i, %for.inc11.i ]
  %cmp228.not.i = icmp eq i64 %indvars.iv31.i, 0
  br i1 %cmp228.not.i, label %for.inc11.i, label %for.cond1.for.inc11_crit_edge.i

for.cond1.for.inc11_crit_edge.i:                  ; preds = %for.body.i
  %0 = sub nuw nsw i64 3, %indvars.iv31.i
  %1 = mul nuw nsw i64 %0, 5
  %arrayidx.i = getelementptr inbounds nuw [16 x float], ptr @foo.t16, i64 0, i64 %1
  %2 = load float, ptr %arrayidx.i, align 4, !tbaa !5
  %umax.i = tail call i32 @llvm.umax.i32(i32 %indvars.iv.i, i32 3)
  %arrayidx10.i = getelementptr inbounds nuw [4 x float], ptr @foo.tmp, i64 0, i64 %0
  %mul4.i = shl nuw nsw i32 %umax.i, 2
  %3 = trunc nuw nsw i64 %0 to i32
  %add5.i = or disjoint i32 %mul4.i, %3
  %idxprom6.i = zext nneg i32 %add5.i to i64
  %arrayidx7.i = getelementptr inbounds nuw [16 x float], ptr @foo.t16, i64 0, i64 %idxprom6.i
  %4 = load float, ptr %arrayidx7.i, align 4, !tbaa !5
  %mul8.i = fmul float %2, %4
  store float %mul8.i, ptr %arrayidx10.i, align 4, !tbaa !5
  br label %for.inc11.i

for.inc11.i:                                      ; preds = %for.cond1.for.inc11_crit_edge.i, %for.body.i
  %indvars.iv.next32.i = add nuw nsw i64 %indvars.iv31.i, 1
  %indvars.iv.next.i = add nsw i32 %indvars.iv.i, -1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next32.i, 4
  br i1 %exitcond.not.i, label %foo.exit, label %for.body.i, !llvm.loop !9

foo.exit:                                         ; preds = %for.inc11.i
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: write, inaccessiblemem: none) uwtable
define dso_local void @foo(ptr noundef writeonly captures(none) %x) local_unnamed_addr #1 {
entry:
  br label %for.body

for.body:                                         ; preds = %for.inc11, %entry
  %indvars.iv31 = phi i64 [ 0, %entry ], [ %indvars.iv.next32, %for.inc11 ]
  %indvars.iv = phi i32 [ 4, %entry ], [ %indvars.iv.next, %for.inc11 ]
  %cmp228.not = icmp eq i64 %indvars.iv31, 0
  br i1 %cmp228.not, label %for.inc11, label %for.cond1.for.inc11_crit_edge

for.cond1.for.inc11_crit_edge:                    ; preds = %for.body
  %0 = sub nuw nsw i64 3, %indvars.iv31
  %1 = mul nuw nsw i64 %0, 5
  %arrayidx = getelementptr inbounds nuw [16 x float], ptr @foo.t16, i64 0, i64 %1
  %2 = load float, ptr %arrayidx, align 4, !tbaa !5
  %umax = tail call i32 @llvm.umax.i32(i32 %indvars.iv, i32 3)
  %arrayidx10 = getelementptr inbounds nuw [4 x float], ptr @foo.tmp, i64 0, i64 %0
  %mul4 = shl nuw nsw i32 %umax, 2
  %3 = trunc nuw nsw i64 %0 to i32
  %add5 = or disjoint i32 %mul4, %3
  %idxprom6 = zext nneg i32 %add5 to i64
  %arrayidx7 = getelementptr inbounds nuw [16 x float], ptr @foo.t16, i64 0, i64 %idxprom6
  %4 = load float, ptr %arrayidx7, align 4, !tbaa !5
  %mul8 = fmul float %2, %4
  store float %mul8, ptr %arrayidx10, align 4, !tbaa !5
  br label %for.inc11

for.inc11:                                        ; preds = %for.cond1.for.inc11_crit_edge, %for.body
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1
  %indvars.iv.next = add nsw i32 %indvars.iv, -1
  %exitcond.not = icmp eq i64 %indvars.iv.next32, 4
  br i1 %exitcond.not, label %for.end13, label %for.body, !llvm.loop !9

for.end13:                                        ; preds = %for.inc11
  %5 = load float, ptr @foo.tmp, align 16, !tbaa !5
  store float %5, ptr %x, align 4, !tbaa !5
  %6 = load float, ptr getelementptr inbounds nuw (i8, ptr @foo.tmp, i64 4), align 4, !tbaa !5
  %arrayidx15 = getelementptr inbounds nuw i8, ptr %x, i64 4
  store float %6, ptr %arrayidx15, align 4, !tbaa !5
  %7 = load float, ptr getelementptr inbounds nuw (i8, ptr @foo.tmp, i64 8), align 8, !tbaa !5
  %arrayidx16 = getelementptr inbounds nuw i8, ptr %x, i64 8
  store float %7, ptr %arrayidx16, align 4, !tbaa !5
  %8 = load float, ptr getelementptr inbounds nuw (i8, ptr @foo.tmp, i64 12), align 4, !tbaa !5
  %arrayidx17 = getelementptr inbounds nuw i8, ptr %x, i64 12
  store float %8, ptr %arrayidx17, align 4, !tbaa !5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #2

attributes #0 = { nofree norecurse nosync nounwind memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(readwrite, argmem: write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"float", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
