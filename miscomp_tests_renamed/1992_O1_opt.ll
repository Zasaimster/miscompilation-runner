; 146847102528570132249804512377666611121
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/146847102528570132249804512377666611121_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/146847102528570132249804512377666611121.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.end, %entry
  %number.016 = phi i32 [ 1, %entry ], [ %inc, %for.end ]
  %i.015 = phi i32 [ 1, %entry ], [ %inc7, %for.end ]
  %0 = add i32 %number.016, %i.015
  br label %for.body3

for.body3:                                        ; preds = %for.body3, %for.cond1.preheader
  %number.114 = phi i32 [ %number.016, %for.cond1.preheader ], [ %inc, %for.body3 ]
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %number.114)
  %inc = add i32 %number.114, 1
  %exitcond.not = icmp eq i32 %inc, %0
  br i1 %exitcond.not, label %for.end, label %for.body3, !llvm.loop !5

for.end:                                          ; preds = %for.body3
  %putchar = tail call i32 @putchar(i32 10)
  %inc7 = add nuw nsw i32 %i.015, 1
  %exitcond17.not = icmp eq i32 %inc7, 81
  br i1 %exitcond17.not, label %for.end8, label %for.cond1.preheader, !llvm.loop !8

for.end8:                                         ; preds = %for.end
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #2

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
