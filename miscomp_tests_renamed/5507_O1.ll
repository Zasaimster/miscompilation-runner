; 19755583782451243004592978341408613834
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/19755583782451243004592978341408613834.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/19755583782451243004592978341408613834.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local local_unnamed_addr global [3 x i32] [i32 0, i32 1, i32 2], align 4
@str = private unnamed_addr constant [12 x i8] c"Hello World\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local range(i32 0, 4) i32 @main() local_unnamed_addr #0 {
entry:
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %0 = load i32, ptr getelementptr inbounds nuw (i8, ptr @a, i64 4), align 4, !tbaa !5
  %cmp.not = icmp eq i32 %0, 1
  %1 = load i32, ptr getelementptr inbounds nuw (i8, ptr @a, i64 8), align 4
  %cmp1.not = icmp eq i32 %1, 2
  %. = select i1 %cmp1.not, i32 0, i32 3
  %retval.0 = select i1 %cmp.not, i32 %., i32 2
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
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
