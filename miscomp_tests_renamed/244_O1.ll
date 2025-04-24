; 104202644958146749647954414486808055740
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/104202644958146749647954414486808055740.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/104202644958146749647954414486808055740.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Link = dso_local local_unnamed_addr global [1 x i32] [i32 -1], align 4
@W = dso_local local_unnamed_addr global [1 x i32] [i32 2], align 4
@str = private unnamed_addr constant [25 x i8] c"This branch is executed.\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local range(i32 0, 2) i32 @f(i32 noundef %k, i32 noundef %p) local_unnamed_addr #0 {
entry:
  %puts52 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %idxprom = sext i32 %k to i64
  %arrayidx = getelementptr inbounds [1 x i32], ptr @W, i64 0, i64 %idxprom
  %cmp11 = icmp slt i32 %p, 1
  %cmp13 = icmp sgt i32 %k, 0
  %arrayidx.promoted = load i32, ptr %arrayidx, align 4, !tbaa !5
  br label %do.body

do.body:                                          ; preds = %entry, %do.cond12
  %0 = phi i32 [ %3, %do.cond12 ], [ %arrayidx.promoted, %entry ]
  %pdest.3 = phi i32 [ %pdest.5, %do.cond12 ], [ 0, %entry ]
  %1 = icmp eq i32 %0, 0
  br label %do.body5

do.body5:                                         ; preds = %do.cond, %do.body
  %2 = phi i32 [ %0, %do.body ], [ %3, %do.cond ]
  %pdest.4 = phi i32 [ %pdest.3, %do.body ], [ %pdest.5, %do.cond ]
  %D1361.0 = phi i1 [ %1, %do.body ], [ true, %do.cond ]
  br i1 %D1361.0, label %do.cond, label %if.then7

if.then7:                                         ; preds = %do.body5
  store i32 0, ptr %arrayidx, align 4, !tbaa !5
  br label %do.cond

do.cond:                                          ; preds = %do.body5, %if.then7
  %3 = phi i32 [ 0, %if.then7 ], [ %2, %do.body5 ]
  %pdest.5 = phi i32 [ 1, %if.then7 ], [ %pdest.4, %do.body5 ]
  br i1 %cmp11, label %do.body5, label %do.cond12, !llvm.loop !9

do.cond12:                                        ; preds = %do.cond
  br i1 %cmp13, label %do.body, label %do.end29, !llvm.loop !12

do.end29:                                         ; preds = %do.cond12
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  ret i32 %pdest.5
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %puts52.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %arrayidx.promoted.i = load i32, ptr @W, align 4, !tbaa !5
  %0 = icmp eq i32 %arrayidx.promoted.i, 0
  br i1 %0, label %if.then.critedge, label %if.then7.i

if.then7.i:                                       ; preds = %entry
  store i32 0, ptr @W, align 4, !tbaa !5
  %puts.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  ret i32 0

if.then.critedge:                                 ; preds = %entry
  %puts.i.c = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  tail call void @abort() #3
  unreachable
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #2

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
