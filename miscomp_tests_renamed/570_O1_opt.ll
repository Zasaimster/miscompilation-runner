; 167073152644181061652218610114507656878
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/167073152644181061652218610114507656878_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/167073152644181061652218610114507656878.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"This won't print.\0A\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @foo(i32 noundef %x, ptr noundef readonly captures(none) %y) local_unnamed_addr #0 {
entry:
  switch i32 %x, label %sw.epilog [
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

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #1

; Function Attrs: nofree noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  %sh = alloca [10 x i16], align 16
  %c = alloca [10 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sh) #7
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %c) #7
  %call23 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %cmp24 = icmp slt i32 %call23, 10
  br i1 %cmp24, label %for.body, label %if.end

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %conv = trunc i64 %indvars.iv to i16
  %arrayidx = getelementptr inbounds nuw [10 x i16], ptr %sh, i64 0, i64 %indvars.iv
  store i16 %conv, ptr %arrayidx, align 2, !tbaa !12
  %conv1 = trunc i64 %indvars.iv to i8
  %arrayidx3 = getelementptr inbounds nuw [10 x i8], ptr %c, i64 0, i64 %indvars.iv
  store i8 %conv1, ptr %arrayidx3, align 1, !tbaa !11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %cmp = icmp slt i32 %call, 10
  br i1 %cmp, label %for.body, label %if.end, !llvm.loop !14

if.end:                                           ; preds = %for.body, %entry
  %add.ptr = getelementptr inbounds nuw i8, ptr %c, i64 3
  %0 = load i8, ptr %add.ptr, align 1, !tbaa !11
  %cmp8.not = icmp eq i8 %0, 3
  br i1 %cmp8.not, label %if.end11, label %if.then10

if.then10:                                        ; preds = %if.end
  tail call void @abort() #6
  unreachable

if.end11:                                         ; preds = %if.end
  %add.ptr13 = getelementptr inbounds nuw i8, ptr %sh, i64 6
  %1 = load i16, ptr %add.ptr13, align 2, !tbaa !12
  %cmp15.not = icmp eq i16 %1, 3
  br i1 %cmp15.not, label %if.end18, label %if.then17

if.then17:                                        ; preds = %if.end11
  tail call void @abort() #6
  unreachable

if.end18:                                         ; preds = %if.end11
  tail call void @exit(i32 noundef 0) #6
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: nofree noreturn
declare void @exit(i32 noundef) local_unnamed_addr #5

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
