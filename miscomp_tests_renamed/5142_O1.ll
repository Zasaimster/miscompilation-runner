; 190783126980565845560048362263754915896
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/190783126980565845560048362263754915896.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/190783126980565845560048362263754915896.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %call = tail call i32 (...) @example1() #4
  %cmp.not16 = icmp slt i32 %call, 1
  br i1 %cmp.not16, label %for.end9, label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %entry, %for.end
  %number.018 = phi i32 [ %inc, %for.end ], [ 1, %entry ]
  %i.017 = phi i32 [ %inc8, %for.end ], [ 1, %entry ]
  %0 = add i32 %number.018, %i.017
  br label %for.body3

for.body3:                                        ; preds = %for.cond1.preheader, %for.body3
  %number.115 = phi i32 [ %number.018, %for.cond1.preheader ], [ %inc, %for.body3 ]
  %call4 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %number.115)
  %inc = add i32 %number.115, 1
  %exitcond.not = icmp eq i32 %inc, %0
  br i1 %exitcond.not, label %for.end, label %for.body3, !llvm.loop !5

for.end:                                          ; preds = %for.body3
  %putchar = tail call i32 @putchar(i32 10)
  %inc8 = add nuw i32 %i.017, 1
  %exitcond19.not = icmp eq i32 %i.017, %call
  br i1 %exitcond19.not, label %for.end9, label %for.cond1.preheader, !llvm.loop !8

for.end9:                                         ; preds = %for.end, %entry
  ret i32 0
}

declare i32 @example1(...) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { nounwind }

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
