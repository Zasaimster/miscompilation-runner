; 111562847269471538092569105272708453433
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/111562847269471538092569105272708453433_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/111562847269471538092569105272708453433.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i32, ptr }

@s = dso_local local_unnamed_addr global %struct.anon zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@str = private unnamed_addr constant [12 x i8] c"Hello World\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  store i32 0, ptr @s, align 8, !tbaa !5
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  store ptr @.str.1, ptr getelementptr inbounds nuw (i8, ptr @s, i64 8), align 8, !tbaa !12
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
!5 = !{!6, !7, i64 0}
!6 = !{!"", !7, i64 0, !10, i64 8}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"p1 omnipotent char", !11, i64 0}
!11 = !{!"any pointer", !8, i64 0}
!12 = !{!6, !10, i64 8}
