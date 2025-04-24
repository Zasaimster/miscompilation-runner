; 169489338363960741124435577526384431871
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/169489338363960741124435577526384431871.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/169489338363960741124435577526384431871.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @f(ptr noundef captures(none) initializes((0, 12)) %x) local_unnamed_addr #0 {
entry:
  %sc = getelementptr inbounds nuw i8, ptr %x, i64 16
  %0 = load ptr, ptr %sc, align 8, !tbaa !5
  %1 = load i32, ptr %0, align 4, !tbaa !12
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %2 = load i32, ptr %arrayidx1, align 4, !tbaa !12
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %3 = load i32, ptr %arrayidx2, align 4, !tbaa !12
  %a = getelementptr inbounds nuw i8, ptr %x, i64 24
  %4 = load i32, ptr %a, align 8, !tbaa !12
  %arrayidx5 = getelementptr inbounds nuw i8, ptr %x, i64 28
  %5 = load i32, ptr %arrayidx5, align 4, !tbaa !12
  store i32 %1, ptr %arrayidx2, align 4, !tbaa !12
  store i32 %5, ptr %0, align 4, !tbaa !12
  store i32 %4, ptr %arrayidx5, align 4, !tbaa !12
  store i32 %3, ptr %a, align 8, !tbaa !12
  %fc = getelementptr inbounds nuw i8, ptr %x, i64 8
  store i32 %2, ptr %fc, align 8, !tbaa !13
  store ptr %0, ptr %x, align 8, !tbaa !14
  ret i32 undef
}

; Function Attrs: nofree noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #1 {
entry:
  tail call void @exit(i32 noundef 0) #3
  unreachable
}

; Function Attrs: nofree noreturn
declare void @exit(i32 noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!5 = !{!6, !7, i64 16}
!6 = !{!"S", !7, i64 0, !11, i64 8, !7, i64 16, !9, i64 24}
!7 = !{!"p1 int", !8, i64 0}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"int", !9, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!6, !11, i64 8}
!14 = !{!6, !7, i64 0}
