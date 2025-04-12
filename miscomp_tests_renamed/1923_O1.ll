; 152343864655970401117202209476958287239
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/152343864655970401117202209476958287239.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/152343864655970401117202209476958287239.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S2 = type { i32, i32, %union.anon, %struct.S1 }
%union.anon = type { i32 }
%struct.S1 = type { i32, i32 }

@v = dso_local local_unnamed_addr global %struct.S2 { i32 1, i32 2, %union.anon { i32 3 }, %struct.S1 { i32 4, i32 5 } }, align 4
@str = private unnamed_addr constant [14 x i8] c"Hello, World!\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local range(i32 0, 6) i32 @main() local_unnamed_addr #0 {
entry:
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %0 = load i32, ptr getelementptr inbounds nuw (i8, ptr @v, i64 4), align 4, !tbaa !5
  %cmp.not = icmp eq i32 %0, 2
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %1 = load i32, ptr getelementptr inbounds nuw (i8, ptr @v, i64 8), align 4, !tbaa !11
  %cmp1.not = icmp eq i32 %1, 3
  br i1 %cmp1.not, label %if.end4, label %return

if.end4:                                          ; preds = %if.end
  %2 = load i32, ptr getelementptr inbounds nuw (i8, ptr @v, i64 12), align 4, !tbaa !12
  %cmp5.not = icmp eq i32 %2, 4
  br i1 %cmp5.not, label %if.end7, label %return

if.end7:                                          ; preds = %if.end4
  %3 = load i32, ptr getelementptr inbounds nuw (i8, ptr @v, i64 16), align 4, !tbaa !13
  %cmp8.not = icmp eq i32 %3, 5
  %. = select i1 %cmp8.not, i32 0, i32 5
  br label %return

return:                                           ; preds = %if.end7, %if.end4, %if.end, %entry
  %retval.0 = phi i32 [ 2, %entry ], [ 3, %if.end ], [ 4, %if.end4 ], [ %., %if.end7 ]
  ret i32 %retval.0
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
!5 = !{!6, !7, i64 4}
!6 = !{!"S2", !7, i64 0, !7, i64 4, !8, i64 8, !10, i64 12}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"S1", !7, i64 0, !7, i64 4}
!11 = !{!8, !8, i64 0}
!12 = !{!6, !7, i64 12}
!13 = !{!6, !7, i64 16}
