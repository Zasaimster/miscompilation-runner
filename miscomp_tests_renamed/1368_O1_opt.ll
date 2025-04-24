; 124531764568008758568012426500419522553
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/124531764568008758568012426500419522553_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/124531764568008758568012426500419522553.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree nounwind uwtable
define dso_local range(i32 0, 2) i32 @doit(i32 noundef %sel, i32 noundef %n, ptr noundef captures(none) %p) local_unnamed_addr #0 {
entry:
  switch i32 %sel, label %sw.default [
    i32 2, label %do.body11.preheader
    i32 1, label %do.body2.preheader
  ]

do.body2.preheader:                               ; preds = %entry
  %p.promoted = load i64, ptr %p, align 8, !tbaa !5
  br label %do.body2

do.body11.preheader:                              ; preds = %entry
  %p.promoted30 = load i64, ptr %p, align 8, !tbaa !9
  br label %do.body11

do.body2:                                         ; preds = %do.body2, %do.body2.preheader
  %add329 = phi i64 [ %add3, %do.body2 ], [ %p.promoted, %do.body2.preheader ]
  %n.addr.0 = phi i32 [ %dec5, %do.body2 ], [ %n, %do.body2.preheader ]
  %add3 = shl nsw i64 %add329, 1
  %dec5 = add nsw i32 %n.addr.0, -1
  %tobool6.not = icmp eq i32 %dec5, 0
  br i1 %tobool6.not, label %cleanup, label %do.body2, !llvm.loop !11

do.body11:                                        ; preds = %do.body11, %do.body11.preheader
  %add1231 = phi i64 [ %add12, %do.body11 ], [ %p.promoted30, %do.body11.preheader ]
  %n.addr.1 = phi i32 [ %dec14, %do.body11 ], [ %n, %do.body11.preheader ]
  %add12 = shl nsw i64 %add1231, 1
  %dec14 = add nsw i32 %n.addr.1, -1
  %tobool15.not = icmp eq i32 %dec14, 0
  br i1 %tobool15.not, label %cleanup, label %do.body11, !llvm.loop !14

sw.default:                                       ; preds = %entry
  tail call void @abort() #3
  unreachable

cleanup:                                          ; preds = %do.body11, %do.body2
  %storemerge = phi i64 [ %add12, %do.body11 ], [ %add3, %do.body2 ]
  %retval.0.in.in = phi i64 [ %add1231, %do.body11 ], [ %add329, %do.body2 ]
  store i64 %storemerge, ptr %p, align 8, !tbaa !15
  %retval.0.in = icmp eq i64 %retval.0.in.in, 0
  %retval.0 = zext i1 %retval.0.in to i32
  ret i32 %retval.0
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #1

; Function Attrs: cold nofree noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  tail call void @abort() #3
  unreachable
}

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"long", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"long long", !7, i64 0}
!11 = distinct !{!11, !12, !13}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = distinct !{!14, !12, !13}
!15 = !{!7, !7, i64 0}
