; 152914813066966681708948894662519426770
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/152914813066966681708948894662519426770.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/152914813066966681708948894662519426770.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local i32 @foo() local_unnamed_addr #0 {
entry:
  %mat = alloca [10 x [1 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %mat) #4
  store i32 1, ptr %mat, align 16, !tbaa !5
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %mat, i64 4
  store i32 2, ptr %arrayidx2, align 4, !tbaa !5
  br label %for.body

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %det.09 = phi i32 [ 0, %entry ], [ %add, %for.body ]
  %arrayidx4 = getelementptr inbounds nuw [1 x i32], ptr %mat, i64 %indvars.iv
  %0 = load i32, ptr %arrayidx4, align 4, !tbaa !5
  %add = add nsw i32 %0, %det.09
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 5
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !9

for.end:                                          ; preds = %for.body
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %mat) #4
  ret i32 %add
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  %mat.i = alloca [10 x [1 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %mat.i) #4
  store i32 1, ptr %mat.i, align 16, !tbaa !5
  %arrayidx2.i = getelementptr inbounds nuw i8, ptr %mat.i, i64 4
  store i32 2, ptr %arrayidx2.i, align 4, !tbaa !5
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %entry
  %indvars.iv.i = phi i64 [ 0, %entry ], [ %indvars.iv.next.i, %for.body.i ]
  %det.09.i = phi i32 [ 0, %entry ], [ %add.i, %for.body.i ]
  %arrayidx4.i = getelementptr inbounds nuw [1 x i32], ptr %mat.i, i64 %indvars.iv.i
  %0 = load i32, ptr %arrayidx4.i, align 4, !tbaa !5
  %add.i = add nsw i32 %0, %det.09.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 5
  br i1 %exitcond.not.i, label %foo.exit, label %for.body.i, !llvm.loop !9

foo.exit:                                         ; preds = %for.body.i
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %mat.i) #4
  %cmp.not = icmp eq i32 %add.i, 3
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %foo.exit
  tail call void @abort() #5
  unreachable

if.end:                                           ; preds = %foo.exit
  ret i32 0
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #3

attributes #0 = { nofree norecurse nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
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
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
