; 192327627411577816665856056609316876555
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/192327627411577816665856056609316876555_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/192327627411577816665856056609316876555.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [30 x i8] c"This function has dead code.\0A\00", align 1

; Function Attrs: noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %call.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %call1.i = tail call i32 (...) @deadFunction() #5
  %cmp29.i = icmp slt i32 %call.i, %call1.i
  br i1 %cmp29.i, label %for.body.lr.ph.i, label %if.then

for.body.lr.ph.i:                                 ; preds = %entry
  %conv3.i = sitofp i32 %call.i to float
  %conv4.i = fptosi float %conv3.i to i32
  %conv5.i = sitofp i32 %conv4.i to float
  %sub.i = fadd float %conv5.i, -1.000000e+00
  %sub6.i = fsub float %conv3.i, %sub.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %for.body.lr.ph.i
  %info.sroa.4.0 = phi i32 [ 0, %for.body.lr.ph.i ], [ %info.sroa.4.1, %for.body.i ]
  %y.031.i = phi i32 [ %call.i, %for.body.lr.ph.i ], [ %inc.i, %for.body.i ]
  %error.030.i = phi float [ %sub6.i, %for.body.lr.ph.i ], [ %add15.i, %for.body.i ]
  %cmp9.i = fcmp ult float %error.030.i, 1.000000e+00
  %conv11.i = fptosi float %error.030.i to i32
  %conv13.i = sitofp i32 %conv11.i to float
  %sub14.i = fsub float %error.030.i, %conv13.i
  %add.i = select i1 %cmp9.i, i32 0, i32 %conv11.i
  %info.sroa.4.1 = add nsw i32 %add.i, %info.sroa.4.0
  %error.1.i = select i1 %cmp9.i, float %error.030.i, float %sub14.i
  %add15.i = fadd float %error.1.i, 1.000000e+00
  %inc.i = add nsw i32 %y.031.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %call1.i
  br i1 %exitcond.not.i, label %render_image_rgb_a.exit.loopexit, label %for.body.i, !llvm.loop !5

render_image_rgb_a.exit.loopexit:                 ; preds = %for.body.i
  %0 = icmp eq i32 %info.sroa.4.1, 256
  br i1 %0, label %if.end, label %if.then

if.then:                                          ; preds = %render_image_rgb_a.exit.loopexit, %entry
  tail call void @abort() #6
  unreachable

if.end:                                           ; preds = %render_image_rgb_a.exit.loopexit
  tail call void @exit(i32 noundef 0) #6
  unreachable
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #1

; Function Attrs: nofree noreturn
declare void @exit(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

declare i32 @deadFunction(...) local_unnamed_addr #4

attributes #0 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

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
