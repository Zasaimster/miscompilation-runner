; 139250314982628694997144696378881194152
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/139250314982628694997144696378881194152.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/139250314982628694997144696378881194152.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse noreturn nosync nounwind memory(none) uwtable
define dso_local noalias noundef nonnull ptr @test(ptr noundef readonly captures(none) %node) local_unnamed_addr #0 {
entry:
  br label %while.body

while.body:                                       ; preds = %entry, %while.body
  br label %while.body, !llvm.loop !5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @bar() local_unnamed_addr #1 {
entry:
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @baz() local_unnamed_addr #1 {
entry:
  ret i32 0
}

; Function Attrs: nofree norecurse noreturn nosync nounwind memory(none) uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i, %entry
  br label %while.body.i, !llvm.loop !5
}

attributes #0 = { nofree norecurse noreturn nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.unroll.disable"}
