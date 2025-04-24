; 160566621337638438159109706323194739185
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/160566621337638438159109706323194739185.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/160566621337638438159109706323194739185.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@array = dso_local local_unnamed_addr global [7 x i32] zeroinitializer, align 16
@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @swap(i32 noundef %a, i32 noundef %b) local_unnamed_addr #0 {
entry:
  %idxprom = sext i32 %b to i64
  %arrayidx = getelementptr inbounds [7 x i32], ptr @array, i64 0, i64 %idxprom
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %idxprom1 = sext i32 %a to i64
  %arrayidx2 = getelementptr inbounds [7 x i32], ptr @array, i64 0, i64 %idxprom1
  store i32 %0, ptr %arrayidx2, align 4, !tbaa !5
  store i32 0, ptr %arrayidx, align 4, !tbaa !5
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @partition(i32 noundef %left, i32 noundef %right) local_unnamed_addr #1 {
entry:
  %idxprom = sext i32 %left to i64
  %arrayidx = getelementptr inbounds [7 x i32], ptr @array, i64 0, i64 %idxprom
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %idxprom.i = sext i32 %right to i64
  %arrayidx.i = getelementptr inbounds [7 x i32], ptr @array, i64 0, i64 %idxprom.i
  %1 = load i32, ptr %arrayidx.i, align 4, !tbaa !5
  store i32 %1, ptr %arrayidx, align 4, !tbaa !5
  store i32 0, ptr %arrayidx.i, align 4, !tbaa !5
  %cmp23 = icmp slt i32 %left, %right
  br i1 %cmp23, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %entry
  %2 = sext i32 %left to i64
  %wide.trip.count = sext i32 %right to i64
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %indvars.iv = phi i64 [ %2, %for.body.preheader ], [ %indvars.iv.next, %for.inc ]
  %index.024 = phi i32 [ %left, %for.body.preheader ], [ %index.1, %for.inc ]
  %arrayidx2 = getelementptr inbounds [7 x i32], ptr @array, i64 0, i64 %indvars.iv
  %3 = load i32, ptr %arrayidx2, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %3, %0
  br i1 %cmp3, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %idxprom.i15 = sext i32 %index.024 to i64
  %arrayidx.i16 = getelementptr inbounds [7 x i32], ptr @array, i64 0, i64 %idxprom.i15
  %4 = load i32, ptr %arrayidx.i16, align 4, !tbaa !5
  store i32 %4, ptr %arrayidx2, align 4, !tbaa !5
  store i32 0, ptr %arrayidx.i16, align 4, !tbaa !5
  %add = add nsw i32 %index.024, 1
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %index.1 = phi i32 [ %add, %if.then ], [ %index.024, %for.body ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !9

for.end:                                          ; preds = %for.inc, %entry
  %index.0.lcssa = phi i32 [ %left, %entry ], [ %index.1, %for.inc ]
  %idxprom.i19 = sext i32 %index.0.lcssa to i64
  %arrayidx.i20 = getelementptr inbounds [7 x i32], ptr @array, i64 0, i64 %idxprom.i19
  %5 = load i32, ptr %arrayidx.i20, align 4, !tbaa !5
  store i32 %5, ptr %arrayidx.i, align 4, !tbaa !5
  store i32 0, ptr %arrayidx.i20, align 4, !tbaa !5
  ret i32 %index.0.lcssa
}

; Function Attrs: nofree nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @quicksort(i32 noundef %left, i32 noundef %right) local_unnamed_addr #2 {
entry:
  br label %tailrecurse

tailrecurse:                                      ; preds = %partition.exit, %entry
  %left.tr = phi i32 [ %left, %entry ], [ %add, %partition.exit ]
  %cmp.not = icmp slt i32 %left.tr, %right
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %tailrecurse
  %idxprom.i = sext i32 %left.tr to i64
  %arrayidx.i = getelementptr inbounds [7 x i32], ptr @array, i64 0, i64 %idxprom.i
  %0 = load i32, ptr %arrayidx.i, align 4, !tbaa !5
  %idxprom.i.i = sext i32 %right to i64
  %arrayidx.i.i = getelementptr inbounds [7 x i32], ptr @array, i64 0, i64 %idxprom.i.i
  %1 = load i32, ptr %arrayidx.i.i, align 4, !tbaa !5
  store i32 %1, ptr %arrayidx.i, align 4, !tbaa !5
  store i32 0, ptr %arrayidx.i.i, align 4, !tbaa !5
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i, %if.end
  %indvars.iv.i = phi i64 [ %idxprom.i, %if.end ], [ %indvars.iv.next.i, %for.inc.i ]
  %index.024.i = phi i32 [ %left.tr, %if.end ], [ %index.1.i, %for.inc.i ]
  %arrayidx2.i = getelementptr inbounds [7 x i32], ptr @array, i64 0, i64 %indvars.iv.i
  %2 = load i32, ptr %arrayidx2.i, align 4, !tbaa !5
  %cmp3.i = icmp slt i32 %2, %0
  br i1 %cmp3.i, label %if.then.i, label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %idxprom.i15.i = sext i32 %index.024.i to i64
  %arrayidx.i16.i = getelementptr inbounds [7 x i32], ptr @array, i64 0, i64 %idxprom.i15.i
  %3 = load i32, ptr %arrayidx.i16.i, align 4, !tbaa !5
  store i32 %3, ptr %arrayidx2.i, align 4, !tbaa !5
  store i32 0, ptr %arrayidx.i16.i, align 4, !tbaa !5
  %add.i = add nsw i32 %index.024.i, 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i
  %index.1.i = phi i32 [ %add.i, %if.then.i ], [ %index.024.i, %for.body.i ]
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %idxprom.i.i
  br i1 %exitcond.not.i, label %partition.exit, label %for.body.i, !llvm.loop !9

