; 145216825617281725910193062332470214482
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/145216825617281725910193062332470214482.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/145216825617281725910193062332470214482.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@glob = dso_local local_unnamed_addr global i32 0, align 4
@str = private unnamed_addr constant [23 x i8] c"This will not execute.\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local noundef i32 @g(i32 noundef %x) local_unnamed_addr #0 {
entry:
  store i32 %x, ptr @glob, align 4, !tbaa !5
  ret i32 0
}

; Function Attrs: nofree noreturn nounwind uwtable
define dso_local noundef i32 @f(i32 noundef %x) local_unnamed_addr #1 {
entry:
  %tobool.not5 = icmp eq i32 %x, -1
  br i1 %tobool.not5, label %while.cond1.preheader, label %while.cond.while.cond1.preheader_crit_edge

while.cond.while.cond1.preheader_crit_edge:       ; preds = %entry
  %not = xor i32 %x, -1
  store i32 %not, ptr @glob, align 4, !tbaa !5
  br label %while.cond1.preheader

while.cond1.preheader:                            ; preds = %while.cond.while.cond1.preheader_crit_edge, %entry
  br label %while.cond1

while.cond1:                                      ; preds = %while.cond1.preheader, %while.cond1
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %while.cond1, !llvm.loop !9
}

; Function Attrs: nofree noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #1 {
entry:
  store i32 -4, ptr @glob, align 4, !tbaa !5
  br label %while.cond1.i

while.cond1.i:                                    ; preds = %while.cond1.i, %entry
  %puts.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %while.cond1.i, !llvm.loop !9
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }

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
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.unroll.disable"}
