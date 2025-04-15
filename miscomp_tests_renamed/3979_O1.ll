; 14451978967881862264003023037434502364
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/14451978967881862264003023037434502364.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/14451978967881862264003023037434502364.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@w = dso_local local_unnamed_addr global [2 x [2 x i32]] zeroinitializer, align 16

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @f() local_unnamed_addr #0 {
entry:
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %entry, %for.inc7
  %indvars.iv19 = phi i64 [ 0, %entry ], [ %indvars.iv.next20, %for.inc7 ]
  br label %for.body3

for.body3:                                        ; preds = %for.cond1.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.cond1.preheader ], [ %indvars.iv.next, %for.inc ]
  %cmp4 = icmp eq i64 %indvars.iv19, %indvars.iv
  br i1 %cmp4, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body3
  %arrayidx6 = getelementptr inbounds nuw [2 x [2 x i32]], ptr @w, i64 0, i64 %indvars.iv19, i64 %indvars.iv
  store i32 1, ptr %arrayidx6, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body3, %if.then
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %cmp2 = icmp eq i64 %indvars.iv, 0
  br i1 %cmp2, label %for.body3, label %for.inc7, !llvm.loop !9

for.inc7:                                         ; preds = %for.inc
  %indvars.iv.next20 = add nuw nsw i64 %indvars.iv19, 1
  %cmp = icmp eq i64 %indvars.iv19, 0
  br i1 %cmp, label %for.cond1.preheader, label %for.end9, !llvm.loop !12

for.end9:                                         ; preds = %for.inc7
  ret i32 undef
}

; Function Attrs: nofree noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #1 {
entry:
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.inc7.i, %entry
  %indvars.iv19.i = phi i64 [ 0, %entry ], [ %indvars.iv.next20.i, %for.inc7.i ]
  br label %for.body3.i

for.body3.i:                                      ; preds = %for.inc.i, %for.cond1.preheader.i
  %indvars.iv.i = phi i64 [ 0, %for.cond1.preheader.i ], [ %indvars.iv.next.i, %for.inc.i ]
  %cmp4.i = icmp eq i64 %indvars.iv19.i, %indvars.iv.i
  br i1 %cmp4.i, label %if.then.i, label %for.inc.i

if.then.i:                                        ; preds = %for.body3.i
  %arrayidx6.i = getelementptr inbounds nuw [2 x [2 x i32]], ptr @w, i64 0, i64 %indvars.iv19.i, i64 %indvars.iv.i
  store i32 1, ptr %arrayidx6.i, align 4, !tbaa !5
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body3.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %cmp2.i = icmp eq i64 %indvars.iv.i, 0
  br i1 %cmp2.i, label %for.body3.i, label %for.inc7.i, !llvm.loop !9

for.inc7.i:                                       ; preds = %for.inc.i
  %indvars.iv.next20.i = add nuw nsw i64 %indvars.iv19.i, 1
  %cmp.i = icmp eq i64 %indvars.iv19.i, 0
  br i1 %cmp.i, label %for.cond1.preheader.i, label %f.exit, !llvm.loop !12

f.exit:                                           ; preds = %for.inc7.i
  %0 = load i32, ptr @w, align 16, !tbaa !5
  %cmp = icmp ne i32 %0, 1
  %1 = load i32, ptr getelementptr inbounds nuw (i8, ptr @w, i64 12), align 4
  %cmp1 = icmp ne i32 %1, 1
  %or.cond = select i1 %cmp, i1 true, i1 %cmp1
  %2 = load i32, ptr getelementptr inbounds nuw (i8, ptr @w, i64 8), align 8
  %cmp3 = icmp ne i32 %2, 0
  %or.cond6 = select i1 %or.cond, i1 true, i1 %cmp3
  %3 = load i32, ptr getelementptr inbounds nuw (i8, ptr @w, i64 4), align 4
  %cmp5 = icmp ne i32 %3, 0
  %or.cond7 = select i1 %or.cond6, i1 true, i1 %cmp5
  br i1 %or.cond7, label %if.then, label %if.end

if.then:                                          ; preds = %f.exit
  tail call void @abort() #4
  unreachable

if.end:                                           ; preds = %f.exit
  tail call void @exit(i32 noundef 0) #4
  unreachable
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #2

; Function Attrs: nofree noreturn
declare void @exit(i32 noundef) local_unnamed_addr #3

attributes #0 = { nofree norecurse nosync nounwind memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
