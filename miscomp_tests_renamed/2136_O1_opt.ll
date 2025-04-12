; 188664595938630598821898500797489922932
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/188664595938630598821898500797489922932_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/188664595938630598821898500797489922932.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"%d: %d\0A\00", align 1
@__const.main.Array2 = private unnamed_addr constant [10 x i32] [i32 12, i32 34, i32 56, i32 78, i32 90, i32 123, i32 456, i32 789, i32 8642, i32 9753], align 16

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %Array = alloca [0 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %Array) #3
  %0 = load i32, ptr %Array, align 4, !tbaa !5
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %Count.017 = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %Count.017, i32 noundef %0)
  %inc = add nuw nsw i32 %Count.017, 1
  %exitcond.not = icmp eq i32 %inc, 10
  br i1 %exitcond.not, label %for.body3, label %for.body, !llvm.loop !9

for.body3:                                        ; preds = %for.body3, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body3 ], [ 0, %for.body ]
  %arrayidx5 = getelementptr inbounds nuw [10 x i32], ptr @__const.main.Array2, i64 0, i64 %indvars.iv
  %1 = load i32, ptr %arrayidx5, align 4, !tbaa !5
  %2 = trunc nuw nsw i64 %indvars.iv to i32
  %call6 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %2, i32 noundef %1)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond20.not = icmp eq i64 %indvars.iv.next, 10
  br i1 %exitcond20.not, label %for.end9, label %for.body3, !llvm.loop !12

for.end9:                                         ; preds = %for.body3
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %Array) #3
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
