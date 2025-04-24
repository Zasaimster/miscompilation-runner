; 100912070101420002792340463729012712588
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/100912070101420002792340463729012712588_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/100912070101420002792340463729012712588.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i32 0, 16) i32 @line_hints(ptr noundef readonly captures(none) %fh, ptr noundef readonly captures(none) %p0, ptr noundef readonly captures(none) %p1) local_unnamed_addr #0 {
entry:
  %y = getelementptr inbounds nuw i8, ptr %p1, i64 8
  %0 = load i64, ptr %y, align 8, !tbaa !5
  %y1 = getelementptr inbounds nuw i8, ptr %p0, i64 8
  %1 = load i64, ptr %y1, align 8, !tbaa !5
  %sub = sub nsw i64 %0, %1
  %x_inverted = getelementptr inbounds nuw i8, ptr %fh, i64 4
  %2 = load i32, ptr %x_inverted, align 4, !tbaa !10
  %y_inverted = getelementptr inbounds nuw i8, ptr %fh, i64 8
  %3 = load i32, ptr %y_inverted, align 4, !tbaa !13
  %tobool.not = icmp eq i32 %2, 0
  %spec.select = select i1 %tobool.not, i64 5, i64 -5
  %tobool3.not = icmp eq i32 %3, 0
  %sub5 = sub nsw i64 0, %sub
  %dy.0 = select i1 %tobool3.not, i64 %sub, i64 %sub5
  %4 = load i32, ptr %fh, align 4, !tbaa !14
  %tobool7.not = icmp eq i32 %4, 0
  br i1 %tobool7.not, label %if.end9, label %if.then8

if.then8:                                         ; preds = %entry
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %entry
  %xi.0 = phi i32 [ %3, %if.then8 ], [ %2, %entry ]
  %yi.0 = phi i32 [ %2, %if.then8 ], [ %3, %entry ]
  %dy.1 = phi i64 [ %spec.select, %if.then8 ], [ %dy.0, %entry ]
  %dx.1 = phi i64 [ %dy.0, %if.then8 ], [ %spec.select, %entry ]
  %cmp = icmp slt i64 %dx.1, 0
  %cond = tail call i64 @llvm.abs.i64(i64 %dx.1, i1 true)
  %cond16 = tail call i64 @llvm.abs.i64(i64 %dy.1, i1 true)
  %cmp17.not = icmp eq i64 %dy.1, 0
  %shr = lshr i64 %cond16, 4
  %cmp18.not = icmp samesign ugt i64 %cond, %shr
  %or.cond = select i1 %cmp17.not, i1 true, i1 %cmp18.not
  br i1 %or.cond, label %if.else, label %if.then19

if.then19:                                        ; preds = %if.end9
  %cmp20 = icmp sgt i64 %dy.1, 0
  %cond21 = select i1 %cmp20, i32 2, i32 1
  %tobool22.not = icmp eq i32 %xi.0, 0
  %xor = xor i32 %cond21, 3
  %spec.select61 = select i1 %tobool22.not, i32 %cond21, i32 %xor
  br label %if.end38

if.else:                                          ; preds = %if.end9
  %cmp25.not = icmp eq i64 %dx.1, 0
  %shr27 = lshr i64 %cond, 4
  %cmp28.not = icmp samesign ugt i64 %cond16, %shr27
  %or.cond62 = select i1 %cmp25.not, i1 true, i1 %cmp28.not
  br i1 %or.cond62, label %if.end38, label %if.then29

if.then29:                                        ; preds = %if.else
  %cond31 = select i1 %cmp, i32 8, i32 4
  %tobool32.not = icmp eq i32 %yi.0, 0
  %xor34 = xor i32 %cond31, 12
  %spec.select63 = select i1 %tobool32.not, i32 %cond31, i32 %xor34
  br label %if.end38

if.end38:                                         ; preds = %if.then29, %if.else, %if.then19
  %hints.0 = phi i32 [ %spec.select61, %if.then19 ], [ %spec.select63, %if.then29 ], [ 0, %if.else ]
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
!5 = !{!6, !7, i64 8}
!6 = !{!"gs_fixed_point_s", !7, i64 0, !7, i64 8}
!7 = !{!"long", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !12, i64 4}
!11 = !{!"font_hints_s", !12, i64 0, !12, i64 4, !12, i64 8}
!12 = !{!"int", !8, i64 0}
!13 = !{!11, !12, i64 8}
!14 = !{!11, !12, i64 0}
