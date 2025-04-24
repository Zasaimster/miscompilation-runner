; 118373393708060894698544747858901991889
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/118373393708060894698544747858901991889_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/118373393708060894698544747858901991889.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@e = dso_local local_unnamed_addr global i32 20, align 4
@u = dso_local local_unnamed_addr global i32 0, align 4
@t5 = dso_local local_unnamed_addr global i32 0, align 4
@n = dso_local local_unnamed_addr global i8 0, align 1
@t2 = dso_local local_unnamed_addr global i32 0, align 4
@b = dso_local local_unnamed_addr global i32 0, align 4
@m = dso_local local_unnamed_addr global i32 0, align 4
@t = dso_local local_unnamed_addr global i8 0, align 1
@a = dso_local local_unnamed_addr global [1 x i32] zeroinitializer, align 4
@i = dso_local local_unnamed_addr global i32 0, align 4
@k = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local noundef i32 @fn1(i32 noundef %p1) local_unnamed_addr #0 {
entry:
  %0 = add i32 %p1, -3
  %tobool = icmp ult i32 %0, -5
  %1 = load i32, ptr @t5, align 4
  %tobool2 = icmp ne i32 %1, 0
  %or.cond = select i1 %tobool, i1 %tobool2, i1 false
  br i1 %or.cond, label %for.body, label %entry.split

entry.split:                                      ; preds = %entry
  %2 = load i32, ptr @b, align 4
  %tobool5.not = icmp eq i32 %2, -1
  %and = and i32 %p1, 4
  store i32 %and, ptr @t2, align 4, !tbaa !5
  br i1 %tobool5.not, label %for.cond, label %if.then6, !llvm.loop !9

for.cond:                                         ; preds = %for.cond, %entry.split
  br label %for.cond

for.body:                                         ; preds = %for.body, %entry
  br label %for.body

if.then6:                                         ; preds = %entry.split
  ret i32 0
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #1 {
entry:
  %e.promoted = load i32, ptr @e, align 4, !tbaa !5
  %cmp6 = icmp sgt i32 %e.promoted, -1
  br i1 %cmp6, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %0 = load i32, ptr @m, align 4, !tbaa !5
  %tobool.not = icmp eq i32 %0, 0
  %1 = load i8, ptr @t, align 1
  %2 = load i32, ptr @t5, align 4
  %tobool2.i = icmp ne i32 %2, 0
  %3 = load i32, ptr @b, align 4
  %tobool5.not.i = icmp eq i32 %3, -1
  br label %for.body

for.body:                                         ; preds = %fn1.exit, %for.body.lr.ph
  %c.08 = phi i8 [ undef, %for.body.lr.ph ], [ %spec.select, %fn1.exit ]
  %dec57 = phi i32 [ %e.promoted, %for.body.lr.ph ], [ %dec, %fn1.exit ]
  %spec.select = select i1 %tobool.not, i8 %1, i8 %c.08
  %conv = sext i8 %spec.select to i32
  %4 = add nsw i32 %conv, -3
  %tobool.i = icmp ult i32 %4, -5
  %or.cond.i = select i1 %tobool.i, i1 %tobool2.i, i1 false
  br i1 %or.cond.i, label %for.body.i, label %entry.split.i

entry.split.i:                                    ; preds = %for.body
  %and.i = and i32 %conv, 4
  store i32 %and.i, ptr @t2, align 4, !tbaa !5
  br i1 %tobool5.not.i, label %for.cond.i, label %fn1.exit, !llvm.loop !9

for.cond.i:                                       ; preds = %for.cond.i, %entry.split.i
  br label %for.cond.i

for.body.i:                                       ; preds = %for.body.i, %for.body
  br label %for.body.i

fn1.exit:                                         ; preds = %entry.split.i
  %dec = add nsw i32 %dec57, -1
  store i32 %dec, ptr @e, align 4, !tbaa !5
  %cmp = icmp sgt i32 %dec57, 0
  br i1 %cmp, label %for.body, label %for.end, !llvm.loop !11

for.end:                                          ; preds = %fn1.exit, %entry
  %5 = load i32, ptr @t2, align 4, !tbaa !5
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [1 x i32], ptr @a, i64 0, i64 %idxprom
  %6 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %cmp1.not = icmp eq i32 %6, 0
  br i1 %cmp1.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %for.end
  tail call void @abort() #3
  unreachable

if.end4:                                          ; preds = %for.end
  ret i32 0
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #2

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = distinct !{!11, !12, !10}
!12 = !{!"llvm.loop.mustprogress"}
