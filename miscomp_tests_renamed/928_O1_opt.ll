; 11672838361356003647014911786919974670
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/11672838361356003647014911786919974670_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/11672838361356003647014911786919974670.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@x = dso_local local_unnamed_addr global i32 0, align 4
@y = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: nofree noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  store i32 2, ptr @x, align 4, !tbaa !5
  %0 = load i32, ptr @y, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, 22
  %lnot.ext = zext i1 %cmp to i32
  store i32 %lnot.ext, ptr @y, align 4, !tbaa !5
  br label %do.body

do.body:                                          ; preds = %do.body, %entry
  %mul5 = phi i32 [ %mul, %do.body ], [ %lnot.ext, %entry ]
  %mul = shl nsw i32 %mul5, 1
  %cmp2 = icmp slt i32 %mul5, 20
  br i1 %cmp2, label %do.body, label %do.end, !llvm.loop !9

do.end:                                           ; preds = %do.body
  store i32 %mul, ptr @y, align 4, !tbaa !5
  store i32 %mul5, ptr @x, align 4, !tbaa !5
  tail call void @exit(i32 noundef 0) #2
  unreachable
}

; Function Attrs: nofree noreturn
declare void @exit(i32 noundef) local_unnamed_addr #1

attributes #0 = { nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

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
