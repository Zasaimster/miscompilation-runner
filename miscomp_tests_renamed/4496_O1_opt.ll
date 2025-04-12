; 166915905954934920576119103412810251817
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/166915905954934920576119103412810251817_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/166915905954934920576119103412810251817.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local noundef ptr @blockvector_for_pc_sect(i64 noundef %pc, ptr noundef readonly captures(none) %symtab) local_unnamed_addr #0 {
entry:
  %0 = load ptr, ptr %symtab, align 8, !tbaa !5
  %block = getelementptr inbounds nuw i8, ptr %0, i64 8
  %1 = load i32, ptr %0, align 8, !tbaa !11
  %cmp38 = icmp sgt i32 %1, 1
  br i1 %cmp38, label %while.body, label %while.body10.preheader

while.body:                                       ; preds = %while.body, %entry
  %sub41 = phi i32 [ %sub, %while.body ], [ %1, %entry ]
  %top.040 = phi i32 [ %add3.top.0, %while.body ], [ %1, %entry ]
  %bot.039 = phi i32 [ %bot.0.add3, %while.body ], [ 0, %entry ]
  %add = add nuw nsw i32 %sub41, 1
  %shr = lshr i32 %add, 1
  %add3 = add nuw nsw i32 %shr, %bot.039
  %idxprom = zext nneg i32 %add3 to i64
  %arrayidx4 = getelementptr inbounds nuw [2 x ptr], ptr %block, i64 0, i64 %idxprom
  %2 = load ptr, ptr %arrayidx4, align 8, !tbaa !14
  %3 = load i64, ptr %2, align 8, !tbaa !16
  %cmp5.not = icmp ugt i64 %3, %pc
  %bot.0.add3 = select i1 %cmp5.not, i32 %bot.039, i32 %add3
  %add3.top.0 = select i1 %cmp5.not, i32 %add3, i32 %top.040
  %sub = sub nsw i32 %add3.top.0, %bot.0.add3
  %cmp = icmp sgt i32 %sub, 1
  br i1 %cmp, label %while.body, label %while.body10.preheader, !llvm.loop !20

while.body10.preheader:                           ; preds = %while.body, %entry
  %bot.243.ph = phi i32 [ 0, %entry ], [ %bot.0.add3, %while.body ]
  br label %while.body10

while.cond8:                                      ; preds = %while.body10
  %dec = add nsw i32 %bot.243, -1
  %cmp9 = icmp sgt i32 %bot.243, 0
  br i1 %cmp9, label %while.body10, label %cleanup, !llvm.loop !23

while.body10:                                     ; preds = %while.cond8, %while.body10.preheader
  %bot.243 = phi i32 [ %dec, %while.cond8 ], [ %bot.243.ph, %while.body10.preheader ]
  %idxprom12 = zext nneg i32 %bot.243 to i64
  %arrayidx13 = getelementptr inbounds nuw [2 x ptr], ptr %block, i64 0, i64 %idxprom12
  %4 = load ptr, ptr %arrayidx13, align 8, !tbaa !14
  %endaddr = getelementptr inbounds nuw i8, ptr %4, i64 8
  %5 = load i64, ptr %endaddr, align 8, !tbaa !24
  %cmp14 = icmp ugt i64 %5, %pc
  br i1 %cmp14, label %cleanup, label %while.cond8

cleanup:                                          ; preds = %while.body10, %while.cond8
  %retval.0.ph = phi ptr [ %0, %while.body10 ], [ null, %while.cond8 ]
  ret ptr %retval.0.ph
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  ret i32 0
}

attributes #0 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"symtab", !7, i64 0}
!7 = !{!"p1 _ZTS11blockvector", !8, i64 0}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !13, i64 0}
!12 = !{!"blockvector", !13, i64 0, !9, i64 8}
!13 = !{!"int", !9, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"p1 _ZTS5block", !8, i64 0}
!16 = !{!17, !18, i64 0}
!17 = !{!"block", !18, i64 0, !18, i64 8, !19, i64 16, !15, i64 24, !9, i64 32, !13, i64 36, !9, i64 40}
!18 = !{!"long long", !9, i64 0}
!19 = !{!"p1 _ZTS6symbol", !8, i64 0}
!20 = distinct !{!20, !21, !22}
!21 = !{!"llvm.loop.mustprogress"}
!22 = !{!"llvm.loop.unroll.disable"}
!23 = distinct !{!23, !21, !22}
!24 = !{!17, !18, i64 8}
