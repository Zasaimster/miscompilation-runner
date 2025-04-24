; 13970641945627529745424802935269174820
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/13970641945627529745424802935269174820.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/13970641945627529745424802935269174820.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@e = dso_local local_unnamed_addr global i32 0, align 4
@d = dso_local local_unnamed_addr global i32 0, align 4
@b = dso_local local_unnamed_addr global i32 0, align 4
@c = dso_local local_unnamed_addr global i32 0, align 4
@a = dso_local local_unnamed_addr global [2 x i32] zeroinitializer, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @foo(i32 noundef %x, i32 noundef %y) local_unnamed_addr #0 {
entry:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @bar() local_unnamed_addr #0 {
entry:
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local noundef i32 @main() local_unnamed_addr #1 {
entry:
  %0 = load i32, ptr @c, align 4, !tbaa !5
  %tobool.not = icmp eq i32 %0, 0
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry, %for.inc
  %storemerge2 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  br i1 %tobool.not, label %for.inc, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  store i32 0, ptr @a, align 4, !tbaa !5
  store i32 0, ptr @b, align 4, !tbaa !5
  br label %while.body

while.body:                                       ; preds = %while.body, %while.body.lr.ph
  br label %while.body

for.inc:                                          ; preds = %while.cond.preheader
  %inc = add nuw nsw i32 %storemerge2, 1
  %cmp = icmp eq i32 %storemerge2, 0
  br i1 %cmp, label %while.cond.preheader, label %for.end, !llvm.loop !9

for.end:                                          ; preds = %for.inc
  store i32 2, ptr @b, align 4, !tbaa !5
  ret i32 0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
