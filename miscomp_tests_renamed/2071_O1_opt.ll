; 136628313944893909381620946614255452844
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/136628313944893909381620946614255452844_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/136628313944893909381620946614255452844.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local local_unnamed_addr global i32 0, align 4
@h = dso_local local_unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%d%d\00", align 1
@c = dso_local local_unnamed_addr global i32 0, align 4
@f = dso_local local_unnamed_addr global i32 0, align 4
@g = dso_local local_unnamed_addr global i32 0, align 4
@d = dso_local local_unnamed_addr global i32 0, align 4
@e = dso_local local_unnamed_addr global ptr null, align 8
@b = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: nofree noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %0 = load i32, ptr @a, align 4, !tbaa !5
  %tobool.not29 = icmp eq i32 %0, 0
  br i1 %tobool.not29, label %for.end22, label %for.body

for.body:                                         ; preds = %for.end20, %entry
  %1 = load i32, ptr @h, align 4, !tbaa !5
  %tobool1.not = icmp eq i32 %1, 0
  br i1 %tobool1.not, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %2 = load i32, ptr @c, align 4, !tbaa !5
  %3 = load i32, ptr @f, align 4, !tbaa !5
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %2, i32 noundef %3) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %4 = load i32, ptr @g, align 4, !tbaa !5
  %tobool5 = icmp ne i32 %4, 0
  %d.promoted = load i32, ptr @d, align 4
  %5 = load ptr, ptr @e, align 8
  br label %for.body4

for.body4:                                        ; preds = %for.inc11, %if.end
  %i.128 = phi i32 [ 0, %if.end ], [ %inc12, %for.inc11 ]
  %6 = phi i32 [ %d.promoted, %if.end ], [ %9, %for.inc11 ]
  %cmp8 = icmp ult i32 %6, 10
  %or.cond23 = select i1 %tobool5, i1 %cmp8, i1 false
  br i1 %or.cond23, label %for.body9, label %for.inc11

for.body9:                                        ; preds = %for.body9, %for.body4
  %7 = phi i32 [ %inc, %for.body9 ], [ %6, %for.body4 ]
  %8 = load i8, ptr %5, align 1, !tbaa !9
  %conv = sext i8 %8 to i32
  store i32 %conv, ptr @b, align 4, !tbaa !5
  %inc = add nuw nsw i32 %7, 1
  store i32 %inc, ptr @d, align 4, !tbaa !5
  %exitcond.not = icmp eq i32 %inc, 10
  br i1 %exitcond.not, label %for.inc11, label %for.body9

for.inc11:                                        ; preds = %for.body9, %for.body4
  %9 = phi i32 [ %6, %for.body4 ], [ 10, %for.body9 ]
  %inc12 = add nuw nsw i32 %i.128, 1
  %cmp = icmp eq i32 %i.128, 0
  br i1 %cmp, label %for.body4, label %for.end20, !llvm.loop !10

for.end20:                                        ; preds = %for.inc11
  %10 = load i32, ptr @a, align 4, !tbaa !5
  %dec = add nsw i32 %10, -1
  store i32 %dec, ptr @a, align 4, !tbaa !5
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %for.end22, label %for.body, !llvm.loop !13

for.end22:                                        ; preds = %for.end20, %entry
  tail call void @exit(i32 noundef 0) #4
  unreachable
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #1

; Function Attrs: nofree noreturn
declare void @exit(i32 noundef) local_unnamed_addr #2

attributes #0 = { nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
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
!9 = !{!7, !7, i64 0}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !11, !12}
