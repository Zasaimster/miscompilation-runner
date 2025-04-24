; 139630785761966677823162715796585400334
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/139630785761966677823162715796585400334_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/139630785761966677823162715796585400334.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"2\00", align 1
@w = dso_local global ptr @.str, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@a = internal unnamed_addr global [256 x i32] zeroinitializer, align 16
@b = internal unnamed_addr global i32 0, align 4

; Function Attrs: nofree nounwind memory(readwrite, argmem: read) uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %0 = load volatile ptr, ptr @w, align 8, !tbaa !5
  %call = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(2) @.str.1) #2
  br label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.cond2.preheader, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.cond2.preheader ]
  %arrayidx = getelementptr inbounds nuw [256 x i32], ptr @a, i64 0, i64 %indvars.iv
  store i32 1, ptr %arrayidx, align 4, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 256
  br i1 %exitcond.not, label %for.end14, label %for.cond2.preheader, !llvm.loop !12

for.end14:                                        ; preds = %for.cond2.preheader
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end26, label %if.then.i

if.then.i:                                        ; preds = %for.end14
  %1 = load i32, ptr @b, align 4, !tbaa !10
  %and.i = and i32 %1, 1
  %idxprom.i = zext nneg i32 %and.i to i64
  %arrayidx.i = getelementptr inbounds nuw [256 x i32], ptr @a, i64 0, i64 %idxprom.i
  %2 = load i32, ptr %arrayidx.i, align 4, !tbaa !10
  store i32 %2, ptr @b, align 4, !tbaa !10
  %and1.i = and i32 %2, 1
  %idxprom2.i = zext nneg i32 %and1.i to i64
  %arrayidx3.i = getelementptr inbounds nuw [256 x i32], ptr @a, i64 0, i64 %idxprom2.i
  %3 = load i32, ptr %arrayidx3.i, align 4, !tbaa !10
  store i32 %3, ptr @b, align 4, !tbaa !10
  %4 = and i32 %3, 1
  %and5.i = zext nneg i32 %4 to i64
  %arrayidx6.i = getelementptr inbounds nuw [256 x i32], ptr @a, i64 0, i64 %and5.i
  %5 = load i32, ptr %arrayidx6.i, align 4, !tbaa !10
  store i32 %5, ptr @b, align 4, !tbaa !10
  %6 = and i32 %5, 1
  %and10.i = zext nneg i32 %6 to i64
  %arrayidx11.i = getelementptr inbounds nuw [256 x i32], ptr @a, i64 0, i64 %and10.i
  %7 = load i32, ptr %arrayidx11.i, align 4, !tbaa !10
  store i32 %7, ptr @b, align 4, !tbaa !10
  %and.i36 = and i32 %7, 1
  %idxprom.i37 = zext nneg i32 %and.i36 to i64
  %arrayidx.i38 = getelementptr inbounds nuw [256 x i32], ptr @a, i64 0, i64 %idxprom.i37
  %8 = load i32, ptr %arrayidx.i38, align 4, !tbaa !10
  store i32 %8, ptr @b, align 4, !tbaa !10
  %and1.i39 = and i32 %8, 1
  %idxprom2.i40 = zext nneg i32 %and1.i39 to i64
  %arrayidx3.i41 = getelementptr inbounds nuw [256 x i32], ptr @a, i64 0, i64 %idxprom2.i40
  %9 = load i32, ptr %arrayidx3.i41, align 4, !tbaa !10
  store i32 %9, ptr @b, align 4, !tbaa !10
  %10 = and i32 %9, 1
  %and5.i42 = zext nneg i32 %10 to i64
  %arrayidx6.i43 = getelementptr inbounds nuw [256 x i32], ptr @a, i64 0, i64 %and5.i42
  %11 = load i32, ptr %arrayidx6.i43, align 4, !tbaa !10
  store i32 %11, ptr @b, align 4, !tbaa !10
  %12 = and i32 %11, 1
  %and10.i44 = zext nneg i32 %12 to i64
  %arrayidx11.i45 = getelementptr inbounds nuw [256 x i32], ptr @a, i64 0, i64 %and10.i44
  %13 = load i32, ptr %arrayidx11.i45, align 4, !tbaa !10
  store i32 %13, ptr @b, align 4, !tbaa !10
  br label %if.end26

if.end26:                                         ; preds = %if.then.i, %for.end14
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #1

attributes #0 = { nofree nounwind memory(readwrite, argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"p1 omnipotent char", !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !8, i64 0}
!12 = distinct !{!12, !13, !14}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!"llvm.loop.unroll.disable"}
