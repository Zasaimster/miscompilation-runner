; 14869438948106936998546934920393777287
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/14869438948106936998546934920393777287.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/14869438948106936998546934920393777287.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local local_unnamed_addr global i32 0, align 4
@f = dso_local local_unnamed_addr global [3 x i32] zeroinitializer, align 4
@b = dso_local local_unnamed_addr global i32 0, align 4
@c = dso_local local_unnamed_addr global i32 0, align 4
@e = dso_local local_unnamed_addr global i32 0, align 4
@a = dso_local local_unnamed_addr global i32 0, align 4
@str = private unnamed_addr constant [18 x i8] c"This won't print.\00", align 1

; Function Attrs: nofree noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %0 = load i32, ptr @d, align 4, !tbaa !5
  %cmp = icmp sgt i32 %0, 10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, ptr @b, align 4
  %2 = load i32, ptr @c, align 4
  %3 = load i32, ptr @e, align 4
  br label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %if.end, %for.end15
  %g.029 = phi i32 [ 0, %if.end ], [ %add, %for.end15 ]
  br label %for.body4

for.cond5.preheader:                              ; preds = %for.body4
  %tobool10.not = icmp eq i32 %g.029, 0
  br label %for.body7

for.body4:                                        ; preds = %for.cond2.preheader, %for.body4
  %indvars.iv = phi i64 [ 0, %for.cond2.preheader ], [ %indvars.iv.next, %for.body4 ]
  %arrayidx = getelementptr inbounds nuw [3 x i32], ptr @f, i64 0, i64 %indvars.iv
  store i32 1, ptr %arrayidx, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond.not, label %for.cond5.preheader, label %for.body4, !llvm.loop !9

for.body7:                                        ; preds = %for.cond5.preheader, %for.inc13
  %j.027 = phi i32 [ 1, %for.cond5.preheader ], [ %inc14, %for.inc13 ]
  br i1 %tobool10.not, label %for.inc13, label %if.then11

if.then11:                                        ; preds = %for.body7
  store i32 %3, ptr @a, align 4, !tbaa !5
  br label %for.inc13

for.inc13:                                        ; preds = %for.body7, %if.then11
  %inc14 = add nuw nsw i32 %j.027, 1
  %exitcond32.not = icmp eq i32 %inc14, 10
  br i1 %exitcond32.not, label %for.end15, label %for.body7, !llvm.loop !12

for.end15:                                        ; preds = %for.inc13
  %add = add nuw nsw i32 %g.029, 9
  %cmp1 = icmp samesign ult i32 %g.029, 12
  br i1 %cmp1, label %for.cond2.preheader, label %for.end17, !llvm.loop !13

for.end17:                                        ; preds = %for.end15
  %.fr = freeze i32 %2
  %tobool923 = icmp ne i32 %.fr, 0
  %tobool8.not = icmp eq i32 %1, 0
  %umin = and i1 %tobool923, %tobool8.not
  %spec.select = zext i1 %umin to i32
  store i32 %spec.select, ptr @d, align 4, !tbaa !5
  tail call void @exit(i32 noundef 0) #3
  unreachable
}

; Function Attrs: nofree noreturn
declare void @exit(i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #2

attributes #0 = { nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { noreturn nounwind }

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
!13 = distinct !{!13, !10, !11}
