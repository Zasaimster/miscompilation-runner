; 199422929183321749141695568923339615484
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/199422929183321749141695568923339615484.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/199422929183321749141695568923339615484.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local local_unnamed_addr global i32 1, align 4
@b = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @foo(i8 noundef signext %p) local_unnamed_addr #0 {
entry:
  %b.promoted = load i32, ptr @b, align 4, !tbaa !5
  %cmp6 = icmp slt i32 %b.promoted, 1
  br i1 %cmp6, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %a.promoted = load i32, ptr @a, align 4
  %conv = zext i8 %p to i32
  %invariant.op = and i32 %conv, 1
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %inc38 = phi i32 [ %b.promoted, %for.body.lr.ph ], [ %inc, %for.body ]
  %and47 = phi i32 [ %a.promoted, %for.body.lr.ph ], [ %and1.reass, %for.body ]
  %and1.reass = and i32 %and47, %invariant.op
  %inc = add i32 %inc38, 1
  %exitcond.not = icmp eq i32 %inc38, 0
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %for.body, !llvm.loop !9

for.cond.for.end_crit_edge:                       ; preds = %for.body
  store i32 %and1.reass, ptr @a, align 4, !tbaa !5
  store i32 1, ptr @b, align 4, !tbaa !5
  br label %for.end

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %entry
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #1 {
entry:
  %b.promoted.i = load i32, ptr @b, align 4, !tbaa !5
  %cmp6.i = icmp slt i32 %b.promoted.i, 1
  br i1 %cmp6.i, label %for.cond.for.end_crit_edge.i, label %foo.exit

for.cond.for.end_crit_edge.i:                     ; preds = %entry
  store i32 0, ptr @a, align 4, !tbaa !5
  store i32 1, ptr @b, align 4, !tbaa !5
  br label %foo.exit

foo.exit:                                         ; preds = %entry, %for.cond.for.end_crit_edge.i
  %0 = load i32, ptr @a, align 4, !tbaa !5
  %cmp.not = icmp eq i32 %0, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %foo.exit
  tail call void @abort() #3
  unreachable

if.end:                                           ; preds = %foo.exit
  ret i32 0
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #2

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
