; 157261691122983197977513884915413680462
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/157261691122983197977513884915413680462_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/157261691122983197977513884915413680462.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i32 0, 2) i32 @foo(i32 noundef %x, i32 noundef %y, i32 noundef %i, i32 noundef %j) local_unnamed_addr #0 {
entry:
  %conv = sitofp i32 %i to double
  %conv1 = sitofp i32 %j to double
  %div = fdiv double %conv, %conv1
  %cmp = fcmp ogt double %div, 0.000000e+00
  %conv2 = zext i1 %cmp to i32
  ret i32 %conv2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  ret i32 0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
