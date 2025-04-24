; 128447355689571160682017154473733460478
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/128447355689571160682017154473733460478.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/128447355689571160682017154473733460478.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@buf = dso_local local_unnamed_addr global [65 x i8] zeroinitializer, align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @foo(i32 noundef %x) local_unnamed_addr #0 {
entry:
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #1 {
entry:
  store i8 2, ptr getelementptr inbounds nuw (i8, ptr @buf, i64 64), align 16, !tbaa !5
  br label %for.body

for.cond:                                         ; preds = %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 64
  br i1 %exitcond.not, label %for.body6, label %for.body, !llvm.loop !8

for.body:                                         ; preds = %entry, %for.cond
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.cond ]
  %arrayidx = getelementptr inbounds nuw [65 x i8], ptr @buf, i64 0, i64 %indvars.iv
  %0 = load i8, ptr %arrayidx, align 1, !tbaa !5
  %cmp1.not = icmp eq i8 %0, 0
  br i1 %cmp1.not, label %for.cond, label %if.then

if.then:                                          ; preds = %for.body
  tail call void @abort() #3
  unreachable

for.cond3:                                        ; preds = %for.body6
  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48, 1
  %exitcond51.not = icmp eq i64 %indvars.iv.next49, 64
  br i1 %exitcond51.not, label %for.body20, label %for.body6, !llvm.loop !11

for.body6:                                        ; preds = %for.cond, %for.cond3
  %indvars.iv48 = phi i64 [ %indvars.iv.next49, %for.cond3 ], [ 0, %for.cond ]
  %arrayidx8 = getelementptr inbounds nuw [65 x i8], ptr @buf, i64 0, i64 %indvars.iv48
  %1 = load i8, ptr %arrayidx8, align 1, !tbaa !5
  %cmp10.not = icmp eq i8 %1, 1
  br i1 %cmp10.not, label %for.cond3, label %if.then12

if.then12:                                        ; preds = %for.body6
  tail call void @abort() #3
  unreachable

for.cond17:                                       ; preds = %for.body20
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1
  %exitcond55.not = icmp eq i64 %indvars.iv.next53, 64
  br i1 %exitcond55.not, label %if.end35, label %for.body20, !llvm.loop !12

for.body20:                                       ; preds = %for.cond3, %for.cond17
  %indvars.iv52 = phi i64 [ %indvars.iv.next53, %for.cond17 ], [ 0, %for.cond3 ]
  %arrayidx22 = getelementptr inbounds nuw [65 x i8], ptr @buf, i64 0, i64 %indvars.iv52
  %2 = load i8, ptr %arrayidx22, align 1, !tbaa !5
  %cmp24.not = icmp eq i8 %2, 0
  br i1 %cmp24.not, label %for.cond17, label %if.then26

if.then26:                                        ; preds = %for.body20
  tail call void @abort() #3
  unreachable

if.end35:                                         ; preds = %for.cond17
  ret i32 0
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = distinct !{!8, !9, !10}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = distinct !{!11, !9, !10}
!12 = distinct !{!12, !9, !10}
