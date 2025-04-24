; 100150040680232913311702847805003903045
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/100150040680232913311702847805003903045_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/100150040680232913311702847805003903045.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S1 = type { i32, i32 }

@gs1 = dso_local global %struct.S1 { i32 1, i32 2 }, align 4
@.compoundliteral = internal global { %struct.S1, ptr, <{ i32, i32, [8 x i32] }> } { %struct.S1 { i32 1, i32 2 }, ptr @gs1, <{ i32, i32, [8 x i32] }> <{ i32 1, i32 2, [8 x i32] zeroinitializer }> }, align 8
@s = dso_local local_unnamed_addr global ptr @.compoundliteral, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local range(i32 0, 7) i32 @main() local_unnamed_addr #0 {
entry:
  %0 = load ptr, ptr @s, align 8, !tbaa !5
  %1 = load i32, ptr %0, align 8, !tbaa !10
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %2 = load i32, ptr %b, align 4, !tbaa !15
  %cmp2.not = icmp eq i32 %2, 2
  br i1 %cmp2.not, label %if.end4, label %return

if.end4:                                          ; preds = %if.end
  %ps1 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %3 = load ptr, ptr %ps1, align 8, !tbaa !16
  %4 = load i32, ptr %3, align 4, !tbaa !17
  %cmp6.not = icmp eq i32 %4, 1
  br i1 %cmp6.not, label %if.end8, label %return

if.end8:                                          ; preds = %if.end4
  %b10 = getelementptr inbounds nuw i8, ptr %3, i64 4
  %5 = load i32, ptr %b10, align 4, !tbaa !18
  %cmp11.not = icmp eq i32 %5, 2
  br i1 %cmp11.not, label %if.end13, label %return

if.end13:                                         ; preds = %if.end8
  %arr = getelementptr inbounds nuw i8, ptr %0, i64 16
  %6 = load i32, ptr %arr, align 8, !tbaa !19
  %cmp14.not = icmp eq i32 %6, 1
  br i1 %cmp14.not, label %if.end16, label %return

if.end16:                                         ; preds = %if.end13
  %arrayidx18 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %7 = load i32, ptr %arrayidx18, align 4, !tbaa !19
  %cmp19.not = icmp eq i32 %7, 2
  %. = select i1 %cmp19.not, i32 0, i32 6
  br label %return

return:                                           ; preds = %if.end16, %if.end13, %if.end8, %if.end4, %if.end, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ 2, %if.end ], [ 3, %if.end4 ], [ 4, %if.end8 ], [ 5, %if.end13 ], [ %., %if.end16 ]
  ret i32 %retval.0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"p1 _ZTS2S2", !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !13, i64 0}
!11 = !{!"S2", !12, i64 0, !14, i64 8, !8, i64 16}
!12 = !{!"S1", !13, i64 0, !13, i64 4}
!13 = !{!"int", !8, i64 0}
!14 = !{!"p1 _ZTS2S1", !7, i64 0}
!15 = !{!11, !13, i64 4}
!16 = !{!11, !14, i64 8}
!17 = !{!12, !13, i64 0}
!18 = !{!12, !13, i64 4}
!19 = !{!13, !13, i64 0}
