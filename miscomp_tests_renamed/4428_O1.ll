; 186438373961521456332278033278995376510
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/186438373961521456332278033278995376510.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/186438373961521456332278033278995376510.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sreal = type { i32, i32 }

@a = dso_local local_unnamed_addr global [4 x %struct.sreal] [%struct.sreal zeroinitializer, %struct.sreal { i32 1, i32 0 }, %struct.sreal { i32 0, i32 1 }, %struct.sreal { i32 1, i32 1 }], align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i32 -1, 2) i32 @sreal_compare(ptr noundef readonly captures(none) %a, ptr noundef readonly captures(none) %b) local_unnamed_addr #0 {
entry:
  %exp = getelementptr inbounds nuw i8, ptr %a, i64 4
  %0 = load i32, ptr %exp, align 4, !tbaa !5
  %1 = load i32, ptr %a, align 4, !tbaa !10
  %2 = load i32, ptr %b, align 4, !tbaa !10
  %cmp = icmp ult i32 %1, %2
  %conv.neg = sext i1 %cmp to i32
  %sub = add i32 %0, %conv.neg
  %exp2 = getelementptr inbounds nuw i8, ptr %b, i64 4
  %3 = load i32, ptr %exp2, align 4, !tbaa !5
  %cmp3 = icmp sgt i32 %sub, %3
  br i1 %cmp3, label %return, label %if.end

if.end:                                           ; preds = %entry
  %cmp7 = icmp slt i32 %0, %3
  br i1 %cmp7, label %return, label %if.end10

if.end10:                                         ; preds = %if.end
  %.conv.neg = tail call i32 @llvm.ucmp.i32.i32(i32 %1, i32 %2)
  br label %return

return:                                           ; preds = %if.end10, %if.end, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ -1, %if.end ], [ %.conv.neg, %if.end10 ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #1 {
entry:
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %entry, %for.inc28
  %indvars.iv75 = phi i64 [ 0, %entry ], [ %indvars.iv.next76, %for.inc28 ]
  %arrayidx = getelementptr inbounds nuw [4 x %struct.sreal], ptr @a, i64 0, i64 %indvars.iv75
  %exp.i = getelementptr inbounds nuw i8, ptr %arrayidx, i64 4
  %arrayidx11 = getelementptr inbounds nuw [4 x %struct.sreal], ptr @a, i64 0, i64 %indvars.iv75
  %exp.i45 = getelementptr inbounds nuw i8, ptr %arrayidx11, i64 4
  %arrayidx21 = getelementptr inbounds nuw [4 x %struct.sreal], ptr @a, i64 0, i64 %indvars.iv75
  %exp.i57 = getelementptr inbounds nuw i8, ptr %arrayidx21, i64 4
  br label %for.body3

for.body3:                                        ; preds = %for.cond1.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.cond1.preheader ], [ %indvars.iv.next, %for.inc ]
  %cmp4 = icmp samesign ult i64 %indvars.iv75, %indvars.iv
  br i1 %cmp4, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body3
  %arrayidx6 = getelementptr inbounds nuw [4 x %struct.sreal], ptr @a, i64 0, i64 %indvars.iv
  %0 = load i32, ptr %exp.i, align 4, !tbaa !5
  %1 = load i32, ptr %arrayidx, align 8, !tbaa !10
  %2 = load i32, ptr %arrayidx6, align 8, !tbaa !10
  %cmp.i = icmp ult i32 %1, %2
  %conv.neg.i = sext i1 %cmp.i to i32
  %sub.i = add i32 %0, %conv.neg.i
  %exp2.i = getelementptr inbounds nuw i8, ptr %arrayidx6, i64 4
  %3 = load i32, ptr %exp2.i, align 4, !tbaa !5
  %cmp3.i = icmp sgt i32 %sub.i, %3
  br i1 %cmp3.i, label %if.then, label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true
  %cmp7.i = icmp slt i32 %0, %3
  %4 = icmp ult i32 %1, %2
  %spec.select = or i1 %cmp7.i, %4
  br i1 %spec.select, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true, %if.end.i
  tail call void @abort() #4
  unreachable

