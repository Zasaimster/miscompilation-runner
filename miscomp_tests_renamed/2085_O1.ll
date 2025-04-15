; 157703292774674098706134515898995391862
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/157703292774674098706134515898995391862.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/157703292774674098706134515898995391862.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { i8, [3 x i8] }

@b = dso_local local_unnamed_addr global %struct.S zeroinitializer, align 4
@a = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local range(i32 10, 12) i32 @main() local_unnamed_addr #0 {
entry:
  %bf.load = load i8, ptr @b, align 4
  %bf.clear = and i8 %bf.load, 1
  %0 = or disjoint i8 %bf.clear, 10
  %or = zext nneg i8 %0 to i32
  store i32 %or, ptr @a, align 4, !tbaa !5
  ret i32 %or
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
