; 150743418612650011639197872805921867646
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/150743418612650011639197872805921867646.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/150743418612650011639197872805921867646.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"%d %d %d\0A\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  br label %for.cond4.preheader

for.cond.loopexit:                                ; preds = %for.inc8
  ret i32 0

for.cond4.preheader:                              ; preds = %entry, %for.inc8
  %y.021 = phi i32 [ 0, %entry ], [ %inc9, %for.inc8 ]
  br label %for.body6

for.body6:                                        ; preds = %for.cond4.preheader, %for.body6
  %z.020 = phi i32 [ 0, %for.cond4.preheader ], [ %inc7, %for.body6 ]
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef 1, i32 noundef %y.021, i32 noundef %z.020)
  %inc7 = add nuw nsw i32 %z.020, 1
  %exitcond.not = icmp eq i32 %inc7, 3
  br i1 %exitcond.not, label %for.inc8, label %for.body6, !llvm.loop !5

for.inc8:                                         ; preds = %for.body6
  %inc9 = add nuw nsw i32 %y.021, 1
  %exitcond23.not = icmp eq i32 %inc9, 3
  br i1 %exitcond23.not, label %for.cond.loopexit, label %for.cond4.preheader, !llvm.loop !8
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #1

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
