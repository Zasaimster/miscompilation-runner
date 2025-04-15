; 184971182105019068964915248488240207832
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/184971182105019068964915248488240207832.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/184971182105019068964915248488240207832.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@array = dso_local local_unnamed_addr global [0 x i32] zeroinitializer, align 4

; Function Attrs: nofree noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %entry, %for.inc5
  %i.019 = phi i32 [ 0, %entry ], [ %inc, %for.inc5 ]
  br label %for.body3

for.cond1:                                        ; preds = %for.body3
  %p.0.add = add nuw nsw i64 %p.0.idx18, 4
  %cmp2.not = icmp eq i64 %p.0.add, 36
  br i1 %cmp2.not, label %for.inc5, label %for.body3, !llvm.loop !5

for.body3:                                        ; preds = %for.cond1.preheader, %for.cond1
  %p.0.idx18 = phi i64 [ 0, %for.cond1.preheader ], [ %p.0.add, %for.cond1 ]
  %p.0.ptr = getelementptr inbounds nuw i8, ptr @array, i64 %p.0.idx18
  %0 = load i32, ptr %p.0.ptr, align 4, !tbaa !8
  %cmp4 = icmp eq i32 %0, %i.019
  br i1 %cmp4, label %label.loopexit, label %for.cond1

for.inc5:                                         ; preds = %for.cond1
  %inc = add nuw nsw i32 %i.019, 1
  %exitcond.not = icmp eq i32 %inc, 10
  br i1 %exitcond.not, label %if.then8, label %for.cond1.preheader, !llvm.loop !12

label.loopexit:                                   ; preds = %for.body3
  %1 = icmp eq i32 %i.019, 1
  br i1 %1, label %if.end9, label %if.then8

if.then8:                                         ; preds = %for.inc5, %label.loopexit
  tail call void @abort() #3
  unreachable

if.end9:                                          ; preds = %label.loopexit
  tail call void @exit(i32 noundef 0) #3
  unreachable
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #1

; Function Attrs: nofree noreturn
declare void @exit(i32 noundef) local_unnamed_addr #2

attributes #0 = { nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
!5 = distinct !{!5, !6, !7}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!"llvm.loop.unroll.disable"}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = distinct !{!12, !6, !7}
