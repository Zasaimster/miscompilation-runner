; 130523865751176456057687708603311041855
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/130523865751176456057687708603311041855.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/130523865751176456057687708603311041855.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@str = private unnamed_addr constant [9 x i8] c"Finished\00", align 1

; Function Attrs: nofree noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %entry, %for.inc44
  %indvars.iv76 = phi i64 [ 0, %entry ], [ %indvars.iv.next77, %for.inc44 ]
  br label %for.cond4.preheader

for.cond4.preheader:                              ; preds = %for.cond1.preheader, %for.inc41
  %indvars.iv78 = phi i64 [ %indvars.iv76, %for.cond1.preheader ], [ %indvars.iv.next79, %for.inc41 ]
  br label %for.cond7.preheader

for.cond7.preheader:                              ; preds = %for.cond4.preheader, %for.inc38
  %indvars.iv73 = phi i64 [ 0, %for.cond4.preheader ], [ %indvars.iv.next74, %for.inc38 ]
  br label %for.body9

for.body9:                                        ; preds = %for.cond7.preheader, %for.body9
  %indvars.iv = phi i64 [ 0, %for.cond7.preheader ], [ %indvars.iv.next, %for.body9 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %cmp8 = icmp eq i64 %indvars.iv, 0
  br i1 %cmp8, label %for.body9, label %for.inc38, !llvm.loop !5

for.inc38:                                        ; preds = %for.body9
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 1
  %cmp5 = icmp eq i64 %indvars.iv73, 0
  br i1 %cmp5, label %for.cond7.preheader, label %for.inc41, !llvm.loop !8

for.inc41:                                        ; preds = %for.inc38
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next79, 8
  br i1 %exitcond.not, label %for.inc44, label %for.cond4.preheader, !llvm.loop !9

for.inc44:                                        ; preds = %for.inc41
  %indvars.iv.next77 = add nuw nsw i64 %indvars.iv76, 1
  %exitcond82.not = icmp eq i64 %indvars.iv.next77, 8
  br i1 %exitcond82.not, label %for.end46, label %for.cond1.preheader, !llvm.loop !10

for.end46:                                        ; preds = %for.inc44
  tail call void @exit(i32 noundef 0) #3
  unreachable
}

; Function Attrs: nofree noreturn
declare void @exit(i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) #2

attributes #0 = { nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { noreturn nounwind }

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
!8 = distinct !{!8, !6, !7}
!9 = distinct !{!9, !6, !7}
!10 = distinct !{!10, !6, !7}
