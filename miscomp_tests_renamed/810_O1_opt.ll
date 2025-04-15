; 174504776196928545272172701309531054367
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/174504776196928545272172701309531054367_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/174504776196928545272172701309531054367.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p = dso_local global ptr null, align 8

; Function Attrs: nofree norecurse nounwind memory(readwrite, argmem: none) uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %x = alloca [0 x i32], align 4
  store i32 2, ptr %x, align 4, !tbaa !5
  br label %lab

lab:                                              ; preds = %lab, %entry
  %n.0 = phi i32 [ 0, %entry ], [ %inc, %lab ]
  store volatile ptr %x, ptr @p, align 8, !tbaa !9
  %inc = add nuw nsw i32 %n.0, 1
  %exitcond.not = icmp eq i32 %inc, 1000000
  br i1 %exitcond.not, label %if.end, label %lab

if.end:                                           ; preds = %lab
  ret i32 0
}

attributes #0 = { nofree norecurse nounwind memory(readwrite, argmem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!10 = !{!"any pointer", !7, i64 0}
