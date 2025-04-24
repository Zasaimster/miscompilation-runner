; 125418260348140091943557312468147871172
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/125418260348140091943557312468147871172_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/125418260348140091943557312468147871172.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@i = dso_local local_unnamed_addr global i32 0, align 4
@b = dso_local local_unnamed_addr global i16 0, align 2
@f = dso_local local_unnamed_addr global i32 0, align 4
@h = dso_local local_unnamed_addr global i32 0, align 4
@d = dso_local local_unnamed_addr global i32 0, align 4
@a = dso_local local_unnamed_addr global i32 0, align 4
@g = dso_local local_unnamed_addr global i32 0, align 4
@e = dso_local local_unnamed_addr global i32 0, align 4
@c = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local noundef i32 @fn1() local_unnamed_addr #0 {
entry:
  %0 = load i32, ptr @i, align 4, !tbaa !5
  %mul = mul nsw i32 %0, %0
  %conv = trunc i32 %mul to i16
  store i16 %conv, ptr @b, align 2, !tbaa !9
  %1 = load i32, ptr @h, align 4, !tbaa !5
  %tobool.not = icmp eq i32 %1, 0
  %f.promoted25 = load i32, ptr @f, align 4
  %2 = load i32, ptr @c, align 4
  %tobool14.not = icmp eq i32 %2, 0
  br label %for.cond.outer

for.cond.outer:                                   ; preds = %for.cond3, %entry
  %inc.lcssa28.ph = phi i32 [ %inc.lcssa27, %for.cond3 ], [ %f.promoted25, %entry ]
  br label %for.cond

for.cond:                                         ; preds = %if.then, %for.cond.outer
  br i1 %tobool.not, label %for.cond1.preheader, label %if.then

for.cond1.preheader:                              ; preds = %for.cond
  %tobool2.not22 = icmp eq i32 %inc.lcssa28.ph, 0
  br i1 %tobool2.not22, label %for.cond6, label %for.cond1.for.cond3.preheader_crit_edge

if.then:                                          ; preds = %for.cond
  store i32 0, ptr @d, align 4, !tbaa !5
  br label %for.cond

for.cond1.for.cond3.preheader_crit_edge:          ; preds = %for.cond1.preheader
  store i32 0, ptr @f, align 4, !tbaa !5
  br label %for.cond6

for.cond3:                                        ; preds = %for.cond6
  store i32 1, ptr @a, align 4, !tbaa !5
  br label %for.cond.outer

for.cond6:                                        ; preds = %for.cond1.for.cond3.preheader_crit_edge, %for.cond1.preheader
  %inc.lcssa27 = phi i32 [ 0, %for.cond1.for.cond3.preheader_crit_edge ], [ %inc.lcssa28.ph, %for.cond1.preheader ]
  br i1 %tobool14.not, label %return.critedge, label %for.cond3, !llvm.loop !11

return.critedge:                                  ; preds = %for.cond6
  %3 = and i16 %conv, -14658
  %tobool10.not = icmp eq i16 %3, 0
  %sub = sext i1 %tobool10.not to i32
  %sext = shl i32 %mul, 16
  %conv7 = ashr exact i32 %sext, 16
  %cond = add nsw i32 %conv7, %sub
  store i32 %cond, ptr @i, align 4
  store i32 %cond, ptr @g, align 4
  store i32 0, ptr @e, align 4
  store i32 0, ptr @a, align 4, !tbaa !5
  ret i32 0
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #1 {
entry:
  %0 = load i32, ptr @i, align 4, !tbaa !5
  %mul.i = mul nsw i32 %0, %0
  %conv.i = trunc i32 %mul.i to i16
  store i16 %conv.i, ptr @b, align 2, !tbaa !9
  %1 = load i32, ptr @h, align 4, !tbaa !5
  %tobool.not.i = icmp eq i32 %1, 0
  %f.promoted25.i = load i32, ptr @f, align 4
  %2 = load i32, ptr @c, align 4
  %tobool14.not.i = icmp eq i32 %2, 0
  br label %for.cond.i.outer

for.cond.i.outer:                                 ; preds = %for.cond6.i, %entry
  %inc.lcssa28.i.ph = phi i32 [ %inc.lcssa27.i, %for.cond6.i ], [ %f.promoted25.i, %entry ]
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.then.i, %for.cond.i.outer
  br i1 %tobool.not.i, label %for.cond1.preheader.i, label %if.then.i

for.cond1.preheader.i:                            ; preds = %for.cond.i
  %tobool2.not22.i = icmp eq i32 %inc.lcssa28.i.ph, 0
  br i1 %tobool2.not22.i, label %for.cond3.preheader.i, label %for.cond1.for.cond3.preheader_crit_edge.i

if.then.i:                                        ; preds = %for.cond.i
  store i32 0, ptr @d, align 4, !tbaa !5
  br label %for.cond.i

for.cond1.for.cond3.preheader_crit_edge.i:        ; preds = %for.cond1.preheader.i
  store i32 0, ptr @f, align 4, !tbaa !5
  br label %for.cond3.preheader.i

for.cond3.preheader.i:                            ; preds = %for.cond1.for.cond3.preheader_crit_edge.i, %for.cond1.preheader.i
  %inc.lcssa27.i = phi i32 [ 0, %for.cond1.for.cond3.preheader_crit_edge.i ], [ %inc.lcssa28.i.ph, %for.cond1.preheader.i ]
  br i1 %tobool14.not.i, label %fn1.exit, label %for.cond6.i, !llvm.loop !11

for.cond6.i:                                      ; preds = %for.cond3.preheader.i
  store i32 1, ptr @a, align 4, !tbaa !5
  br label %for.cond.i.outer

fn1.exit:                                         ; preds = %for.cond3.preheader.i
  %3 = and i16 %conv.i, -14658
  %tobool10.not.i = icmp eq i16 %3, 0
  %sub.i = sext i1 %tobool10.not.i to i32
  %sext.i = shl i32 %mul.i, 16
  %conv7.i = ashr exact i32 %sext.i, 16
  %cond.i = add nsw i32 %conv7.i, %sub.i
  store i32 %cond.i, ptr @i, align 4
  store i32 %cond.i, ptr @g, align 4
  store i32 0, ptr @e, align 4
  store i32 0, ptr @a, align 4, !tbaa !5
  %cmp.not = icmp eq i32 %cond.i, -1
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %fn1.exit
  tail call void @abort() #3
  unreachable

if.end:                                           ; preds = %fn1.exit
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
!9 = !{!10, !10, i64 0}
!10 = !{!"short", !7, i64 0}
!11 = distinct !{!11, !12, !13}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.unroll.disable"}
