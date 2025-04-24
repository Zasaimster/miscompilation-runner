; 175132870318787208093385102488183096169
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/175132870318787208093385102488183096169_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/175132870318787208093385102488183096169.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"Finished\0A\00", align 1
@__const.main.a = private unnamed_addr constant [10 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10], align 16

; Function Attrs: nofree nounwind uwtable
define dso_local void @check(ptr noundef readonly captures(none) %p) local_unnamed_addr #0 {
entry:
  %call19 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %cmp20 = icmp slt i32 %call19, 5
  br i1 %cmp20, label %for.body, label %for.cond1.preheader

for.cond1.preheader.loopexit:                     ; preds = %for.inc
  %0 = trunc nuw i64 %indvars.iv.next to i32
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.cond1.preheader.loopexit, %entry
  %i.0.lcssa = phi i32 [ 0, %entry ], [ %0, %for.cond1.preheader.loopexit ]
  %1 = zext i32 %i.0.lcssa to i64
  %umax = tail call i32 @llvm.umax.i32(i32 %i.0.lcssa, i32 10)
  %wide.trip.count = zext i32 %umax to i64
  br label %for.cond1

for.body:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds nuw i32, ptr %p, i64 %indvars.iv
  %2 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %for.inc, label %if.then

if.then:                                          ; preds = %for.body
  tail call void @abort() #7
  unreachable

for.inc:                                          ; preds = %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %cmp = icmp slt i32 %call, 5
  br i1 %cmp, label %for.body, label %for.cond1.preheader.loopexit, !llvm.loop !9

for.cond1:                                        ; preds = %for.body3, %for.cond1.preheader
  %indvars.iv23 = phi i64 [ %1, %for.cond1.preheader ], [ %indvars.iv.next24, %for.body3 ]
  %exitcond.not = icmp eq i64 %indvars.iv23, %wide.trip.count
  br i1 %exitcond.not, label %for.end11, label %for.body3

for.body3:                                        ; preds = %for.cond1
  %arrayidx5 = getelementptr inbounds nuw i32, ptr %p, i64 %indvars.iv23
  %3 = load i32, ptr %arrayidx5, align 4, !tbaa !5
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1
  %4 = zext i32 %3 to i64
  %cmp6.not = icmp eq i64 %indvars.iv.next24, %4
  br i1 %cmp6.not, label %for.cond1, label %if.then7, !llvm.loop !12

if.then7:                                         ; preds = %for.body3
  tail call void @abort() #7
  unreachable

for.end11:                                        ; preds = %for.cond1
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
  %a = alloca [10 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %a) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %a, ptr noundef nonnull align 16 dereferenceable(40) @__const.main.a, i64 40, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %a, i8 0, i64 20, i1 false), !tbaa !5
  %call19.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %cmp20.i = icmp slt i32 %call19.i, 5
  br i1 %cmp20.i, label %for.body.i, label %for.cond1.preheader.i

for.cond1.preheader.loopexit.i:                   ; preds = %for.inc.i
  %0 = trunc nuw i64 %indvars.iv.next.i to i32
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.cond1.preheader.loopexit.i, %entry
  %i.0.lcssa.i = phi i32 [ 0, %entry ], [ %0, %for.cond1.preheader.loopexit.i ]
  %1 = zext i32 %i.0.lcssa.i to i64
  %umax.i = tail call i32 @llvm.umax.i32(i32 %i.0.lcssa.i, i32 10)
  %wide.trip.count.i = zext i32 %umax.i to i64
  br label %for.cond1.i

for.body.i:                                       ; preds = %for.inc.i, %entry
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.inc.i ], [ 0, %entry ]
  %arrayidx.i = getelementptr inbounds nuw i32, ptr %a, i64 %indvars.iv.i
  %2 = load i32, ptr %arrayidx.i, align 4, !tbaa !5
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %for.inc.i, label %if.then.i

if.then.i:                                        ; preds = %for.body.i
  tail call void @abort() #7
  unreachable

for.inc.i:                                        ; preds = %for.body.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %call.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %cmp.i = icmp slt i32 %call.i, 5
  br i1 %cmp.i, label %for.body.i, label %for.cond1.preheader.loopexit.i, !llvm.loop !9

for.cond1.i:                                      ; preds = %for.body3.i, %for.cond1.preheader.i
  %indvars.iv23.i = phi i64 [ %1, %for.cond1.preheader.i ], [ %indvars.iv.next24.i, %for.body3.i ]
  %exitcond.not.i = icmp eq i64 %indvars.iv23.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %check.exit, label %for.body3.i

for.body3.i:                                      ; preds = %for.cond1.i
  %arrayidx5.i = getelementptr inbounds nuw i32, ptr %a, i64 %indvars.iv23.i
  %3 = load i32, ptr %arrayidx5.i, align 4, !tbaa !5
  %indvars.iv.next24.i = add nuw nsw i64 %indvars.iv23.i, 1
  %4 = zext i32 %3 to i64
  %cmp6.not.i = icmp eq i64 %indvars.iv.next24.i, %4
  br i1 %cmp6.not.i, label %for.cond1.i, label %if.then7.i, !llvm.loop !12

if.then7.i:                                       ; preds = %for.body3.i
  tail call void @abort() #7
  unreachable

check.exit:                                       ; preds = %for.cond1.i
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %a) #8
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind }

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
