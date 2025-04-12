; 108341173427095048730669355783144349497
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/108341173427095048730669355783144349497.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/108341173427095048730669355783144349497.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %entry
  %info.sroa.4.0 = phi i32 [ 0, %entry ], [ %info.sroa.4.1, %for.body.i ]
  %y.029.i = phi i32 [ 0, %entry ], [ %inc.i, %for.body.i ]
  %info.sroa.4.1 = add nuw nsw i32 %info.sroa.4.0, 1
  %inc.i = add nuw nsw i32 %y.029.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 256
  br i1 %exitcond.not.i, label %render_image_rgb_a.exit, label %for.body.i, !llvm.loop !5

render_image_rgb_a.exit:                          ; preds = %for.body.i
  %cmp.not = icmp eq i32 %info.sroa.4.1, 256
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %render_image_rgb_a.exit
  tail call void @abort() #3
  unreachable

if.end:                                           ; preds = %render_image_rgb_a.exit
  tail call void @exit(i32 noundef 0) #3
  unreachable
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #1

; Function Attrs: nofree noreturn
declare void @exit(i32 noundef) local_unnamed_addr #2

attributes #0 = { nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
