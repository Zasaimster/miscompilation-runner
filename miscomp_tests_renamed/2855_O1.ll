; 106393774196686396787987109647191070834
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/106393774196686396787987109647191070834.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/106393774196686396787987109647191070834.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local local_unnamed_addr global i32 1, align 4
@a = dso_local local_unnamed_addr global i32 0, align 4
@b = dso_local local_unnamed_addr global i32 0, align 4
@c = dso_local local_unnamed_addr global i32 0, align 4
@e = dso_local local_unnamed_addr global i32 0, align 4
@str = private unnamed_addr constant [19 x i8] c"This code is dead.\00", align 1

; Function Attrs: nofree noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  tail call fastcc void @foo()
  tail call void @exit(i32 noundef 0) #4
  unreachable
}

; Function Attrs: nofree noreturn
declare void @exit(i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @foo() unnamed_addr #2 {
entry:
  %b.promoted16 = load i32, ptr @b, align 4, !tbaa !5
  %0 = load i32, ptr @d, align 4
  %tobool.not = icmp eq i32 %0, 0
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %entry, %for.inc7
  %f.020 = phi i32 [ 1, %entry ], [ %inc8, %for.inc7 ]
  %inc.lcssa1819 = phi i32 [ %b.promoted16, %entry ], [ %inc.lcssa17, %for.inc7 ]
  %cmp214 = icmp slt i32 %inc.lcssa1819, 1
  br i1 %cmp214, label %for.body3.lr.ph, label %for.inc7

for.body3.lr.ph:                                  ; preds = %for.cond1.preheader
  br i1 %tobool.not, label %for.cond1.for.inc7_crit_edge, label %if.then

if.then:                                          ; preds = %for.body3.lr.ph
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %cleanup

for.cond1.for.inc7_crit_edge:                     ; preds = %for.body3.lr.ph
  store i32 1, ptr @b, align 4, !tbaa !5
  br label %for.inc7

for.inc7:                                         ; preds = %for.cond1.for.inc7_crit_edge, %for.cond1.preheader
  %inc.lcssa17 = phi i32 [ 1, %for.cond1.for.inc7_crit_edge ], [ %inc.lcssa1819, %for.cond1.preheader ]
  %inc8 = add nuw nsw i32 %f.020, 1
  %exitcond.not = icmp eq i32 %inc8, 3
  br i1 %exitcond.not, label %cleanup, label %for.cond1.preheader, !llvm.loop !9

cleanup:                                          ; preds = %for.inc7, %if.then
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #3

attributes #0 = { nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { noreturn nounwind }

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
