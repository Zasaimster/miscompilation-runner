; 157983522208700139184966857384491415115
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/157983522208700139184966857384491415115_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/157983522208700139184966857384491415115.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local local_unnamed_addr global i16 5, align 2
@f = dso_local local_unnamed_addr global i32 4, align 4
@a = dso_local local_unnamed_addr global i8 0, align 1
@b = dso_local local_unnamed_addr global i16 0, align 2
@h = dso_local local_unnamed_addr global i16 0, align 2
@c = dso_local local_unnamed_addr global [1 x i8] zeroinitializer, align 1
@e = dso_local local_unnamed_addr global i32 0, align 4
@g = dso_local local_unnamed_addr global i32 0, align 4
@j = dso_local local_unnamed_addr global i32 0, align 4
@str = private unnamed_addr constant [13 x i8] c"I'm not used\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local void @notUsed() local_unnamed_addr #0 {
entry:
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  ret void
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
