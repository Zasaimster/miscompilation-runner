; 138931786636418473996526128962446665617
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/138931786636418473996526128962446665617_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/138931786636418473996526128962446665617.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@x = dso_local global i32 5, align 4
@y = dso_local local_unnamed_addr global i64 6, align 8
@p = dso_local local_unnamed_addr global ptr @x, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local range(i32 0, 4) i32 @main() local_unnamed_addr #0 {
entry:
  %0 = load i32, ptr @x, align 4, !tbaa !5
  %cmp.not = icmp eq i32 %0, 5
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  store i32 6, ptr @x, align 4, !tbaa !5
  %1 = load i64, ptr @y, align 8, !tbaa !9
  %cmp1.not = icmp eq i64 %1, 6
  br i1 %cmp1.not, label %if.end3, label %return

if.end3:                                          ; preds = %if.end
  %2 = load ptr, ptr @p, align 8, !tbaa !11
  %3 = load i32, ptr %2, align 4, !tbaa !5
  %cmp4.not = icmp eq i32 %3, 5
  %. = select i1 %cmp4.not, i32 0, i32 3
  br label %return

return:                                           ; preds = %if.end3, %if.end, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ 2, %if.end ], [ %., %if.end3 ]
  ret i32 %retval.0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!9 = !{!10, !10, i64 0}
!10 = !{!"long", !7, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"p1 int", !13, i64 0}
!13 = !{!"any pointer", !7, i64 0}
