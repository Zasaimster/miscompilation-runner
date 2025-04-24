; 166079851731967137969934050307429313216
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/166079851731967137969934050307429313216_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/166079851731967137969934050307429313216.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@str = private unnamed_addr constant [31 x i8] c"This function is never called.\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %h) local_unnamed_addr #0 {
entry:
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.inc25, %entry
  %d.040 = phi i32 [ 0, %entry ], [ %inc26, %for.inc25 ]
  br label %for.cond4.preheader

for.cond4.preheader:                              ; preds = %for.inc22, %for.cond1.preheader
  %e.039 = phi i32 [ 0, %for.cond1.preheader ], [ %inc23, %for.inc22 ]
  br label %for.body6

for.body6:                                        ; preds = %for.body6, %for.cond4.preheader
  %f.038 = phi i32 [ 0, %for.cond4.preheader ], [ %inc, %for.body6 ]
  %call11 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef 0)
  %call20 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef 0)
  %inc = add nuw nsw i32 %f.038, 1
  %exitcond.not = icmp eq i32 %inc, 10
  br i1 %exitcond.not, label %for.inc22, label %for.body6, !llvm.loop !5

for.inc22:                                        ; preds = %for.body6
  %inc23 = add nuw nsw i32 %e.039, 1
  %exitcond41.not = icmp eq i32 %inc23, 3
  br i1 %exitcond41.not, label %for.inc25, label %for.cond4.preheader, !llvm.loop !8

for.inc25:                                        ; preds = %for.inc22
  %inc26 = add nuw nsw i32 %d.040, 1
  %exitcond42.not = icmp eq i32 %inc26, 6
  br i1 %exitcond42.not, label %for.end27, label %for.cond1.preheader, !llvm.loop !9

for.end27:                                        ; preds = %for.inc25
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #2

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }

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
