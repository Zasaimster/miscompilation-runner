; 129432771752509260275307702703684168466
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/129432771752509260275307702703684168466_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/129432771752509260275307702703684168466.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local noundef ptr @blockvector_for_pc_sect(i64 noundef %pc, ptr noundef readnone captures(none) %symtab) local_unnamed_addr #0 {
entry:
  %0 = load i32, ptr inttoptr (i64 10 to ptr), align 8, !tbaa !5
  %cmp38 = icmp sgt i32 %0, 1
  br i1 %cmp38, label %while.body, label %while.body10.preheader

while.body:                                       ; preds = %while.body, %entry
  %sub41 = phi i32 [ %sub, %while.body ], [ %0, %entry ]
  %top.040 = phi i32 [ %add3.top.0, %while.body ], [ %0, %entry ]
  %bot.039 = phi i32 [ %bot.0.add3, %while.body ], [ 0, %entry ]
  %add = add nuw nsw i32 %sub41, 1
  %shr = lshr i32 %add, 1
  %add3 = add nuw nsw i32 %shr, %bot.039
  %idxprom = zext nneg i32 %add3 to i64
  %arrayidx4 = getelementptr inbounds nuw [2 x ptr], ptr inttoptr (i64 18 to ptr), i64 0, i64 %idxprom
  %1 = load ptr, ptr %arrayidx4, align 8, !tbaa !10
  %2 = load i64, ptr %1, align 8, !tbaa !13
  %cmp5.not = icmp ugt i64 %2, %pc
  %bot.0.add3 = select i1 %cmp5.not, i32 %bot.039, i32 %add3
  %add3.top.0 = select i1 %cmp5.not, i32 %add3, i32 %top.040
  %sub = sub nsw i32 %add3.top.0, %bot.0.add3
  %cmp = icmp sgt i32 %sub, 1
  br i1 %cmp, label %while.body, label %while.body10.preheader, !llvm.loop !17

while.body10.preheader:                           ; preds = %while.body, %entry
  %bot.243.ph = phi i32 [ 0, %entry ], [ %bot.0.add3, %while.body ]
  br label %while.body10

while.cond8:                                      ; preds = %while.body10
  %dec = add nsw i32 %bot.243, -1
  %cmp9 = icmp sgt i32 %bot.243, 0
  br i1 %cmp9, label %while.body10, label %cleanup, !llvm.loop !20

while.body10:                                     ; preds = %while.cond8, %while.body10.preheader
  %bot.243 = phi i32 [ %dec, %while.cond8 ], [ %bot.243.ph, %while.body10.preheader ]
  %idxprom12 = zext nneg i32 %bot.243 to i64
  %arrayidx13 = getelementptr inbounds nuw [2 x ptr], ptr inttoptr (i64 18 to ptr), i64 0, i64 %idxprom12
  %3 = load ptr, ptr %arrayidx13, align 8, !tbaa !10
  %endaddr = getelementptr inbounds nuw i8, ptr %3, i64 8
  %4 = load i64, ptr %endaddr, align 8, !tbaa !21
  %cmp14 = icmp ugt i64 %4, %pc
  br i1 %cmp14, label %cleanup, label %while.cond8

cleanup:                                          ; preds = %while.body10, %while.cond8
  %retval.0.ph = phi ptr [ inttoptr (i64 10 to ptr), %while.body10 ], [ null, %while.cond8 ]
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
!6 = !{!"blockvector", !7, i64 0, !8, i64 8}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"p1 _ZTS5block", !12, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!14, !15, i64 0}
!14 = !{!"block", !15, i64 0, !15, i64 8, !16, i64 16, !11, i64 24, !8, i64 32, !7, i64 36, !8, i64 40}
!15 = !{!"long long", !8, i64 0}
!16 = !{!"p1 _ZTS6symbol", !12, i64 0}
!17 = distinct !{!17, !18, !19}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{!"llvm.loop.unroll.disable"}
!20 = distinct !{!20, !18, !19}
!21 = !{!14, !15, i64 8}
