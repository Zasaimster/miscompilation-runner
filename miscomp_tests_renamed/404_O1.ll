; 106694013586888747529688562844147217016
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/106694013586888747529688562844147217016.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/106694013586888747529688562844147217016.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @foo(ptr noundef captures(none) %p, ptr noundef readnone captures(none) %q) local_unnamed_addr #0 {
entry:
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %p, i64 8
  %0 = load ptr, ptr %p, align 8, !tbaa !5
  %incdec.ptr1 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store ptr %incdec.ptr1, ptr %p, align 8, !tbaa !5
  %1 = load i32, ptr %0, align 4, !tbaa !10
  %2 = load ptr, ptr %incdec.ptr, align 8, !tbaa !5
  %incdec.ptr3 = getelementptr inbounds nuw i8, ptr %2, i64 4
  store ptr %incdec.ptr3, ptr %incdec.ptr, align 8, !tbaa !5
  store i32 %1, ptr %2, align 4, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @bar(ptr noundef captures(none) %p, ptr noundef readonly captures(none) %q) local_unnamed_addr #1 {
entry:
  %0 = load i32, ptr %q, align 4, !tbaa !10
  %1 = load ptr, ptr %p, align 8, !tbaa !5
  store i32 %0, ptr %1, align 4, !tbaa !10
  %incdec.ptr2 = getelementptr inbounds nuw i8, ptr %1, i64 4
  store ptr %incdec.ptr2, ptr %p, align 8, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @baz(ptr noundef captures(none) %p, ptr noundef readonly captures(none) %q) local_unnamed_addr #1 {
entry:
  %0 = load i32, ptr %q, align 4, !tbaa !10
  %1 = load ptr, ptr %p, align 8, !tbaa !5
  store i32 %0, ptr %1, align 4, !tbaa !10
  %incdec.ptr2 = getelementptr inbounds nuw i8, ptr %1, i64 4
  store ptr %incdec.ptr2, ptr %p, align 8, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree norecurse noreturn nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  unreachable
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse noreturn nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"p1 int", !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !8, i64 0}
