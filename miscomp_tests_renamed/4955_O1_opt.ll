; 135560374911915075435346162498973266548
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/135560374911915075435346162498973266548_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/135560374911915075435346162498973266548.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local range(i32 0, 8) i32 @main() local_unnamed_addr #0 {
entry:
  %0 = load i8, ptr inttoptr (i64 7 to ptr), align 1, !tbaa !5
  %cmp.not = icmp eq i8 %0, 97
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %1 = load i8, ptr inttoptr (i64 8 to ptr), align 8, !tbaa !5
  %cmp4.not = icmp eq i8 %1, 98
  br i1 %cmp4.not, label %if.end7, label %cleanup

if.end7:                                          ; preds = %if.end
  %2 = load i8, ptr inttoptr (i64 9 to ptr), align 1, !tbaa !5
  %cmp10.not = icmp eq i8 %2, 99
  br i1 %cmp10.not, label %if.end13, label %cleanup

if.end13:                                         ; preds = %if.end7
  %3 = load i8, ptr inttoptr (i64 10 to ptr), align 2, !tbaa !5
  %cmp16.not = icmp eq i8 %3, 100
  br i1 %cmp16.not, label %if.end19, label %cleanup

if.end19:                                         ; preds = %if.end13
  %4 = load i8, ptr inttoptr (i64 11 to ptr), align 1, !tbaa !5
  %cmp22.not = icmp eq i8 %4, 101
  br i1 %cmp22.not, label %if.end25, label %cleanup

if.end25:                                         ; preds = %if.end19
  %5 = load i8, ptr inttoptr (i64 12 to ptr), align 4, !tbaa !5
  %cmp28.not = icmp eq i8 %5, 102
  br i1 %cmp28.not, label %if.end31, label %cleanup

if.end31:                                         ; preds = %if.end25
  %6 = load i8, ptr inttoptr (i64 13 to ptr), align 1, !tbaa !5
  %cmp34.not = icmp eq i8 %6, 0
  %. = select i1 %cmp34.not, i32 0, i32 7
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %if.end25, %if.end19, %if.end13, %if.end7, %if.end, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ 2, %if.end ], [ 3, %if.end7 ], [ 4, %if.end13 ], [ 5, %if.end19 ], [ 6, %if.end25 ], [ %., %if.end31 ]
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
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
