; 190026777279694579514574777971791794188
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/190026777279694579514574777971791794188_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/190026777279694579514574777971791794188.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i32, %struct.anon.0 }
%struct.anon.0 = type { i32, %union.anon }
%union.anon = type { i32 }

@foo = dso_local local_unnamed_addr global %struct.anon zeroinitializer, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local noundef i32 @main(i32 noundef %argc, ptr noundef readnone captures(none) %argv) local_unnamed_addr #0 {
entry:
  store i32 6, ptr getelementptr inbounds nuw (i8, ptr @foo, i64 8), align 4, !tbaa !5
  store i32 5, ptr getelementptr inbounds nuw (i8, ptr @foo, i64 4), align 4, !tbaa !8
  ret i32 0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !10, i64 4}
!9 = !{!"", !10, i64 0, !11, i64 4}
!10 = !{!"int", !6, i64 0}
!11 = !{!"", !10, i64 0, !6, i64 4}
