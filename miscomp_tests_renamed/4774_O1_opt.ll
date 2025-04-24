; 184224210627791138118966709805720273257
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/184224210627791138118966709805720273257_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/184224210627791138118966709805720273257.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.a = type { i32 }

@a = dso_local local_unnamed_addr global %struct.a { i32 1 }, align 4
@val = dso_local global i32 0, align 4
@cptr = dso_local local_unnamed_addr global ptr @val, align 8
@a2 = dso_local local_unnamed_addr global %struct.a zeroinitializer, align 4
@str = private unnamed_addr constant [25 x i8] c"This branch is executed.\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %0 = load ptr, ptr @cptr, align 8, !tbaa !5
  %1 = load i32, ptr @a, align 4, !tbaa !10
  store i32 %1, ptr %0, align 4, !tbaa !10
  store i32 2, ptr @val, align 4, !tbaa !10
  %2 = load i32, ptr %0, align 4, !tbaa !10
  store i32 %2, ptr @a2, align 4, !tbaa !10
  %3 = load i32, ptr @a, align 4, !tbaa !12
  %cmp = icmp eq i32 %2, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
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
!6 = !{!"p1 _ZTS1c", !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !8, i64 0}
!12 = !{!13, !11, i64 0}
!13 = !{!"a", !11, i64 0}
