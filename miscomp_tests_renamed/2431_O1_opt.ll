; 142501605005481164216572926803231388120
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/142501605005481164216572926803231388120_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/142501605005481164216572926803231388120.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@buf = dso_local local_unnamed_addr global [65 x i8] zeroinitializer, align 16
@str = private unnamed_addr constant [14 x i8] c"Hello, World!\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local void @foo(i32 noundef %x) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp ne i32 %x, 2
  %0 = zext i1 %cmp.not to i8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) @buf, i8 %0, i64 64, i1 false)
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  store i8 2, ptr getelementptr inbounds nuw (i8, ptr @buf, i64 64), align 16, !tbaa !5
  br label %for.body

for.cond:                                         ; preds = %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 64
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !8

for.body:                                         ; preds = %for.cond, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.cond ]
  %arrayidx = getelementptr inbounds nuw [65 x i8], ptr @buf, i64 0, i64 %indvars.iv
  %0 = load i8, ptr %arrayidx, align 1, !tbaa !5
  %cmp1.not = icmp eq i8 %0, 0
  br i1 %cmp1.not, label %for.cond, label %if.then

if.then:                                          ; preds = %for.body
  tail call void @abort() #4
  unreachable

for.end:                                          ; preds = %for.cond
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) @buf, i8 1, i64 64, i1 false)
  %puts.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %for.body6

for.cond3:                                        ; preds = %for.body6
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1
  %exitcond52.not = icmp eq i64 %indvars.iv.next50, 64
  br i1 %exitcond52.not, label %for.end16, label %for.body6, !llvm.loop !11

for.body6:                                        ; preds = %for.cond3, %for.end
  %indvars.iv49 = phi i64 [ 0, %for.end ], [ %indvars.iv.next50, %for.cond3 ]
  %arrayidx8 = getelementptr inbounds nuw [65 x i8], ptr @buf, i64 0, i64 %indvars.iv49
  %1 = load i8, ptr %arrayidx8, align 1, !tbaa !5
  %cmp10.not = icmp eq i8 %1, 1
  br i1 %cmp10.not, label %for.cond3, label %if.then12

if.then12:                                        ; preds = %for.body6
  tail call void @abort() #4
  unreachable

for.end16:                                        ; preds = %for.cond3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) @buf, i8 0, i64 64, i1 false)
  %puts.i44 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %for.body20

for.cond17:                                       ; preds = %for.body20
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1
  %exitcond56.not = icmp eq i64 %indvars.iv.next54, 64
  br i1 %exitcond56.not, label %for.end30, label %for.body20, !llvm.loop !12

for.body20:                                       ; preds = %for.cond17, %for.end16
  %indvars.iv53 = phi i64 [ 0, %for.end16 ], [ %indvars.iv.next54, %for.cond17 ]
  %arrayidx22 = getelementptr inbounds nuw [65 x i8], ptr @buf, i64 0, i64 %indvars.iv53
  %2 = load i8, ptr %arrayidx22, align 1, !tbaa !5
  %cmp24.not = icmp eq i8 %2, 0
  br i1 %cmp24.not, label %for.cond17, label %if.then26

if.then26:                                        ; preds = %for.body20
  tail call void @abort() #4
  unreachable

for.end30:                                        ; preds = %for.cond17
  %3 = load i8, ptr getelementptr inbounds nuw (i8, ptr @buf, i64 64), align 16, !tbaa !5
  %cmp32.not = icmp eq i8 %3, 2
  br i1 %cmp32.not, label %if.end35, label %if.then34

if.then34:                                        ; preds = %for.end30
  tail call void @abort() #4
  unreachable

if.end35:                                         ; preds = %for.end30
  ret i32 0
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #3

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { noreturn nounwind }

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
