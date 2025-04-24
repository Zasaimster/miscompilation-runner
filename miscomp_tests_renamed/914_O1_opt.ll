; 116455257886637502611020235163379374888
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/116455257886637502611020235163379374888_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/116455257886637502611020235163379374888.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"Finished!\0A\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local void @check(ptr noundef readonly captures(none) %l) local_unnamed_addr #0 {
entry:
  %call12 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %cmp13 = icmp slt i32 %call12, 288
  br i1 %cmp13, label %for.body, label %for.end

for.cond:                                         ; preds = %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %cmp = icmp slt i32 %call, 288
  br i1 %cmp, label %for.body, label %for.end, !llvm.loop !5

for.body:                                         ; preds = %for.cond, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds nuw i32, ptr %l, i64 %indvars.iv
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !8
  %1 = trunc i64 %indvars.iv to i32
  %2 = add i32 %1, -280
  %3 = icmp ult i32 %2, -24
  %add = select i1 %3, i32 8, i32 7
  %4 = trunc i64 %indvars.iv to i32
  %5 = add i32 %4, -144
  %6 = icmp ult i32 %5, 112
  %land.ext = zext i1 %6 to i32
  %add5 = add nuw nsw i32 %add, %land.ext
  %cmp6.not = icmp eq i32 %0, %add5
  br i1 %cmp6.not, label %for.cond, label %if.then

if.then:                                          ; preds = %for.body
  tail call void @abort() #4
  unreachable

for.end:                                          ; preds = %for.cond, %entry
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %l = alloca [288 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 1152, ptr nonnull %l) #5
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds nuw [288 x i32], ptr %l, i64 0, i64 %indvars.iv
  store i32 8, ptr %arrayidx, align 4, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 144
  br i1 %exitcond.not, label %for.body3, label %for.body, !llvm.loop !12

for.body3:                                        ; preds = %for.body3, %for.body
  %indvars.iv45 = phi i64 [ %indvars.iv.next46, %for.body3 ], [ 144, %for.body ]
  %arrayidx5 = getelementptr inbounds nuw [288 x i32], ptr %l, i64 0, i64 %indvars.iv45
  store i32 9, ptr %arrayidx5, align 4, !tbaa !8
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 1
  %exitcond48.not = icmp eq i64 %indvars.iv.next46, 256
  br i1 %exitcond48.not, label %for.body11, label %for.body3, !llvm.loop !13

for.body11:                                       ; preds = %for.body11, %for.body3
  %indvars.iv49 = phi i64 [ %indvars.iv.next50, %for.body11 ], [ 256, %for.body3 ]
  %arrayidx13 = getelementptr inbounds nuw [288 x i32], ptr %l, i64 0, i64 %indvars.iv49
  store i32 7, ptr %arrayidx13, align 4, !tbaa !8
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1
  %exitcond52.not = icmp eq i64 %indvars.iv.next50, 280
  br i1 %exitcond52.not, label %for.body19, label %for.body11, !llvm.loop !14

for.body19:                                       ; preds = %for.body19, %for.body11
  %indvars.iv53 = phi i64 [ %indvars.iv.next54, %for.body19 ], [ 280, %for.body11 ]
  %arrayidx21 = getelementptr inbounds nuw [288 x i32], ptr %l, i64 0, i64 %indvars.iv53
  store i32 8, ptr %arrayidx21, align 4, !tbaa !8
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1
  %exitcond56.not = icmp eq i64 %indvars.iv.next54, 288
  br i1 %exitcond56.not, label %for.end24, label %for.body19, !llvm.loop !15

for.end24:                                        ; preds = %for.body19
  %call12.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %cmp13.i = icmp slt i32 %call12.i, 288
  br i1 %cmp13.i, label %for.body.i, label %check.exit

for.cond.i:                                       ; preds = %for.body.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %call.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %cmp.i = icmp slt i32 %call.i, 288
  br i1 %cmp.i, label %for.body.i, label %check.exit, !llvm.loop !5

for.body.i:                                       ; preds = %for.cond.i, %for.end24
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.cond.i ], [ 0, %for.end24 ]
  %arrayidx.i = getelementptr inbounds nuw i32, ptr %l, i64 %indvars.iv.i
  %0 = load i32, ptr %arrayidx.i, align 4, !tbaa !8
  %1 = trunc i64 %indvars.iv.i to i32
  %2 = add i32 %1, -280
  %3 = icmp ult i32 %2, -24
  %add.i = select i1 %3, i32 8, i32 7
  %4 = add i32 %1, -144
  %5 = icmp ult i32 %4, 112
  %land.ext.i = zext i1 %5 to i32
  %add5.i = add nuw nsw i32 %add.i, %land.ext.i
  %cmp6.not.i = icmp eq i32 %0, %add5.i
  br i1 %cmp6.not.i, label %for.cond.i, label %if.then.i

if.then.i:                                        ; preds = %for.body.i
  tail call void @abort() #4
  unreachable

check.exit:                                       ; preds = %for.cond.i, %for.end24
  call void @llvm.lifetime.end.p0(i64 1152, ptr nonnull %l) #5
  ret i32 0
}

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }
attributes #5 = { nounwind }

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
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = distinct !{!12, !6, !7}
!13 = distinct !{!13, !6, !7}
!14 = distinct !{!14, !6, !7}
!15 = distinct !{!15, !6, !7}
