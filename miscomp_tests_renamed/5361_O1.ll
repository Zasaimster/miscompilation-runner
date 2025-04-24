; 194813248468158395205541714707746083620
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/194813248468158395205541714707746083620.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/194813248468158395205541714707746083620.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@x = dso_local local_unnamed_addr global [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16
@.str = private unnamed_addr constant [30 x i8] c"This function is never used.\0A\00", align 1

; Function Attrs: nofree noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %cleanup, %entry
  %niterations.0 = phi i32 [ 0, %entry ], [ %niterations.1, %cleanup ]
  %mi.0 = phi i32 [ undef, %entry ], [ %mi.1.lcssa, %cleanup ]
  %call24 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %cmp25 = icmp slt i32 %call24, 10
  br i1 %cmp25, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond ]
  %max.028 = phi i32 [ %spec.select23, %for.body ], [ 0, %for.cond ]
  %mi.127 = phi i32 [ %spec.select, %for.body ], [ %mi.0, %for.cond ]
  %arrayidx = getelementptr inbounds nuw [10 x i32], ptr @x, i64 0, i64 %indvars.iv
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %cmp3 = icmp sgt i32 %0, %max.028
  %1 = trunc nuw nsw i64 %indvars.iv to i32
  %spec.select = select i1 %cmp3, i32 %1, i32 %mi.127
  %spec.select23 = tail call i32 @llvm.smax.i32(i32 %0, i32 %max.028)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %cmp = icmp slt i32 %call, 10
  br i1 %cmp, label %for.body, label %for.end.loopexit, !llvm.loop !9

for.end.loopexit:                                 ; preds = %for.body
  %2 = icmp eq i32 %spec.select23, 0
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %for.cond
  %mi.1.lcssa = phi i32 [ %mi.0, %for.cond ], [ %spec.select, %for.end.loopexit ]
  %max.0.lcssa = phi i1 [ true, %for.cond ], [ %2, %for.end.loopexit ]
  br i1 %max.0.lcssa, label %cleanup, label %if.end8

if.end8:                                          ; preds = %for.end
  %idxprom9 = sext i32 %mi.1.lcssa to i64
  %arrayidx10 = getelementptr inbounds [10 x i32], ptr @x, i64 0, i64 %idxprom9
  store i32 0, ptr %arrayidx10, align 4, !tbaa !5
  %cmp12 = icmp sgt i32 %niterations.0, 9
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end8
  tail call void @abort() #5
  unreachable

if.end14:                                         ; preds = %if.end8
  %inc11 = add nsw i32 %niterations.0, 1
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end14
  %niterations.1 = phi i32 [ %inc11, %if.end14 ], [ %niterations.0, %for.end ]
  br i1 %max.0.lcssa, label %for.end17, label %for.cond

for.end17:                                        ; preds = %cleanup
  tail call void @exit(i32 noundef 0) #5
  unreachable
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #1

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #2

; Function Attrs: nofree noreturn
declare void @exit(i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
