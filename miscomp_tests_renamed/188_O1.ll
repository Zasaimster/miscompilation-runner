; 116207509483518832012293157991115903844
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/116207509483518832012293157991115903844.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/116207509483518832012293157991115903844.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local local_unnamed_addr global i32 2, align 4
@b = dso_local local_unnamed_addr global i32 0, align 4
@d = dso_local local_unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@c = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @foo() local_unnamed_addr #0 {
entry:
  %0 = load i32, ptr @b, align 4, !tbaa !5
  %cmp1 = icmp sgt i32 %0, 0
  %conv2 = zext i1 %cmp1 to i32
  %1 = load i32, ptr @a, align 4, !tbaa !5
  %and3 = and i32 %1, 1
  %or4 = or i32 %and3, %conv2
  %tobool.not5 = icmp eq i32 %or4, 0
  br i1 %tobool.not5, label %if.else, label %for.inc

if.else:                                          ; preds = %for.inc, %entry
  %.lcssa = phi i32 [ %1, %entry ], [ %4, %for.inc ]
  store i32 %.lcssa, ptr @d, align 4, !tbaa !5
  ret i32 0

for.inc:                                          ; preds = %entry, %for.inc
  %2 = load i32, ptr @c, align 4, !tbaa !5
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %2)
  %3 = load i32, ptr @b, align 4, !tbaa !5
  %cmp = icmp sgt i32 %3, 0
  %conv = zext i1 %cmp to i32
  %4 = load i32, ptr @a, align 4, !tbaa !5
  %and = and i32 %4, 1
  %or = or i32 %and, %conv
  %tobool.not = icmp eq i32 %or, 0
  br i1 %tobool.not, label %if.else, label %for.inc, !llvm.loop !9
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %0 = load i32, ptr @b, align 4, !tbaa !5
  %cmp1.i = icmp sgt i32 %0, 0
  %conv2.i = zext i1 %cmp1.i to i32
  %1 = load i32, ptr @a, align 4, !tbaa !5
  %and3.i = and i32 %1, 1
  %or4.i = or i32 %and3.i, %conv2.i
  %tobool.not5.i = icmp eq i32 %or4.i, 0
  br i1 %tobool.not5.i, label %foo.exit, label %for.inc.i

for.inc.i:                                        ; preds = %entry, %for.inc.i
  %2 = load i32, ptr @c, align 4, !tbaa !5
  %call.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %2)
  %3 = load i32, ptr @b, align 4, !tbaa !5
  %cmp.i = icmp sgt i32 %3, 0
  %conv.i = zext i1 %cmp.i to i32
  %4 = load i32, ptr @a, align 4, !tbaa !5
  %and.i = and i32 %4, 1
  %or.i = or i32 %and.i, %conv.i
  %tobool.not.i = icmp eq i32 %or.i, 0
  br i1 %tobool.not.i, label %foo.exit, label %for.inc.i, !llvm.loop !9

foo.exit:                                         ; preds = %for.inc.i, %entry
  %.lcssa.i = phi i32 [ %1, %entry ], [ %4, %for.inc.i ]
  store i32 %.lcssa.i, ptr @d, align 4, !tbaa !5
  %cmp.not = icmp eq i32 %.lcssa.i, 2
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %foo.exit
  tail call void @abort() #3
  unreachable

if.end:                                           ; preds = %foo.exit
  ret i32 0
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #2

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
