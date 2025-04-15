; 17373675760476215828421694331353960625
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/17373675760476215828421694331353960625.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/17373675760476215828421694331353960625.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [24 x i8] c"This will never print.\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Hello, World!\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d \00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %call1 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1)
  %cmp.not17 = icmp slt i32 %call, 1
  br i1 %cmp.not17, label %for.end10, label %for.cond2.preheader.preheader

for.cond2.preheader.preheader:                    ; preds = %entry
  %0 = add nuw i32 %call, 1
  br label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.cond2.preheader.preheader, %for.end
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.end ], [ 2, %for.cond2.preheader.preheader ]
  %number.019 = phi i32 [ %inc, %for.end ], [ %call1, %for.cond2.preheader.preheader ]
  br label %for.body4

for.body4:                                        ; preds = %for.cond2.preheader, %for.body4
  %number.116 = phi i32 [ %number.019, %for.cond2.preheader ], [ %inc, %for.body4 ]
  %j.015 = phi i32 [ 1, %for.cond2.preheader ], [ %inc6, %for.body4 ]
  %call5 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %number.116)
  %inc = add nsw i32 %number.116, 1
  %inc6 = add nuw i32 %j.015, 1
  %exitcond.not = icmp eq i32 %inc6, %indvars.iv
  br i1 %exitcond.not, label %for.end, label %for.body4, !llvm.loop !5

for.end:                                          ; preds = %for.body4
  %putchar = tail call i32 @putchar(i32 10)
  %indvars.iv.next = add nuw i32 %indvars.iv, 1
  %exitcond20.not = icmp eq i32 %indvars.iv, %0
  br i1 %exitcond20.not, label %for.end10, label %for.cond2.preheader, !llvm.loop !8

for.end10:                                        ; preds = %for.end, %entry
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
