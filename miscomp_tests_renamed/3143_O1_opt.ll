; 120441174311989826463918153298775692188
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/120441174311989826463918153298775692188_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/120441174311989826463918153298775692188.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@e = dso_local local_unnamed_addr global i32 0, align 4
@d = dso_local local_unnamed_addr global i32 0, align 4
@b = dso_local local_unnamed_addr global i32 0, align 4
@c = dso_local local_unnamed_addr global i32 0, align 4
@a = dso_local local_unnamed_addr global [42 x i32] zeroinitializer, align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @foo(i32 noundef %x, i32 noundef %y) local_unnamed_addr #0 {
entry:
  ret void
}

; Function Attrs: nofree norecurse noreturn nosync nounwind memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local noundef i32 @bar() local_unnamed_addr #1 {
entry:
  store i32 0, ptr @e, align 4, !tbaa !5
  store i32 1, ptr @d, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.cond, %entry
  br label %for.cond, !llvm.loop !9
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  %0 = load i32, ptr @c, align 4, !tbaa !5
  %tobool.not = icmp eq i32 %0, 0
  br label %while.cond

while.cond:                                       ; preds = %for.inc, %entry
  %storemerge3 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  br i1 %tobool.not, label %for.inc, label %while.body

while.body:                                       ; preds = %while.cond
  store i32 0, ptr @b, align 4, !tbaa !5
  store i32 0, ptr @a, align 16, !tbaa !5
  store i32 0, ptr @e, align 4, !tbaa !5
  store i32 1, ptr @d, align 4, !tbaa !5
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i, %while.body
  br label %for.cond.i, !llvm.loop !9

for.inc:                                          ; preds = %while.cond
  %inc = add nuw nsw i32 %storemerge3, 1
  %cmp = icmp eq i32 %storemerge3, 0
  br i1 %cmp, label %while.cond, label %for.end, !llvm.loop !11

for.end:                                          ; preds = %for.inc
  store i32 2, ptr @b, align 4, !tbaa !5
  ret i32 0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse noreturn nosync nounwind memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = distinct !{!11, !12, !10}
!12 = !{!"llvm.loop.mustprogress"}
