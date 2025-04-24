; 131543788568274704685506899726766856982
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/131543788568274704685506899726766856982.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/131543788568274704685506899726766856982.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local x86_fp80 @f(x86_fp80 noundef %d, i32 noundef %i) local_unnamed_addr #0 {
entry:
  %fneg = fneg x86_fp80 %d
  %cmp = icmp eq i32 %i, 1
  %mul = fmul x86_fp80 %d, 0xKC0008000000000000000
  %spec.select = select i1 %cmp, x86_fp80 %mul, x86_fp80 %fneg
  %0 = tail call x86_fp80 @llvm.fmuladd.f80(x86_fp80 %d, x86_fp80 %spec.select, x86_fp80 %spec.select)
  %1 = tail call x86_fp80 @llvm.fmuladd.f80(x86_fp80 %d, x86_fp80 %0, x86_fp80 %0)
  %2 = tail call x86_fp80 @llvm.fmuladd.f80(x86_fp80 %d, x86_fp80 %1, x86_fp80 %1)
  %3 = tail call x86_fp80 @llvm.fmuladd.f80(x86_fp80 %d, x86_fp80 %2, x86_fp80 %2)
  %4 = tail call x86_fp80 @llvm.fmuladd.f80(x86_fp80 %d, x86_fp80 %3, x86_fp80 %3)
  ret x86_fp80 %4
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare x86_fp80 @llvm.fmuladd.f80(x86_fp80, x86_fp80, x86_fp80) #1

; Function Attrs: nofree noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  tail call void @exit(i32 noundef 0) #4
  unreachable
}

; Function Attrs: nofree noreturn
declare void @exit(i32 noundef) local_unnamed_addr #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
