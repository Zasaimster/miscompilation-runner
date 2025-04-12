; 138301241943707952627850291738467565018
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/138301241943707952627850291738467565018.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/138301241943707952627850291738467565018.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local local_unnamed_addr global i32 1, align 4
@d = dso_local global i32 0, align 4
@e = dso_local local_unnamed_addr global ptr @d, align 8
@c = dso_local global i64 0, align 8
@g = dso_local local_unnamed_addr global ptr @c, align 8
@b = dso_local local_unnamed_addr global i32 0, align 4
@f = dso_local global i64 0, align 8
@str = private unnamed_addr constant [24 x i8] c"This won't be compiled.\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @foo(i32 noundef %h) local_unnamed_addr #0 {
entry:
  %0 = load i32, ptr @b, align 4, !tbaa !5
  %conv = sext i32 %0 to i64
  %1 = load ptr, ptr @g, align 8, !tbaa !9
  store i64 %conv, ptr %1, align 8, !tbaa !12
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  ret i32 undef
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %0 = load i32, ptr @b, align 4, !tbaa !5
  %cmp.not1 = icmp eq i32 %0, -20
  br i1 %cmp.not1, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %1 = load volatile i64, ptr @f, align 8, !tbaa !12
  %2 = load ptr, ptr @e, align 8, !tbaa !14
  store i32 0, ptr %2, align 4, !tbaa !5
  %3 = load i32, ptr @b, align 4, !tbaa !5
  %conv.i = sext i32 %3 to i64
  %4 = load ptr, ptr @g, align 8, !tbaa !9
  store i64 %conv.i, ptr %4, align 8, !tbaa !12
  %puts.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %5 = load i32, ptr @b, align 4, !tbaa !5
  %dec = add nsw i32 %5, -1
  store i32 %dec, ptr @b, align 4, !tbaa !5
  %cmp.not = icmp eq i32 %dec, -20
  br i1 %cmp.not, label %for.end, label %for.body, !llvm.loop !16

for.end:                                          ; preds = %for.body, %entry
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #1

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind }

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
!10 = !{!"p1 long long", !11, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"long long", !7, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"p1 int", !11, i64 0}
!16 = distinct !{!16, !17, !18}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!"llvm.loop.unroll.disable"}
