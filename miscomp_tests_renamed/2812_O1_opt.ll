; 149161083608363753779681523139309647700
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/149161083608363753779681523139309647700_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/149161083608363753779681523139309647700.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %vla18 = alloca [0 x i32], align 16
  %invariant.gep = getelementptr i8, ptr %vla18, i64 -4
  br label %for.body

for.cond2.preheader:                              ; preds = %for.body
  %0 = load i32, ptr %vla18, align 16, !tbaa !5
  br label %for.body4

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ 1, %entry ], [ %indvars.iv.next, %for.body ]
  %1 = mul nuw nsw i64 %indvars.iv, %indvars.iv
  %gep = getelementptr i32, ptr %invariant.gep, i64 %indvars.iv
  %2 = trunc nuw i64 %1 to i32
  store i32 %2, ptr %gep, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 11
  br i1 %exitcond.not, label %for.cond2.preheader, label %for.body, !llvm.loop !9

for.body4:                                        ; preds = %for.body4, %for.cond2.preheader
  %Count.120 = phi i32 [ 0, %for.cond2.preheader ], [ %inc8, %for.body4 ]
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %0)
  %inc8 = add nuw nsw i32 %Count.120, 1
  %exitcond23.not = icmp eq i32 %inc8, 10
  br i1 %exitcond23.not, label %for.end9, label %for.body4, !llvm.loop !12

for.end9:                                         ; preds = %for.body4
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #1

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
