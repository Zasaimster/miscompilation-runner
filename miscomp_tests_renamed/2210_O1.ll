; 109592066429686642302299543207341087121
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/109592066429686642302299543207341087121.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/109592066429686642302299543207341087121.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [26 x i8] c"This branch is executed.\0A\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @foo(i32 noundef %x, ptr noundef readonly captures(none) %y) local_unnamed_addr #0 {
entry:
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  switch i32 %call, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb3
  ]

sw.bb:                                            ; preds = %entry
  %0 = load i64, ptr %y, align 8, !tbaa !5
  %conv = trunc i64 %0 to i32
  br label %return

sw.bb1:                                           ; preds = %entry
  %1 = load i8, ptr %y, align 1, !tbaa !11
  %conv2 = sext i8 %1 to i32
  br label %return

sw.bb3:                                           ; preds = %entry
  %2 = load i16, ptr %y, align 2, !tbaa !12
  %conv4 = sext i16 %2 to i32
  br label %return

sw.epilog:                                        ; preds = %entry
  tail call void @abort() #6
  unreachable

return:                                           ; preds = %sw.bb3, %sw.bb1, %sw.bb
  %retval.0 = phi i32 [ %conv4, %sw.bb3 ], [ %conv2, %sw.bb1 ], [ %conv, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #1

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #2

; Function Attrs: nofree noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #3 {
entry:
  %sh = alloca [10 x i16], align 16
  %c = alloca [10 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sh) #7
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %c) #7
  br label %for.body

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %conv = trunc i64 %indvars.iv to i16
  %arrayidx = getelementptr inbounds nuw [10 x i16], ptr %sh, i64 0, i64 %indvars.iv
  store i16 %conv, ptr %arrayidx, align 2, !tbaa !12
  %conv1 = trunc i64 %indvars.iv to i8
  %arrayidx3 = getelementptr inbounds nuw [10 x i8], ptr %c, i64 0, i64 %indvars.iv
  store i8 %conv1, ptr %arrayidx3, align 1, !tbaa !11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 10
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !14

for.end:                                          ; preds = %for.body
  %call.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %switch = icmp ult i32 %call.i, 3
  br i1 %switch, label %if.end, label %sw.epilog.i

sw.epilog.i:                                      ; preds = %for.end
  tail call void @abort() #6
  unreachable

if.end:                                           ; preds = %for.end
  %add.ptr = getelementptr inbounds nuw i8, ptr %c, i64 3
  %call.i23 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  switch i32 %call.i23, label %sw.epilog.i31 [
    i32 0, label %sw.bb.i29
    i32 1, label %sw.bb1.i27
    i32 2, label %sw.bb3.i24
  ]

sw.bb.i29:                                        ; preds = %if.end
  %0 = load i64, ptr %add.ptr, align 8, !tbaa !5
  %conv.i30 = trunc i64 %0 to i32
  br label %foo.exit32

sw.bb1.i27:                                       ; preds = %if.end
  %1 = load i8, ptr %add.ptr, align 1, !tbaa !11
  %conv2.i28 = sext i8 %1 to i32
  br label %foo.exit32

sw.bb3.i24:                                       ; preds = %if.end
  %2 = load i16, ptr %add.ptr, align 2, !tbaa !12
  %conv4.i25 = sext i16 %2 to i32
  br label %foo.exit32

sw.epilog.i31:                                    ; preds = %if.end
  tail call void @abort() #6
  unreachable

foo.exit32:                                       ; preds = %sw.bb.i29, %sw.bb1.i27, %sw.bb3.i24
  %retval.0.i26 = phi i32 [ %conv4.i25, %sw.bb3.i24 ], [ %conv2.i28, %sw.bb1.i27 ], [ %conv.i30, %sw.bb.i29 ]
  %cmp7.not = icmp eq i32 %retval.0.i26, 3
  br i1 %cmp7.not, label %if.end10, label %if.then9

if.then9:                                         ; preds = %foo.exit32
  tail call void @abort() #6
  unreachable

if.end10:                                         ; preds = %foo.exit32
  %add.ptr12 = getelementptr inbounds nuw i8, ptr %sh, i64 6
  %call.i33 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  switch i32 %call.i33, label %sw.epilog.i41 [
    i32 0, label %sw.bb.i39
    i32 1, label %sw.bb1.i37
    i32 2, label %sw.bb3.i34
  ]

sw.bb.i39:                                        ; preds = %if.end10
  %3 = load i64, ptr %add.ptr12, align 8, !tbaa !5
  %conv.i40 = trunc i64 %3 to i32
  br label %foo.exit42

sw.bb1.i37:                                       ; preds = %if.end10
  %4 = load i8, ptr %add.ptr12, align 2, !tbaa !11
  %conv2.i38 = sext i8 %4 to i32
  br label %foo.exit42

sw.bb3.i34:                                       ; preds = %if.end10
  %5 = load i16, ptr %add.ptr12, align 2, !tbaa !12
  %conv4.i35 = sext i16 %5 to i32
  br label %foo.exit42

sw.epilog.i41:                                    ; preds = %if.end10
  tail call void @abort() #6
  unreachable

foo.exit42:                                       ; preds = %sw.bb.i39, %sw.bb1.i37, %sw.bb3.i34
  %retval.0.i36 = phi i32 [ %conv4.i35, %sw.bb3.i34 ], [ %conv2.i38, %sw.bb1.i37 ], [ %conv.i40, %sw.bb.i39 ]
  %cmp14.not = icmp eq i32 %retval.0.i36, 3
  br i1 %cmp14.not, label %if.end17, label %if.then16

if.then16:                                        ; preds = %foo.exit42
  tail call void @abort() #6
  unreachable

if.end17:                                         ; preds = %foo.exit42
  tail call void @exit(i32 noundef 0) #6
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #4

; Function Attrs: nofree noreturn
declare void @exit(i32 noundef) local_unnamed_addr #5

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nofree noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind }

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
