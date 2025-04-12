; 109851800060959568833661426407024450358
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/109851800060959568833661426407024450358_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/109851800060959568833661426407024450358.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@q = dso_local local_unnamed_addr global ptr null, align 8
@.str = private unnamed_addr constant [32 x i8] c"This function is never called.\0A\00", align 1
@n = dso_local global i32 0, align 4

; Function Attrs: nofree noreturn nounwind uwtable
define dso_local void @foo() local_unnamed_addr #0 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.cond, %entry
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  store volatile i32 %call, ptr @n, align 4, !tbaa !5
  %0 = load ptr, ptr @q, align 8, !tbaa !9
  %arrayidx = getelementptr inbounds nuw i8, ptr %0, i64 2
  %1 = load i8, ptr %arrayidx, align 1, !tbaa !12
  %conv = sext i8 %1 to i32
  store volatile i32 %conv, ptr @n, align 4, !tbaa !5
  %2 = load i8, ptr %arrayidx, align 1, !tbaa !12
  %conv2 = sext i8 %2 to i32
  store volatile i32 %conv2, ptr @n, align 4, !tbaa !5
  %3 = load i8, ptr %arrayidx, align 1, !tbaa !12
  %conv4 = sext i8 %3 to i32
  store volatile i32 %conv4, ptr @n, align 4, !tbaa !5
  %4 = load i8, ptr %arrayidx, align 1, !tbaa !12
  %conv6 = sext i8 %4 to i32
  store volatile i32 %conv6, ptr @n, align 4, !tbaa !5
  %5 = load i8, ptr %arrayidx, align 1, !tbaa !12
  %conv8 = sext i8 %5 to i32
  store volatile i32 %conv8, ptr @n, align 4, !tbaa !5
  %6 = load i8, ptr %arrayidx, align 1, !tbaa !12
  %conv10 = sext i8 %6 to i32
  store volatile i32 %conv10, ptr @n, align 4, !tbaa !5
  %7 = load i8, ptr %arrayidx, align 1, !tbaa !12
  %conv12 = sext i8 %7 to i32
  store volatile i32 %conv12, ptr @n, align 4, !tbaa !5
  %8 = load i8, ptr %arrayidx, align 1, !tbaa !12
  %conv14 = sext i8 %8 to i32
  store volatile i32 %conv14, ptr @n, align 4, !tbaa !5
  %9 = load i8, ptr %arrayidx, align 1, !tbaa !12
  %conv16 = sext i8 %9 to i32
  store volatile i32 %conv16, ptr @n, align 4, !tbaa !5
  %10 = load i8, ptr %arrayidx, align 1, !tbaa !12
  %conv18 = sext i8 %10 to i32
  store volatile i32 %conv18, ptr @n, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !13
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #1

; Function Attrs: nofree noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  tail call void @exit(i32 noundef 0) #3
  unreachable
}

; Function Attrs: nofree noreturn
declare void @exit(i32 noundef) local_unnamed_addr #2

attributes #0 = { nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

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
!9 = !{!10, !10, i64 0}
!10 = !{!"p1 omnipotent char", !11, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!7, !7, i64 0}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.unroll.disable"}