partition.exit:                                   ; preds = %for.inc.i
  %idxprom.i19.i = sext i32 %index.1.i to i64
  %arrayidx.i20.i = getelementptr inbounds [7 x i32], ptr @array, i64 0, i64 %idxprom.i19.i
  %4 = load i32, ptr %arrayidx.i20.i, align 4, !tbaa !5
  store i32 %4, ptr %arrayidx.i.i, align 4, !tbaa !5
  store i32 0, ptr %arrayidx.i20.i, align 4, !tbaa !5
  %sub = add nsw i32 %index.1.i, -1
  tail call void @quicksort(i32 noundef %left.tr, i32 noundef %sub)
  %add = add nsw i32 %index.1.i, 1
  br label %tailrecurse

return:                                           ; preds = %tailrecurse
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #3 {
entry:
  store i32 62, ptr @array, align 16, !tbaa !5
  store i32 83, ptr getelementptr inbounds nuw (i8, ptr @array, i64 4), align 4, !tbaa !5
  store i32 4, ptr getelementptr inbounds nuw (i8, ptr @array, i64 8), align 8, !tbaa !5
  store i32 89, ptr getelementptr inbounds nuw (i8, ptr @array, i64 12), align 4, !tbaa !5
  store i32 36, ptr getelementptr inbounds nuw (i8, ptr @array, i64 16), align 16, !tbaa !5
  store i32 21, ptr getelementptr inbounds nuw (i8, ptr @array, i64 20), align 4, !tbaa !5
  store i32 74, ptr getelementptr inbounds nuw (i8, ptr @array, i64 24), align 8, !tbaa !5
  store i32 37, ptr getelementptr inbounds nuw (i8, ptr @array, i64 28), align 4, !tbaa !5
  store i32 65, ptr getelementptr inbounds nuw (i8, ptr @array, i64 32), align 16, !tbaa !5
  store i32 33, ptr getelementptr inbounds nuw (i8, ptr @array, i64 36), align 4, !tbaa !5
  store i32 96, ptr getelementptr inbounds nuw (i8, ptr @array, i64 40), align 8, !tbaa !5
  store i32 38, ptr getelementptr inbounds nuw (i8, ptr @array, i64 44), align 4, !tbaa !5
  store i32 53, ptr getelementptr inbounds nuw (i8, ptr @array, i64 48), align 16, !tbaa !5
  store i32 16, ptr getelementptr inbounds nuw (i8, ptr @array, i64 52), align 4, !tbaa !5
  store i32 74, ptr getelementptr inbounds nuw (i8, ptr @array, i64 56), align 8, !tbaa !5
  store i32 55, ptr getelementptr inbounds nuw (i8, ptr @array, i64 60), align 4, !tbaa !5
  br label %for.body

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds nuw [7 x i32], ptr @array, i64 0, i64 %indvars.iv
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %0)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !12

for.end:                                          ; preds = %for.body
  %putchar = tail call i32 @putchar(i32 10)
  tail call void @quicksort(i32 noundef 0, i32 noundef 15)
  br label %for.body4

for.body4:                                        ; preds = %for.end, %for.body4
  %indvars.iv21 = phi i64 [ 0, %for.end ], [ %indvars.iv.next22, %for.body4 ]
  %arrayidx6 = getelementptr inbounds nuw [7 x i32], ptr @array, i64 0, i64 %indvars.iv21
  %1 = load i32, ptr %arrayidx6, align 4, !tbaa !5
  %call7 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %1)
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 1
  %exitcond24.not = icmp eq i64 %indvars.iv.next22, 16
  br i1 %exitcond24.not, label %for.end10, label %for.body4, !llvm.loop !13

for.end10:                                        ; preds = %for.body4
  %putchar17 = tail call i32 @putchar(i32 10)
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }

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
