; 105494736326339341967416812564769503909
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/105494736326339341967416812564769503909_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/105494736326339341967416812564769503909.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"Hello World\0A\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @foo() local_unnamed_addr #0 {
entry:
  %mat = alloca [2 x [2 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %mat) #4
  store i32 1, ptr %mat, align 16, !tbaa !5
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %mat, i64 4
  store i32 2, ptr %arrayidx3, align 4, !tbaa !5
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %mat, i64 8
  store i32 4, ptr %arrayidx4, align 8, !tbaa !5
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %mat, i64 12
  store i32 8, ptr %arrayidx7, align 4, !tbaa !5
  %call.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %0 = zext i32 %call.i to i64
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %entry
  %indvars.iv.i = phi i64 [ 0, %entry ], [ %indvars.iv.next.i, %for.body.i ]
  %det.012.i = phi i32 [ 0, %entry ], [ %add5.i, %for.body.i ]
  %1 = mul nuw nsw i64 %indvars.iv.i, %0
  %arrayidx.i = getelementptr inbounds nuw i32, ptr %mat, i64 %1
  %2 = load i32, ptr %arrayidx.i, align 4, !tbaa !5
  %arrayidx4.i = getelementptr inbounds nuw i8, ptr %arrayidx.i, i64 4
  %3 = load i32, ptr %arrayidx4.i, align 4, !tbaa !5
  %add.i = add i32 %2, %det.012.i
  %add5.i = add i32 %add.i, %3
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %cmp.i = icmp eq i64 %indvars.iv.i, 0
  br i1 %cmp.i, label %for.body.i, label %inv_J.exit, !llvm.loop !9

inv_J.exit:                                       ; preds = %for.body.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %mat) #4
  ret i32 %add5.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %mat.i = alloca [2 x [2 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %mat.i) #4
  store i32 1, ptr %mat.i, align 16, !tbaa !5
  %arrayidx3.i = getelementptr inbounds nuw i8, ptr %mat.i, i64 4
  store i32 2, ptr %arrayidx3.i, align 4, !tbaa !5
  %arrayidx4.i = getelementptr inbounds nuw i8, ptr %mat.i, i64 8
  store i32 4, ptr %arrayidx4.i, align 8, !tbaa !5
  %arrayidx7.i = getelementptr inbounds nuw i8, ptr %mat.i, i64 12
  store i32 8, ptr %arrayidx7.i, align 4, !tbaa !5
  %call.i.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %0 = zext i32 %call.i.i to i64
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i, %entry
  %indvars.iv.i.i = phi i64 [ 0, %entry ], [ %indvars.iv.next.i.i, %for.body.i.i ]
  %det.012.i.i = phi i32 [ 0, %entry ], [ %add5.i.i, %for.body.i.i ]
  %1 = mul nuw nsw i64 %indvars.iv.i.i, %0
  %arrayidx.i.i = getelementptr inbounds nuw i32, ptr %mat.i, i64 %1
  %2 = load i32, ptr %arrayidx.i.i, align 4, !tbaa !5
  %arrayidx4.i.i = getelementptr inbounds nuw i8, ptr %arrayidx.i.i, i64 4
  %3 = load i32, ptr %arrayidx4.i.i, align 4, !tbaa !5
  %add.i.i = add i32 %2, %det.012.i.i
  %add5.i.i = add i32 %add.i.i, %3
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  %cmp.i.i = icmp eq i64 %indvars.iv.i.i, 0
  br i1 %cmp.i.i, label %for.body.i.i, label %foo.exit, !llvm.loop !9

foo.exit:                                         ; preds = %for.body.i.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %mat.i) #4
  %cmp.not = icmp eq i32 %add5.i.i, 15
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %foo.exit
  tail call void @abort() #5
  unreachable

if.end:                                           ; preds = %foo.exit
  ret i32 0
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

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