if.end:                                           ; preds = %if.end.i, %for.body3
  %cmp8 = icmp eq i64 %indvars.iv75, %indvars.iv
  br i1 %cmp8, label %land.lhs.true9, label %if.end17

land.lhs.true9:                                   ; preds = %if.end
  %arrayidx13 = getelementptr inbounds nuw [4 x %struct.sreal], ptr @a, i64 0, i64 %indvars.iv
  %5 = load i32, ptr %exp.i45, align 4, !tbaa !5
  %6 = load i32, ptr %arrayidx11, align 8, !tbaa !10
  %7 = load i32, ptr %arrayidx13, align 8, !tbaa !10
  %cmp.i46 = icmp ult i32 %6, %7
  %conv.neg.i47 = sext i1 %cmp.i46 to i32
  %sub.i48 = add i32 %5, %conv.neg.i47
  %exp2.i49 = getelementptr inbounds nuw i8, ptr %arrayidx13, i64 4
  %8 = load i32, ptr %exp2.i49, align 4, !tbaa !5
  %cmp3.i50 = icmp sle i32 %sub.i48, %8
  %cmp7.i52 = icmp sge i32 %5, %8
  %or.cond.not73 = and i1 %cmp7.i52, %cmp3.i50
  %9 = icmp eq i32 %6, %7
  %or.cond70 = and i1 %9, %or.cond.not73
  br i1 %or.cond70, label %if.end17, label %if.then16

if.then16:                                        ; preds = %land.lhs.true9
  tail call void @abort() #4
  unreachable

if.end17:                                         ; preds = %land.lhs.true9, %if.end
  %cmp18 = icmp samesign ugt i64 %indvars.iv75, %indvars.iv
  br i1 %cmp18, label %land.lhs.true19, label %for.inc

land.lhs.true19:                                  ; preds = %if.end17
  %arrayidx23 = getelementptr inbounds nuw [4 x %struct.sreal], ptr @a, i64 0, i64 %indvars.iv
  %10 = load i32, ptr %exp.i57, align 4, !tbaa !5
  %11 = load i32, ptr %arrayidx21, align 8, !tbaa !10
  %12 = load i32, ptr %arrayidx23, align 8, !tbaa !10
  %cmp.i58 = icmp ult i32 %11, %12
  %conv.neg.i59 = sext i1 %cmp.i58 to i32
  %sub.i60 = add i32 %10, %conv.neg.i59
  %exp2.i61 = getelementptr inbounds nuw i8, ptr %arrayidx23, i64 4
  %13 = load i32, ptr %exp2.i61, align 4, !tbaa !5
  %cmp3.i62 = icmp sgt i32 %sub.i60, %13
  br i1 %cmp3.i62, label %for.inc, label %if.end.i63

if.end.i63:                                       ; preds = %land.lhs.true19
  %cmp7.i64 = icmp sge i32 %10, %13
  %14 = icmp ugt i32 %11, %12
  %spec.select69 = and i1 %cmp7.i64, %14
  br i1 %spec.select69, label %for.inc, label %if.then26

if.then26:                                        ; preds = %if.end.i63
  tail call void @abort() #4
  unreachable

for.inc:                                          ; preds = %land.lhs.true19, %if.end17, %if.end.i63
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond.not, label %for.inc28, label %for.body3, !llvm.loop !11

for.inc28:                                        ; preds = %for.inc
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 1
  %exitcond78.not = icmp eq i64 %indvars.iv.next76, 4
  br i1 %exitcond78.not, label %for.end30, label %for.cond1.preheader, !llvm.loop !14

for.end30:                                        ; preds = %for.inc28
  ret i32 0
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ucmp.i32.i32(i32, i32) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { noreturn nounwind }

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
