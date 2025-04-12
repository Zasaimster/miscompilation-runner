; 116291463684192493040924156960617838818
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/116291463684192493040924156960617838818.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/116291463684192493040924156960617838818.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local local_unnamed_addr global [2 x i32] zeroinitializer, align 4
@str = private unnamed_addr constant [23 x i8] c"This will not execute.\00", align 1

; Function Attrs: nofree noreturn nounwind uwtable
define dso_local noundef i32 @f(i32 noundef %b) local_unnamed_addr #0 {
entry:
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %entry
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %while.cond, !llvm.loop !5
}

; Function Attrs: nofree noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @a, i64 4), align 4, !tbaa !7
  store i32 0, ptr @a, align 4, !tbaa !7
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i, %entry
  %puts.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %while.cond.i, !llvm.loop !5
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #1

attributes #0 = { nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.unroll.disable"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
