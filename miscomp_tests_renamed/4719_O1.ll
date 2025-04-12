; 178179219989564552575629934550891616456
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/178179219989564552575629934550891616456.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/178179219989564552575629934550891616456.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sreal = type { i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"This branch is executed.\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"Dead code.\0A\00", align 1
@a = dso_local local_unnamed_addr global [4 x %struct.sreal] [%struct.sreal zeroinitializer, %struct.sreal { i32 1, i32 0 }, %struct.sreal { i32 0, i32 1 }, %struct.sreal { i32 1, i32 1 }], align 16

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @sreal_compare(ptr noundef readonly captures(none) %a, ptr noundef readonly captures(none) %b) local_unnamed_addr #0 {
entry:
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %exp = getelementptr inbounds nuw i8, ptr %b, i64 4
  %0 = load i32, ptr %exp, align 4, !tbaa !5
  %cmp = icmp sgt i32 %call, %0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1)
  br label %return

if.end:                                           ; preds = %entry
  %exp2 = getelementptr inbounds nuw i8, ptr %a, i64 4
  %1 = load i32, ptr %exp2, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %1, %0
  br i1 %cmp4, label %return, label %if.end6

if.end6:                                          ; preds = %if.end
  %2 = load i32, ptr %a, align 4, !tbaa !10
  %3 = load i32, ptr %b, align 4, !tbaa !10
  %cmp8 = icmp ugt i32 %2, %3
  br i1 %cmp8, label %return, label %if.end10

if.end10:                                         ; preds = %if.end6
  %cmp13 = icmp ult i32 %2, %3
  %conv.neg = sext i1 %cmp13 to i32
  br label %return

return:                                           ; preds = %if.end6, %if.end, %if.end10, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ %conv.neg, %if.end10 ], [ -1, %if.end ], [ 1, %if.end6 ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %entry, %for.inc28
  %indvars.iv79 = phi i64 [ 0, %entry ], [ %indvars.iv.next80, %for.inc28 ]
  %arrayidx = getelementptr inbounds nuw [4 x %struct.sreal], ptr @a, i64 0, i64 %indvars.iv79
  %exp2.i = getelementptr inbounds nuw i8, ptr %arrayidx, i64 4
  %arrayidx11 = getelementptr inbounds nuw [4 x %struct.sreal], ptr @a, i64 0, i64 %indvars.iv79
  %exp2.i49 = getelementptr inbounds nuw i8, ptr %arrayidx11, i64 4
  %arrayidx21 = getelementptr inbounds nuw [4 x %struct.sreal], ptr @a, i64 0, i64 %indvars.iv79
  %exp2.i64 = getelementptr inbounds nuw i8, ptr %arrayidx21, i64 4
  br label %for.body3

for.body3:                                        ; preds = %for.cond1.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.cond1.preheader ], [ %indvars.iv.next, %for.inc ]
  %cmp4 = icmp samesign ult i64 %indvars.iv79, %indvars.iv
  br i1 %cmp4, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body3
  %arrayidx6 = getelementptr inbounds nuw [4 x %struct.sreal], ptr @a, i64 0, i64 %indvars.iv
  %call.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %exp.i = getelementptr inbounds nuw i8, ptr %arrayidx6, i64 4
  %0 = load i32, ptr %exp.i, align 4, !tbaa !5
  %cmp.i = icmp sgt i32 %call.i, %0
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true
  %call1.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1)
  %1 = icmp eq i32 %call1.i, -1
  br label %sreal_compare.exit

if.end.i:                                         ; preds = %land.lhs.true
  %2 = load i32, ptr %exp2.i, align 4, !tbaa !5
  %cmp4.i = icmp slt i32 %2, %0
  br i1 %cmp4.i, label %if.end, label %if.end6.i

if.end6.i:                                        ; preds = %if.end.i
  %3 = load i32, ptr %arrayidx, align 8, !tbaa !10
  %4 = load i32, ptr %arrayidx6, align 8, !tbaa !10
  %cmp13.i = icmp ult i32 %3, %4
  br label %sreal_compare.exit

sreal_compare.exit:                               ; preds = %if.end6.i, %if.then.i
  %retval.0.i = phi i1 [ %1, %if.then.i ], [ %cmp13.i, %if.end6.i ]
  br i1 %retval.0.i, label %if.end, label %if.then

if.then:                                          ; preds = %sreal_compare.exit
  tail call void @abort() #3
  unreachable

if.end:                                           ; preds = %if.end.i, %sreal_compare.exit, %for.body3
  %cmp8 = icmp eq i64 %indvars.iv79, %indvars.iv
  br i1 %cmp8, label %land.lhs.true9, label %if.end17

