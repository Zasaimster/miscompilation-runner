; 191076613778641936862791490813422857662
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/191076613778641936862791490813422857662.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/191076613778641936862791490813422857662.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@loop_1 = dso_local local_unnamed_addr global i32 100, align 4
@loop_2 = dso_local local_unnamed_addr global i32 7, align 4
@flag = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local noundef i32 @test() local_unnamed_addr #0 {
entry:
  %0 = load i32, ptr @loop_1, align 4, !tbaa !5
  %cmp13 = icmp sgt i32 %0, 0
  br i1 %cmp13, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %flag.promoted = load i32, ptr @flag, align 4
  %1 = load i32, ptr @loop_2, align 4
  %cmp19 = icmp slt i32 %1, 1
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %counter.015 = phi i32 [ 0, %while.body.lr.ph ], [ %counter.2, %while.body ]
  %inc61214 = phi i32 [ %flag.promoted, %while.body.lr.ph ], [ %inc6, %while.body ]
  %and = and i32 %inc61214, 1
  %tobool.not = icmp eq i32 %and, 0
  %brmerge = select i1 %tobool.not, i1 true, i1 %cmp19
  %2 = select i1 %brmerge, i32 0, i32 %1
  %counter.2 = add i32 %counter.015, %2
  %inc6 = add nsw i32 %inc61214, 1
  %cmp = icmp sgt i32 %0, %counter.2
  br i1 %cmp, label %while.body, label %while.cond.while.end_crit_edge, !llvm.loop !9

while.cond.while.end_crit_edge:                   ; preds = %while.body
  store i32 %inc6, ptr @flag, align 4, !tbaa !5
  br label %while.end

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %entry
  ret i32 1
}

; Function Attrs: nofree noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #1 {
entry:
  %call = tail call i32 @test()
  tail call void @exit(i32 noundef 0) #3
  unreachable
}

; Function Attrs: nofree noreturn
declare void @exit(i32 noundef) local_unnamed_addr #2

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
