; 170071508829813062872053669790472000057
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/170071508829813062872053669790472000057_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/170071508829813062872053669790472000057.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree nounwind uwtable
define dso_local range(i32 -32768, 32768) i32 @foo(i32 noundef %x, ptr noundef readonly captures(none) %y) local_unnamed_addr #0 {
entry:
  %0 = load i64, ptr %y, align 8, !tbaa !5
  switch i64 %0, label %sw.epilog [
    i64 0, label %return
    i64 1, label %sw.bb2
    i64 2, label %sw.bb4
  ]

sw.bb2:                                           ; preds = %entry
  %1 = load i8, ptr %y, align 1, !tbaa !11
  %conv3 = sext i8 %1 to i32
  br label %return

sw.bb4:                                           ; preds = %entry
  %2 = load i16, ptr %y, align 2, !tbaa !12
  %conv5 = sext i16 %2 to i32
  br label %return

sw.epilog:                                        ; preds = %entry
  tail call void @abort() #5
  unreachable

return:                                           ; preds = %sw.bb4, %sw.bb2, %entry
  %retval.0 = phi i32 [ %conv5, %sw.bb4 ], [ %conv3, %sw.bb2 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #1

; Function Attrs: nofree noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  %sh = alloca [10 x i16], align 16
  %c = alloca [10 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sh) #6
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %c) #6
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %conv = trunc i64 %indvars.iv to i16
  %arrayidx = getelementptr inbounds nuw [10 x i16], ptr %sh, i64 0, i64 %indvars.iv
  store i16 %conv, ptr %arrayidx, align 2, !tbaa !12
  %conv1 = trunc i64 %indvars.iv to i8
  %arrayidx3 = getelementptr inbounds nuw [10 x i8], ptr %c, i64 0, i64 %indvars.iv
  store i8 %conv1, ptr %arrayidx3, align 1, !tbaa !11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 10
  br i1 %exitcond.not, label %if.end, label %for.body, !llvm.loop !14

if.end:                                           ; preds = %for.body
  %add.ptr = getelementptr inbounds nuw i8, ptr %c, i64 3
  %0 = load i64, ptr %add.ptr, align 8, !tbaa !5
  switch i64 %0, label %sw.epilog.i28 [
    i64 0, label %foo.exit29
    i64 1, label %sw.bb2.i26
    i64 2, label %sw.bb4.i23
  ]

sw.bb2.i26:                                       ; preds = %if.end
  %1 = load i8, ptr %add.ptr, align 1, !tbaa !11
  %conv3.i27 = sext i8 %1 to i32
  br label %foo.exit29

sw.bb4.i23:                                       ; preds = %if.end
  %2 = load i16, ptr %add.ptr, align 2, !tbaa !12
  %conv5.i24 = sext i16 %2 to i32
  br label %foo.exit29

sw.epilog.i28:                                    ; preds = %if.end
  tail call void @abort() #5
  unreachable

foo.exit29:                                       ; preds = %sw.bb4.i23, %sw.bb2.i26, %if.end
  %retval.0.i25 = phi i32 [ %conv5.i24, %sw.bb4.i23 ], [ %conv3.i27, %sw.bb2.i26 ], [ 0, %if.end ]
  %cmp7.not = icmp eq i32 %retval.0.i25, 3
  br i1 %cmp7.not, label %if.end10, label %if.then9

if.then9:                                         ; preds = %foo.exit29
  tail call void @abort() #5
  unreachable

if.end10:                                         ; preds = %foo.exit29
  %add.ptr12 = getelementptr inbounds nuw i8, ptr %sh, i64 6
  %3 = load i64, ptr %add.ptr12, align 8, !tbaa !5
  switch i64 %3, label %sw.epilog.i35 [
    i64 0, label %foo.exit36
    i64 1, label %sw.bb2.i33
    i64 2, label %sw.bb4.i30
  ]

sw.bb2.i33:                                       ; preds = %if.end10
  %4 = load i8, ptr %add.ptr12, align 2, !tbaa !11
  %conv3.i34 = sext i8 %4 to i32
  br label %foo.exit36

sw.bb4.i30:                                       ; preds = %if.end10
  %5 = load i16, ptr %add.ptr12, align 2, !tbaa !12
  %conv5.i31 = sext i16 %5 to i32
  br label %foo.exit36

sw.epilog.i35:                                    ; preds = %if.end10
  tail call void @abort() #5
  unreachable

foo.exit36:                                       ; preds = %sw.bb4.i30, %sw.bb2.i33, %if.end10
  %retval.0.i32 = phi i32 [ %conv5.i31, %sw.bb4.i30 ], [ %conv3.i34, %sw.bb2.i33 ], [ 0, %if.end10 ]
  %cmp14.not = icmp eq i32 %retval.0.i32, 3
  br i1 %cmp14.not, label %if.end17, label %if.then16

if.then16:                                        ; preds = %foo.exit36
  tail call void @abort() #5
  unreachable

if.end17:                                         ; preds = %foo.exit36
  tail call void @exit(i32 noundef 0) #5
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #3

; Function Attrs: nofree noreturn
declare void @exit(i32 noundef) local_unnamed_addr #4

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"s", !7, i64 0, !10, i64 8}
!7 = !{!"long", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!8, !8, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"short", !8, i64 0}
!14 = distinct !{!14, !15, !16}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!"llvm.loop.unroll.disable"}
