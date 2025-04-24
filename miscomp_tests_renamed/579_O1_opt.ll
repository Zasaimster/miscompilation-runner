; 11042967963666745251734814222161470355
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/11042967963666745251734814222161470355_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/11042967963666745251734814222161470355.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sum = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @g(i32 noundef %i) local_unnamed_addr #0 {
entry:
  %0 = load i32, ptr @sum, align 4, !tbaa !5
  %add = add nsw i32 %0, %i
  store i32 %add, ptr @sum, align 4, !tbaa !5
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @f(i32 noundef %j) local_unnamed_addr #1 {
entry:
  %0 = add nsw i32 %j, 1
  %sum.promoted = load i32, ptr @sum, align 4, !tbaa !5
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %i.07 = phi i32 [ 0, %entry ], [ %inc1, %for.body ]
  %j.addr.06 = phi i32 [ %0, %entry ], [ 10, %for.body ]
  %add.i45 = phi i32 [ %sum.promoted, %entry ], [ %add.i, %for.body ]
  %add.i = add nsw i32 %add.i45, %j.addr.06
  %inc1 = add nuw nsw i32 %i.07, 1
  %exitcond.not = icmp eq i32 %inc1, 9
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !9

for.end:                                          ; preds = %for.body
  store i32 %add.i, ptr @sum, align 4, !tbaa !5
  ret void
}

; Function Attrs: nofree noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  %sum.promoted.i = load i32, ptr @sum, align 4, !tbaa !5
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %entry
  %i.07.i = phi i32 [ 0, %entry ], [ %inc1.i, %for.body.i ]
  %j.addr.06.i = phi i32 [ 1, %entry ], [ 10, %for.body.i ]
  %add.i45.i = phi i32 [ %sum.promoted.i, %entry ], [ %add.i.i, %for.body.i ]
  %add.i.i = add nsw i32 %add.i45.i, %j.addr.06.i
  %inc1.i = add nuw nsw i32 %i.07.i, 1
  %exitcond.not.i = icmp eq i32 %inc1.i, 9
  br i1 %exitcond.not.i, label %f.exit, label %for.body.i, !llvm.loop !9

f.exit:                                           ; preds = %for.body.i
  store i32 %add.i.i, ptr @sum, align 4, !tbaa !5
  %cmp.not = icmp eq i32 %add.i.i, 81
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %f.exit
  tail call void @abort() #5
  unreachable

if.end:                                           ; preds = %f.exit
  tail call void @exit(i32 noundef 0) #5
  unreachable
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #3

; Function Attrs: nofree noreturn
declare void @exit(i32 noundef) local_unnamed_addr #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind }

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
