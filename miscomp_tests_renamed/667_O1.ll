; 102128079320647834083468408670911912917
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/102128079320647834083468408670911912917.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/102128079320647834083468408670911912917.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local local_unnamed_addr global i32 0, align 4
@b = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a.promoted = load i32, ptr @a, align 4, !tbaa !5
  %cmp8 = icmp ult i32 %a.promoted, 2
  br i1 %cmp8, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  store i32 1, ptr @b, align 4, !tbaa !5
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %inc479 = phi i32 [ %a.promoted, %for.body.lr.ph ], [ %inc4, %for.body ]
  %inc4 = add nuw nsw i32 %inc479, 1
  %cmp = icmp eq i32 %inc479, 0
  br i1 %cmp, label %for.body, label %for.cond.for.end_crit_edge, !llvm.loop !9

for.cond.for.end_crit_edge:                       ; preds = %for.body
  store i32 %inc4, ptr @a, align 4, !tbaa !5
  br label %for.end

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %entry
  %.lcssa = phi i32 [ %inc4, %for.cond.for.end_crit_edge ], [ %a.promoted, %entry ]
  %cmp5.not = icmp eq i32 %.lcssa, 7
  br i1 %cmp5.not, label %if.end, label %if.then

if.then:                                          ; preds = %for.end
  tail call void @abort() #2
  unreachable

if.end:                                           ; preds = %for.end
  ret i32 0
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #1

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

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