land.lhs.true9:                                   ; preds = %if.end
  %arrayidx13 = getelementptr inbounds nuw [4 x %struct.sreal], ptr @a, i64 0, i64 %indvars.iv
  %call.i45 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %exp.i46 = getelementptr inbounds nuw i8, ptr %arrayidx13, i64 4
  %5 = load i32, ptr %exp.i46, align 4, !tbaa !5
  %cmp.i47 = icmp sgt i32 %call.i45, %5
  br i1 %cmp.i47, label %if.then.i57, label %if.end.i48

if.then.i57:                                      ; preds = %land.lhs.true9
  %call1.i58 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1)
  br label %sreal_compare.exit59

if.end.i48:                                       ; preds = %land.lhs.true9
  %6 = load i32, ptr %exp2.i49, align 4, !tbaa !5
  %cmp4.i50 = icmp slt i32 %6, %5
  br i1 %cmp4.i50, label %sreal_compare.exit59, label %if.end6.i51

if.end6.i51:                                      ; preds = %if.end.i48
  %7 = load i32, ptr %arrayidx11, align 8, !tbaa !10
  %8 = load i32, ptr %arrayidx13, align 8, !tbaa !10
  %cmp8.i52 = icmp ugt i32 %7, %8
  br i1 %cmp8.i52, label %sreal_compare.exit59, label %if.end10.i53

if.end10.i53:                                     ; preds = %if.end6.i51
  %cmp13.i54 = icmp ult i32 %7, %8
  %conv.neg.i55 = sext i1 %cmp13.i54 to i32
  br label %sreal_compare.exit59

sreal_compare.exit59:                             ; preds = %if.then.i57, %if.end.i48, %if.end6.i51, %if.end10.i53
  %retval.0.i56 = phi i32 [ %call1.i58, %if.then.i57 ], [ %conv.neg.i55, %if.end10.i53 ], [ -1, %if.end.i48 ], [ -1, %if.end6.i51 ]
  %cmp15.not = icmp eq i32 %retval.0.i56, 0
  br i1 %cmp15.not, label %if.end17, label %if.then16

if.then16:                                        ; preds = %sreal_compare.exit59
  tail call void @abort() #3
  unreachable

if.end17:                                         ; preds = %sreal_compare.exit59, %if.end
  %cmp18 = icmp samesign ugt i64 %indvars.iv79, %indvars.iv
  br i1 %cmp18, label %land.lhs.true19, label %for.inc

land.lhs.true19:                                  ; preds = %if.end17
  %arrayidx23 = getelementptr inbounds nuw [4 x %struct.sreal], ptr @a, i64 0, i64 %indvars.iv
  %call.i60 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %exp.i61 = getelementptr inbounds nuw i8, ptr %arrayidx23, i64 4
  %9 = load i32, ptr %exp.i61, align 4, !tbaa !5
  %cmp.i62 = icmp sgt i32 %call.i60, %9
  br i1 %cmp.i62, label %if.then.i72, label %if.end.i63

if.then.i72:                                      ; preds = %land.lhs.true19
  %call1.i73 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1)
  %10 = icmp eq i32 %call1.i73, 1
  br label %sreal_compare.exit74

if.end.i63:                                       ; preds = %land.lhs.true19
  %11 = load i32, ptr %exp2.i64, align 4, !tbaa !5
  %cmp4.i65 = icmp slt i32 %11, %9
  br i1 %cmp4.i65, label %if.then26, label %if.end6.i66

if.end6.i66:                                      ; preds = %if.end.i63
  %12 = load i32, ptr %arrayidx21, align 8, !tbaa !10
  %13 = load i32, ptr %arrayidx23, align 8, !tbaa !10
  %cmp8.i67 = icmp ugt i32 %12, %13
  br label %sreal_compare.exit74

sreal_compare.exit74:                             ; preds = %if.end6.i66, %if.then.i72
  %retval.0.i71 = phi i1 [ %10, %if.then.i72 ], [ %cmp8.i67, %if.end6.i66 ]
  br i1 %retval.0.i71, label %for.inc, label %if.then26

if.then26:                                        ; preds = %if.end.i63, %sreal_compare.exit74
  tail call void @abort() #3
  unreachable

for.inc:                                          ; preds = %if.end17, %sreal_compare.exit74
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond.not, label %for.inc28, label %for.body3, !llvm.loop !11

for.inc28:                                        ; preds = %for.inc
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 1
  %exitcond82.not = icmp eq i64 %indvars.iv.next80, 4
  br i1 %exitcond82.not, label %for.end30, label %for.cond1.preheader, !llvm.loop !14

for.end30:                                        ; preds = %for.inc28
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
