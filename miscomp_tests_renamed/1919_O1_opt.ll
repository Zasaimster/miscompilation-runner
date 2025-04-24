; 133864162393741426596693689866423896296
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/133864162393741426596693689866423896296_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/133864162393741426596693689866423896296.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@b = dso_local local_unnamed_addr global i16 0, align 2
@a = dso_local local_unnamed_addr global i32 0, align 4
@d = dso_local local_unnamed_addr global i32 0, align 4
@c = dso_local local_unnamed_addr global i32 0, align 4
@str = private unnamed_addr constant [14 x i8] c"Hello, World!\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %b.promoted = load i16, ptr @b, align 2, !tbaa !5
  %cmp14 = icmp slt i16 %b.promoted, 2
  br i1 %cmp14, label %for.body.lr.ph, label %for.end12

for.body.lr.ph:                                   ; preds = %entry
  store i32 0, ptr @a, align 4, !tbaa !9
  %0 = load i32, ptr @d, align 4, !tbaa !9
  %tobool = icmp ne i32 %0, 0
  %1 = load i32, ptr @c, align 4
  %tobool9.not = icmp eq i32 %1, 0
  br label %for.body

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %inc1315 = phi i16 [ %b.promoted, %for.body.lr.ph ], [ %inc, %for.inc ]
  %tobool6 = icmp ne i16 %inc1315, 0
  %or.cond = or i1 %tobool6, %tobool
  %brmerge = select i1 %or.cond, i1 true, i1 %tobool9.not
  br i1 %brmerge, label %for.inc, label %for.cond8

for.cond8:                                        ; preds = %for.cond8, %for.body
  br label %for.cond8

for.inc:                                          ; preds = %for.body
  %inc = add nsw i16 %inc1315, 1
  store i16 %inc, ptr @b, align 2, !tbaa !5
  %exitcond.not = icmp eq i16 %inc, 2
  br i1 %exitcond.not, label %for.end12, label %for.body, !llvm.loop !11

for.end12:                                        ; preds = %for.inc, %entry
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
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
!6 = !{!"short", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !7, i64 0}
!11 = distinct !{!11, !12, !13}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.unroll.disable"}
