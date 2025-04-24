; 119332514358699938244712999754135882482
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/119332514358699938244712999754135882482.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/119332514358699938244712999754135882482.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hpart = dso_local local_unnamed_addr global i64 0, align 8
@lpart = dso_local local_unnamed_addr global i64 0, align 8
@back = dso_local local_unnamed_addr global i64 0, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local i64 @build(i64 noundef %h, i64 noundef %l) local_unnamed_addr #0 {
entry:
  %shl = shl i64 %h, 32
  store i64 %shl, ptr @hpart, align 8, !tbaa !5
  %and = and i64 %l, 4294967295
  store i64 %and, ptr @lpart, align 8, !tbaa !5
  %or = or disjoint i64 %and, %shl
  store i64 %or, ptr @back, align 8, !tbaa !5
  ret i64 %or
}

; Function Attrs: nofree noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #1 {
entry:
  store i64 0, ptr @hpart, align 8, !tbaa !5
  store i64 1, ptr @lpart, align 8, !tbaa !5
  store i64 1, ptr @back, align 8, !tbaa !5
  store i64 0, ptr @hpart, align 8, !tbaa !5
  store i64 0, ptr @lpart, align 8, !tbaa !5
  store i64 0, ptr @back, align 8, !tbaa !5
  store i64 0, ptr @hpart, align 8, !tbaa !5
  store i64 4294967295, ptr @lpart, align 8, !tbaa !5
  store i64 4294967295, ptr @back, align 8, !tbaa !5
  store i64 0, ptr @hpart, align 8, !tbaa !5
  store i64 4294967294, ptr @lpart, align 8, !tbaa !5
  store i64 4294967294, ptr @back, align 8, !tbaa !5
  store i64 4294967296, ptr @hpart, align 8, !tbaa !5
  store i64 1, ptr @lpart, align 8, !tbaa !5
  store i64 4294967297, ptr @back, align 8, !tbaa !5
  store i64 4294967296, ptr @hpart, align 8, !tbaa !5
  store i64 0, ptr @lpart, align 8, !tbaa !5
  store i64 4294967296, ptr @back, align 8, !tbaa !5
  store i64 4294967296, ptr @hpart, align 8, !tbaa !5
  store i64 4294967295, ptr @lpart, align 8, !tbaa !5
  store i64 8589934591, ptr @back, align 8, !tbaa !5
  store i64 4294967296, ptr @hpart, align 8, !tbaa !5
  store i64 4294967294, ptr @lpart, align 8, !tbaa !5
  store i64 8589934590, ptr @back, align 8, !tbaa !5
  store i64 -4294967296, ptr @hpart, align 8, !tbaa !5
  store i64 1, ptr @lpart, align 8, !tbaa !5
  store i64 -4294967295, ptr @back, align 8, !tbaa !5
  store i64 -4294967296, ptr @hpart, align 8, !tbaa !5
  store i64 0, ptr @lpart, align 8, !tbaa !5
  store i64 -4294967296, ptr @back, align 8, !tbaa !5
  store i64 -4294967296, ptr @hpart, align 8, !tbaa !5
  store i64 4294967295, ptr @lpart, align 8, !tbaa !5
  store i64 -1, ptr @back, align 8, !tbaa !5
  store i64 -4294967296, ptr @hpart, align 8, !tbaa !5
  store i64 4294967294, ptr @lpart, align 8, !tbaa !5
  store i64 -2, ptr @back, align 8, !tbaa !5
  tail call void @exit(i32 noundef 0) #3
  unreachable
}

; Function Attrs: nofree noreturn
declare void @exit(i32 noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"long long", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
