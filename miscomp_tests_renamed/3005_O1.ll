; 152765533201725276740779351840637277686
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/152765533201725276740779351840637277686.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/152765533201725276740779351840637277686.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@x = dso_local local_unnamed_addr global [0 x i32] zeroinitializer, align 4

; Function Attrs: nofree noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %cleanup, %entry
  %niterations.0 = phi i32 [ 0, %entry ], [ %niterations.1, %cleanup ]
  %mi.0 = phi i32 [ undef, %entry ], [ %spec.select, %cleanup ]
  br label %for.body

for.body:                                         ; preds = %for.cond, %for.body
  %indvars.iv = phi i64 [ 0, %for.cond ], [ %indvars.iv.next, %for.body ]
  %max.027 = phi i32 [ 0, %for.cond ], [ %spec.select24, %for.body ]
  %mi.126 = phi i32 [ %mi.0, %for.cond ], [ %spec.select, %for.body ]
  %arrayidx = getelementptr inbounds nuw [0 x i32], ptr @x, i64 0, i64 %indvars.iv
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %cmp3 = icmp sgt i32 %0, %max.027
  %1 = trunc nuw nsw i64 %indvars.iv to i32
  %spec.select = select i1 %cmp3, i32 %1, i32 %mi.126
  %spec.select24 = tail call i32 @llvm.smax.i32(i32 %0, i32 %max.027)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 10
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !9

for.end:                                          ; preds = %for.body
  %cmp6.not = icmp eq i32 %spec.select24, 0
  br i1 %cmp6.not, label %cleanup, label %if.end8

if.end8:                                          ; preds = %for.end
  %idxprom9 = sext i32 %spec.select to i64
  %arrayidx10 = getelementptr inbounds [0 x i32], ptr @x, i64 0, i64 %idxprom9
  store i32 0, ptr %arrayidx10, align 4, !tbaa !5
  %cmp12 = icmp sgt i32 %niterations.0, 9
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end8
  tail call void @abort() #4
  unreachable

if.end14:                                         ; preds = %if.end8
  %inc11 = add nsw i32 %niterations.0, 1
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end14
  %niterations.1 = phi i32 [ %inc11, %if.end14 ], [ %niterations.0, %for.end ]
  br i1 %cmp6.not, label %for.end17, label %for.cond

for.end17:                                        ; preds = %cleanup
  tail call void @exit(i32 noundef 0) #4
  unreachable
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #1

; Function Attrs: nofree noreturn
declare void @exit(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

attributes #0 = { nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
