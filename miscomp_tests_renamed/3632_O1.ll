; 170849903125417715622295477954020918290
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/170849903125417715622295477954020918290.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/170849903125417715622295477954020918290.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"Loop done\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @check(ptr noundef readonly captures(none) %l) local_unnamed_addr #0 {
entry:
  %call12 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %cmp13 = icmp slt i32 %call12, 288
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.inc
  %0 = load i32, ptr %l, align 4, !tbaa !5
  %cmp6.not = icmp eq i32 %0, 8
  br i1 %cmp6.not, label %for.inc, label %if.then

if.then:                                          ; preds = %for.body
  tail call void @abort() #5
  unreachable

for.inc:                                          ; preds = %for.body
  %call7 = tail call i32 (...) @example8() #6
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %cmp = icmp slt i32 %call, 288
  br i1 %cmp, label %for.body, label %for.end, !llvm.loop !9

for.end:                                          ; preds = %for.inc, %entry
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #3

declare i32 @example8(...) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %l = alloca [288 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 1152, ptr nonnull %l) #6
  br label %for.body

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds nuw [288 x i32], ptr %l, i64 0, i64 %indvars.iv
  store i32 8, ptr %arrayidx, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 144
  br i1 %exitcond.not, label %for.body3, label %for.body, !llvm.loop !12

for.body3:                                        ; preds = %for.body, %for.body3
  %indvars.iv46 = phi i64 [ %indvars.iv.next47, %for.body3 ], [ 144, %for.body ]
  %arrayidx5 = getelementptr inbounds nuw [288 x i32], ptr %l, i64 0, i64 %indvars.iv46
  store i32 9, ptr %arrayidx5, align 4, !tbaa !5
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1
  %exitcond49.not = icmp eq i64 %indvars.iv.next47, 256
  br i1 %exitcond49.not, label %for.body11, label %for.body3, !llvm.loop !13

for.body11:                                       ; preds = %for.body3, %for.body11
  %indvars.iv50 = phi i64 [ %indvars.iv.next51, %for.body11 ], [ 256, %for.body3 ]
  %arrayidx13 = getelementptr inbounds nuw [288 x i32], ptr %l, i64 0, i64 %indvars.iv50
  store i32 7, ptr %arrayidx13, align 4, !tbaa !5
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1
  %exitcond53.not = icmp eq i64 %indvars.iv.next51, 280
  br i1 %exitcond53.not, label %for.body19, label %for.body11, !llvm.loop !14

for.body19:                                       ; preds = %for.body11, %for.body19
  %indvars.iv54 = phi i64 [ %indvars.iv.next55, %for.body19 ], [ 280, %for.body11 ]
  %arrayidx21 = getelementptr inbounds nuw [288 x i32], ptr %l, i64 0, i64 %indvars.iv54
  store i32 8, ptr %arrayidx21, align 4, !tbaa !5
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1
  %exitcond57.not = icmp eq i64 %indvars.iv.next55, 288
  br i1 %exitcond57.not, label %for.end24, label %for.body19, !llvm.loop !15

for.end24:                                        ; preds = %for.body19
  %call12.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %cmp13.i = icmp slt i32 %call12.i, 288
  br i1 %cmp13.i, label %for.body.i.preheader, label %check.exit

for.body.i.preheader:                             ; preds = %for.end24
  %0 = load i32, ptr %l, align 16, !tbaa !5
  %cmp6.not.i = icmp eq i32 %0, 8
  br i1 %cmp6.not.i, label %for.body.i, label %if.then.i

for.body.i:                                       ; preds = %for.body.i.preheader, %for.body.i
  %call7.i = tail call i32 (...) @example8() #6
  %call.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %cmp.i = icmp slt i32 %call.i, 288
  br i1 %cmp.i, label %for.body.i, label %check.exit, !llvm.loop !9

if.then.i:                                        ; preds = %for.body.i.preheader
  tail call void @abort() #5
  unreachable

check.exit:                                       ; preds = %for.body.i, %for.end24
  call void @llvm.lifetime.end.p0(i64 1152, ptr nonnull %l) #6
  ret i32 0
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind }
attributes #6 = { nounwind }

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
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
