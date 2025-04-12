; 150929585642545471539607571065427050980
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/150929585642545471539607571065427050980_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/150929585642545471539607571065427050980.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@henry.fred = internal unnamed_addr global i32 4567, align 4
@.str = private unnamed_addr constant [11 x i8] c"Value: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@fred = internal unnamed_addr global i1 false, align 4

; Function Attrs: nofree nounwind uwtable
define dso_local void @henry() local_unnamed_addr #0 {
entry:
  %0 = load i32, ptr @henry.fred, align 4, !tbaa !5
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %0)
  %1 = load i32, ptr @henry.fred, align 4, !tbaa !5
  %inc = add nsw i32 %1, 1
  store i32 %inc, ptr @henry.fred, align 4, !tbaa !5
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %.b4 = load i1, ptr @fred, align 4
  %0 = select i1 %.b4, i32 8901, i32 1234
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %0)
  %1 = load i32, ptr @henry.fred, align 4, !tbaa !5
  %call.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %1)
  %2 = load i32, ptr @henry.fred, align 4, !tbaa !5
  %inc.i = add nsw i32 %2, 1
  store i32 %inc.i, ptr @henry.fred, align 4, !tbaa !5
  %call.i5 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %inc.i)
  %3 = load i32, ptr @henry.fred, align 4, !tbaa !5
  %inc.i6 = add nsw i32 %3, 1
  store i32 %inc.i6, ptr @henry.fred, align 4, !tbaa !5
  %call.i7 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %inc.i6)
  %4 = load i32, ptr @henry.fred, align 4, !tbaa !5
  %inc.i8 = add nsw i32 %4, 1
  store i32 %inc.i8, ptr @henry.fred, align 4, !tbaa !5
  %call.i9 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %inc.i8)
  %5 = load i32, ptr @henry.fred, align 4, !tbaa !5
  %inc.i10 = add nsw i32 %5, 1
  store i32 %inc.i10, ptr @henry.fred, align 4, !tbaa !5
  %.b = load i1, ptr @fred, align 4
  %6 = select i1 %.b, i32 8901, i32 1234
  %call1 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %6)
  store i1 true, ptr @fred, align 4
  %call2 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef 8901)
  %call3 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef 2345)
  ret i32 0
}

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
