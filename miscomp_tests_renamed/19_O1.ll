; 174994860546676392164090401713595387915
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/174994860546676392164090401713595387915.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/174994860546676392164090401713595387915.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@b = dso_local local_unnamed_addr global i32 0, align 4
@a = dso_local local_unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@c = dso_local local_unnamed_addr global i8 0, align 1
@d = dso_local local_unnamed_addr global i8 0, align 1
@e = dso_local local_unnamed_addr global i8 0, align 1
@f = dso_local local_unnamed_addr global i64 0, align 8
@g = dso_local local_unnamed_addr global i64 0, align 8
@h = dso_local local_unnamed_addr global i64 0, align 8
@i = dso_local local_unnamed_addr global i64 0, align 8
@j = dso_local local_unnamed_addr global i16 0, align 2
@k = dso_local local_unnamed_addr global i16 0, align 2

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %0 = load i32, ptr @b, align 4, !tbaa !5
  store i32 %0, ptr @a, align 4, !tbaa !5
  %1 = load i8, ptr @c, align 1, !tbaa !9
  %conv = sext i8 %1 to i32
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %conv)
  %2 = load i8, ptr @c, align 1, !tbaa !9
  %conv1 = sext i8 %2 to i32
  store i32 %conv1, ptr @a, align 4, !tbaa !5
  %3 = load i8, ptr @d, align 1, !tbaa !9
  %conv2 = sext i8 %3 to i32
  store i32 %conv2, ptr @a, align 4, !tbaa !5
  %4 = load i8, ptr @e, align 1, !tbaa !9
  %conv3 = zext i8 %4 to i32
  store i32 %conv3, ptr @a, align 4, !tbaa !5
  %5 = load i64, ptr @f, align 8, !tbaa !10
  %conv4 = trunc i64 %5 to i32
  store i32 %conv4, ptr @a, align 4, !tbaa !5
  %6 = load i64, ptr @g, align 8, !tbaa !10
  %conv5 = trunc i64 %6 to i32
  store i32 %conv5, ptr @a, align 4, !tbaa !5
  %7 = load i64, ptr @h, align 8, !tbaa !12
  %conv6 = trunc i64 %7 to i32
  store i32 %conv6, ptr @a, align 4, !tbaa !5
  %8 = load i64, ptr @i, align 8, !tbaa !12
  %conv7 = trunc i64 %8 to i32
  store i32 %conv7, ptr @a, align 4, !tbaa !5
  %9 = load i16, ptr @j, align 2, !tbaa !14
  %conv8 = sext i16 %9 to i32
  store i32 %conv8, ptr @a, align 4, !tbaa !5
  %10 = load i16, ptr @k, align 2, !tbaa !14
  %conv9 = zext i16 %10 to i32
  store i32 %conv9, ptr @a, align 4, !tbaa !5
  store i32 %conv9, ptr @b, align 4, !tbaa !5
  %conv20 = trunc i16 %10 to i8
  store i8 %conv20, ptr @c, align 1, !tbaa !9
  store i8 %conv20, ptr @d, align 1, !tbaa !9
  store i8 %conv20, ptr @e, align 1, !tbaa !9
  %conv49 = zext i16 %10 to i64
  store i64 %conv49, ptr @f, align 8, !tbaa !10
  store i64 %conv49, ptr @g, align 8, !tbaa !10
  store i64 %conv49, ptr @h, align 8, !tbaa !12
  store i64 %conv49, ptr @i, align 8, !tbaa !12
  store i16 %10, ptr @j, align 2, !tbaa !14
  store i16 %10, ptr @k, align 2, !tbaa !14
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #1

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!9 = !{!7, !7, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"long", !7, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"long long", !7, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"short", !7, i64 0}
