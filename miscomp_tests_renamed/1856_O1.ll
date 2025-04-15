; 175480834616094707739306105610402120543
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/175480834616094707739306105610402120543.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/175480834616094707739306105610402120543.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i32 0, 16) i32 @line_hints(ptr noundef readonly captures(none) %fh, ptr noundef readonly captures(none) %p0, ptr noundef readonly captures(none) %p1) local_unnamed_addr #0 {
entry:
  %0 = load i64, ptr %p1, align 8, !tbaa !5
  %1 = load i64, ptr %p0, align 8, !tbaa !5
  %sub = sub nsw i64 %0, %1
  %y = getelementptr inbounds nuw i8, ptr %p1, i64 8
  %2 = load i64, ptr %y, align 8, !tbaa !10
  %y2 = getelementptr inbounds nuw i8, ptr %p0, i64 8
  %3 = load i64, ptr %y2, align 8, !tbaa !10
  %sub3 = sub nsw i64 %2, %3
  %x_inverted = getelementptr inbounds nuw i8, ptr %fh, i64 4
  %4 = load i32, ptr %x_inverted, align 4, !tbaa !11
  %y_inverted = getelementptr inbounds nuw i8, ptr %fh, i64 8
  %5 = load i32, ptr %y_inverted, align 4, !tbaa !14
  %tobool.not = icmp eq i32 %5, 0
  %sub5 = sub nsw i64 0, %sub3
  %spec.select = select i1 %tobool.not, i64 %sub3, i64 %sub5
  %6 = load i32, ptr %fh, align 4, !tbaa !15
  %tobool7.not = icmp eq i32 %6, 0
  br i1 %tobool7.not, label %if.end9, label %if.then8

if.then8:                                         ; preds = %entry
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %entry
  %xi.0 = phi i32 [ %5, %if.then8 ], [ %4, %entry ]
  %yi.0 = phi i32 [ %4, %if.then8 ], [ %5, %entry ]
  %dy.1 = phi i64 [ %sub, %if.then8 ], [ %spec.select, %entry ]
  %dx.0 = phi i64 [ %spec.select, %if.then8 ], [ %sub, %entry ]
  %cmp10 = icmp slt i64 %dx.0, 0
  %cond = tail call i64 @llvm.abs.i64(i64 %dx.0, i1 true)
  %cond17 = tail call i64 @llvm.abs.i64(i64 %dy.1, i1 true)
  %cmp18.not = icmp eq i64 %dy.1, 0
  %shr = lshr i64 %cond17, 4
  %cmp19.not = icmp samesign ugt i64 %cond, %shr
  %or.cond = select i1 %cmp18.not, i1 true, i1 %cmp19.not
  br i1 %or.cond, label %if.else, label %if.then20

if.then20:                                        ; preds = %if.end9
  %cmp21 = icmp sgt i64 %dy.1, 0
  %cond22 = select i1 %cmp21, i32 2, i32 1
  %tobool23.not = icmp eq i32 %xi.0, 0
  %xor = xor i32 %cond22, 3
  %spec.select63 = select i1 %tobool23.not, i32 %cond22, i32 %xor
  br label %if.end39

if.else:                                          ; preds = %if.end9
  %cmp26.not = icmp eq i64 %dx.0, 0
  %shr28 = lshr i64 %cond, 4
  %cmp29.not = icmp samesign ugt i64 %cond17, %shr28
  %or.cond64 = select i1 %cmp26.not, i1 true, i1 %cmp29.not
  br i1 %or.cond64, label %if.end39, label %if.then30

if.then30:                                        ; preds = %if.else
  %cond32 = select i1 %cmp10, i32 8, i32 4
  %tobool33.not = icmp eq i32 %yi.0, 0
  %xor35 = xor i32 %cond32, 12
  %spec.select65 = select i1 %tobool33.not, i32 %cond32, i32 %xor35
  br label %if.end39

if.end39:                                         ; preds = %if.then30, %if.then20, %if.else
  %hints.0 = phi i32 [ %spec.select63, %if.then20 ], [ %spec.select65, %if.then30 ], [ 0, %if.else ]
  ret i32 %hints.0
}

; Function Attrs: nofree noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #1 {
entry:
  tail call void @exit(i32 noundef 0) #4
  unreachable
}

; Function Attrs: nofree noreturn
declare void @exit(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"gs_fixed_point_s", !7, i64 0, !7, i64 8}
!7 = !{!"long", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!6, !7, i64 8}
!11 = !{!12, !13, i64 4}
!12 = !{!"font_hints_s", !13, i64 0, !13, i64 4, !13, i64 8}
!13 = !{!"int", !8, i64 0}
!14 = !{!12, !13, i64 8}
!15 = !{!12, !13, i64 0}
