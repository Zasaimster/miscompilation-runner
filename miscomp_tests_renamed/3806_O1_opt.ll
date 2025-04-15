; 10671804439009415265880686601394413854
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/10671804439009415265880686601394413854_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/10671804439009415265880686601394413854.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local local_unnamed_addr global i32 0, align 4
@b = dso_local local_unnamed_addr global i8 0, align 1
@d = dso_local local_unnamed_addr global i8 0, align 1
@c = dso_local local_unnamed_addr global i16 0, align 2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef signext i16 @fn1(i32 noundef %p1, i32 noundef %p2) local_unnamed_addr #0 {
entry:
  %cmp = icmp sgt i32 %p2, 1
  %cmp1 = icmp sgt i32 %p1, %p2
  %conv = zext i1 %cmp1 to i32
  %cond = select i1 %cmp, i32 %p1, i32 %conv
  %conv2 = trunc i32 %cond to i16
  ret i16 %conv2
}

; Function Attrs: nofree noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #1 {
entry:
  %0 = load i8, ptr @d, align 1
  %tobool = icmp ne i8 %0, 0
  %a.promoted = load i32, ptr @a, align 4, !tbaa !5
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %storemerge18 = phi i8 [ 1, %entry ], [ %inc, %for.body ]
  %1 = phi i32 [ %a.promoted, %entry ], [ %cond.i, %for.body ]
  %narrow = icmp ne i32 %1, 1
  %cond.i = zext i1 %narrow to i32
  %inc = add nuw nsw i8 %storemerge18, 1
  %exitcond.not = icmp eq i8 %inc, 10
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !9

for.end:                                          ; preds = %for.body
  %cmp2 = icmp ne i32 %1, 5
  %2 = select i1 %cmp2, i1 true, i1 %tobool
  %conv5.le = zext i1 %2 to i16
  store i8 10, ptr @b, align 1, !tbaa !12
  store i32 %cond.i, ptr @a, align 4, !tbaa !5
  store i16 %conv5.le, ptr @c, align 2, !tbaa !13
  br i1 %narrow, label %if.end, label %if.then

if.then:                                          ; preds = %for.end
  tail call void @abort() #4
  unreachable

if.end:                                           ; preds = %for.end
  tail call void @exit(i32 noundef 0) #4
  unreachable
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #2

; Function Attrs: nofree noreturn
declare void @exit(i32 noundef) local_unnamed_addr #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }

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
!12 = !{!7, !7, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"short", !7, i64 0}
