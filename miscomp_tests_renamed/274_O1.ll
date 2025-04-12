; 144186706584755387220614729719301702618
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/144186706584755387220614729719301702618.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/144186706584755387220614729719301702618.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._RenderInfo = type { i32, float, i32 }

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %info = alloca %struct._RenderInfo, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %info) #6
  store i32 0, ptr %info, align 4, !tbaa !5
  %src_y = getelementptr inbounds nuw i8, ptr %info, i64 8
  store i32 0, ptr %src_y, align 4, !tbaa !11
  %scaley = getelementptr inbounds nuw i8, ptr %info, i64 4
  store float 1.000000e+00, ptr %scaley, align 4, !tbaa !12
  %call.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull %info)
  %call1.i = call i32 (...) @example3() #6
  %0 = load float, ptr %scaley, align 4, !tbaa !12
  %conv2.i = fdiv float 1.000000e+00, %0
  %cmp30.i = icmp slt i32 %call.i, %call1.i
  br i1 %cmp30.i, label %for.body.lr.ph.i, label %render_image_rgb_a.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %conv3.i = sitofp i32 %call.i to float
  %mul.i = fmul float %conv2.i, %conv3.i
  %conv4.i = fptosi float %mul.i to i32
  %conv5.i = sitofp i32 %conv4.i to float
  %sub.i = fsub float %conv5.i, %conv2.i
  %sub6.i = fsub float %mul.i, %sub.i
  %src_y.promoted = load i32, ptr %src_y, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i, %for.body.lr.ph.i
  %1 = phi i32 [ %src_y.promoted, %for.body.lr.ph.i ], [ %2, %if.end.i ]
  %y.032.i = phi i32 [ %call.i, %for.body.lr.ph.i ], [ %inc.i, %if.end.i ]
  %error.031.i = phi float [ %sub6.i, %for.body.lr.ph.i ], [ %add15.i, %if.end.i ]
  %cmp9.i = fcmp ult float %error.031.i, 1.000000e+00
  br i1 %cmp9.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %for.body.i
  %conv11.i = fptosi float %error.031.i to i32
  %add.i = add nsw i32 %1, %conv11.i
  store i32 %add.i, ptr %src_y, align 4, !tbaa !11
  %conv13.i = sitofp i32 %conv11.i to float
  %sub14.i = fsub float %error.031.i, %conv13.i
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i
  %2 = phi i32 [ %add.i, %if.then.i ], [ %1, %for.body.i ]
  %error.1.i = phi float [ %sub14.i, %if.then.i ], [ %error.031.i, %for.body.i ]
  %add15.i = fadd float %conv2.i, %error.1.i
  %inc.i = add nsw i32 %y.032.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %call1.i
  br i1 %exitcond.not.i, label %render_image_rgb_a.exit, label %for.body.i, !llvm.loop !13

render_image_rgb_a.exit:                          ; preds = %if.end.i, %entry
  %3 = load i32, ptr %src_y, align 4, !tbaa !11
  %cmp.not = icmp eq i32 %3, 256
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %render_image_rgb_a.exit
  call void @abort() #7
  unreachable

if.end:                                           ; preds = %render_image_rgb_a.exit
  call void @exit(i32 noundef 0) #7
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #2

; Function Attrs: nofree noreturn
declare void @exit(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

declare i32 @example3(...) local_unnamed_addr #5

attributes #0 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"_RenderInfo", !7, i64 0, !10, i64 4, !7, i64 8}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"float", !8, i64 0}
!11 = !{!6, !7, i64 8}
!12 = !{!6, !10, i64 4}
!13 = distinct !{!13, !14, !15}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!"llvm.loop.unroll.disable"}
