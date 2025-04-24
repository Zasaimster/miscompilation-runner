; 19230883270925197448686646622682041795
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/19230883270925197448686646622682041795_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/19230883270925197448686646622682041795.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@b = dso_local local_unnamed_addr global i32 62, align 4
@a = dso_local local_unnamed_addr global i32 0, align 4
@e = dso_local local_unnamed_addr global i32 0, align 4
@c = dso_local global i32 0, align 4
@d = dso_local global i32 0, align 4
@str = private unnamed_addr constant [14 x i8] c"Hello, World!\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %b.promoted = load i32, ptr @b, align 4, !tbaa !5
  br label %for.body

for.body:                                         ; preds = %for.inc5, %entry
  %f.018 = phi i32 [ 0, %entry ], [ %f.2, %for.inc5 ]
  %storemerge17 = phi i32 [ 0, %entry ], [ %inc6, %for.inc5 ]
  %and11416 = phi i32 [ %b.promoted, %entry ], [ %and1, %for.inc5 ]
  %and = and i32 %f.018, 1
  br label %for.body4

for.body4:                                        ; preds = %for.inc, %for.body
  %f.113 = phi i32 [ %f.018, %for.body ], [ %f.2, %for.inc ]
  %storemerge1112 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ]
  %0 = load volatile i32, ptr @c, align 4, !tbaa !5
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %for.inc, label %if.then

if.then:                                          ; preds = %for.body4
  %1 = load volatile i32, ptr @d, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body4
  %f.2 = phi i32 [ %1, %if.then ], [ %f.113, %for.body4 ]
  %inc = add nuw nsw i32 %storemerge1112, 1
  %exitcond.not = icmp eq i32 %inc, 6
  br i1 %exitcond.not, label %for.inc5, label %for.body4, !llvm.loop !9

for.inc5:                                         ; preds = %for.inc
  %and1 = and i32 %and, %and11416
  %inc6 = add nuw nsw i32 %storemerge17, 1
  %cmp = icmp eq i32 %storemerge17, 0
  br i1 %cmp, label %for.body, label %for.end7, !llvm.loop !12

for.end7:                                         ; preds = %for.inc5
  store i32 2, ptr @a, align 4, !tbaa !5
  store i32 %and1, ptr @b, align 4, !tbaa !5
  store i32 6, ptr @e, align 4, !tbaa !5
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %2 = load i32, ptr @b, align 4, !tbaa !5
  %cmp8.not = icmp eq i32 %2, 0
  br i1 %cmp8.not, label %if.end10, label %if.then9

if.then9:                                         ; preds = %for.end7
  tail call void @abort() #3
  unreachable

if.end10:                                         ; preds = %for.end7
  ret i32 0
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #2

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
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
!12 = distinct !{!12, !10, !11}
