; 130426997814767561729393820541013664941
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/130426997814767561729393820541013664941.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/130426997814767561729393820541013664941.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@s = dso_local local_unnamed_addr global ptr inttoptr (i64 10 to ptr), align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local range(i32 0, 3) i32 @main() local_unnamed_addr #0 {
entry:
  %0 = load ptr, ptr @s, align 8, !tbaa !5
  %1 = load i32, ptr %0, align 4, !tbaa !10
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %2 = load i32, ptr %b, align 4, !tbaa !13
  %cmp1.not = icmp eq i32 %2, 2
  %. = select i1 %cmp1.not, i32 0, i32 2
  br label %return

return:                                           ; preds = %if.end, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ %., %if.end ]
  ret i32 %retval.0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"p1 _ZTS1S", !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !12, i64 0}
!11 = !{!"S", !12, i64 0, !12, i64 4}
!12 = !{!"int", !8, i64 0}
!13 = !{!11, !12, i64 4}
