; 125683152754107447451777566915860519237
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/125683152754107447451777566915860519237.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/125683152754107447451777566915860519237.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sreal = type { i32, i32 }

@a = dso_local local_unnamed_addr global [4 x %struct.sreal] [%struct.sreal zeroinitializer, %struct.sreal { i32 1, i32 0 }, %struct.sreal { i32 0, i32 1 }, %struct.sreal { i32 1, i32 1 }], align 16
@str = private unnamed_addr constant [14 x i8] c"Hello, World!\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local range(i32 -1, 2) i32 @sreal_compare(ptr noundef readonly captures(none) %a, ptr noundef readonly captures(none) %b) local_unnamed_addr #0 {
entry:
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %exp = getelementptr inbounds nuw i8, ptr %a, i64 4
  %0 = load i32, ptr %exp, align 4, !tbaa !5
  %exp1 = getelementptr inbounds nuw i8, ptr %b, i64 4
  %1 = load i32, ptr %exp1, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %a, align 4, !tbaa !10
  %3 = load i32, ptr %b, align 4, !tbaa !10
  %cmp3 = icmp ugt i32 %2, %3
  br i1 %cmp3, label %return, label %if.end5

if.end5:                                          ; preds = %if.end
  %cmp8 = icmp ult i32 %2, %3
  %conv.neg = sext i1 %cmp8 to i32
  br label %return

return:                                           ; preds = %if.end, %entry, %if.end5
  %retval.0 = phi i32 [ %conv.neg, %if.end5 ], [ -1, %entry ], [ 1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %entry, %for.inc28
  %indvars.iv72 = phi i64 [ 0, %entry ], [ %indvars.iv.next73, %for.inc28 ]
  %arrayidx = getelementptr inbounds nuw [4 x %struct.sreal], ptr @a, i64 0, i64 %indvars.iv72
  %exp.i = getelementptr inbounds nuw i8, ptr %arrayidx, i64 4
  %arrayidx11 = getelementptr inbounds nuw [4 x %struct.sreal], ptr @a, i64 0, i64 %indvars.iv72
  %exp.i46 = getelementptr inbounds nuw i8, ptr %arrayidx11, i64 4
  %arrayidx21 = getelementptr inbounds nuw [4 x %struct.sreal], ptr @a, i64 0, i64 %indvars.iv72
  %exp.i57 = getelementptr inbounds nuw i8, ptr %arrayidx21, i64 4
  br label %for.body3

for.body3:                                        ; preds = %for.cond1.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.cond1.preheader ], [ %indvars.iv.next, %for.inc ]
  %cmp4 = icmp samesign ult i64 %indvars.iv72, %indvars.iv
  br i1 %cmp4, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body3
  %arrayidx6 = getelementptr inbounds nuw [4 x %struct.sreal], ptr @a, i64 0, i64 %indvars.iv
  %puts.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %0 = load i32, ptr %exp.i, align 4, !tbaa !5
  %exp1.i = getelementptr inbounds nuw i8, ptr %arrayidx6, i64 4
  %1 = load i32, ptr %exp1.i, align 4, !tbaa !5
  %cmp.i = icmp slt i32 %0, %1
  br i1 %cmp.i, label %if.end, label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true
  %2 = load i32, ptr %arrayidx, align 8, !tbaa !10
  %3 = load i32, ptr %arrayidx6, align 8, !tbaa !10
  %cmp8.i = icmp ult i32 %2, %3
  br i1 %cmp8.i, label %if.end, label %if.then

if.then:                                          ; preds = %if.end.i
  tail call void @abort() #3
  unreachable

if.end:                                           ; preds = %land.lhs.true, %if.end.i, %for.body3
  %cmp8 = icmp eq i64 %indvars.iv72, %indvars.iv
  br i1 %cmp8, label %land.lhs.true9, label %if.end17

land.lhs.true9:                                   ; preds = %if.end
  %arrayidx13 = getelementptr inbounds nuw [4 x %struct.sreal], ptr @a, i64 0, i64 %indvars.iv
  %puts.i45 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %4 = load i32, ptr %exp.i46, align 4, !tbaa !5
  %exp1.i47 = getelementptr inbounds nuw i8, ptr %arrayidx13, i64 4
  %5 = load i32, ptr %exp1.i47, align 4, !tbaa !5
  %cmp.i48 = icmp slt i32 %4, %5
  br i1 %cmp.i48, label %if.then16, label %if.end.i49

if.end.i49:                                       ; preds = %land.lhs.true9
  %6 = load i32, ptr %arrayidx11, align 8, !tbaa !10
  %7 = load i32, ptr %arrayidx13, align 8, !tbaa !10
  %spec.select67 = icmp eq i32 %6, %7
  br i1 %spec.select67, label %if.end17, label %if.then16

if.then16:                                        ; preds = %land.lhs.true9, %if.end.i49
  tail call void @abort() #3
  unreachable

if.end17:                                         ; preds = %if.end.i49, %if.end
  %cmp18 = icmp samesign ugt i64 %indvars.iv72, %indvars.iv
  br i1 %cmp18, label %land.lhs.true19, label %for.inc

land.lhs.true19:                                  ; preds = %if.end17
  %arrayidx23 = getelementptr inbounds nuw [4 x %struct.sreal], ptr @a, i64 0, i64 %indvars.iv
  %puts.i56 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %8 = load i32, ptr %exp.i57, align 4, !tbaa !5
  %exp1.i58 = getelementptr inbounds nuw i8, ptr %arrayidx23, i64 4
  %9 = load i32, ptr %exp1.i58, align 4, !tbaa !5
  %cmp.i59 = icmp slt i32 %8, %9
  br i1 %cmp.i59, label %if.then26, label %if.end.i60

if.end.i60:                                       ; preds = %land.lhs.true19
  %10 = load i32, ptr %arrayidx21, align 8, !tbaa !10
  %11 = load i32, ptr %arrayidx23, align 8, !tbaa !10
  %cmp3.i61 = icmp ugt i32 %10, %11
  br i1 %cmp3.i61, label %for.inc, label %if.then26

if.then26:                                        ; preds = %land.lhs.true19, %if.end.i60
  tail call void @abort() #3
  unreachable

for.inc:                                          ; preds = %if.end17, %if.end.i60
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond.not, label %for.inc28, label %for.body3, !llvm.loop !11

for.inc28:                                        ; preds = %for.inc
  %indvars.iv.next73 = add nuw nsw i64 %indvars.iv72, 1
  %exitcond75.not = icmp eq i64 %indvars.iv.next73, 4
  br i1 %exitcond75.not, label %for.end30, label %for.cond1.preheader, !llvm.loop !14

for.end30:                                        ; preds = %for.inc28
  ret i32 0
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
!5 = !{!6, !7, i64 4}
!6 = !{!"sreal", !7, i64 0, !7, i64 4}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!6, !7, i64 0}
!11 = distinct !{!11, !12, !13}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = distinct !{!14, !12, !13}
