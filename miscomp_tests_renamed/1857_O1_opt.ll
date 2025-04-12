; 138934597225339960763780180335986551484
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/138934597225339960763780180335986551484_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/138934597225339960763780180335986551484.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@c = dso_local local_unnamed_addr global i32 5, align 4
@b = dso_local local_unnamed_addr global i16 0, align 2
@a = internal unnamed_addr constant <{ i32, i32, i32, i32, i32, i32, i32, [33 x i32] }> <{ i32 7, i32 5, i32 3, i32 3, i32 0, i32 0, i32 3, [33 x i32] zeroinitializer }>, align 16

; Function Attrs: nofree noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %0 = load i32, ptr @c, align 4, !tbaa !5
  %tobool = icmp ne i32 %0, 0
  %lor.ext = zext i1 %tobool to i32
  br label %for.body

for.body:                                         ; preds = %for.inc, %entry
  %1 = phi i32 [ 3, %entry ], [ %2, %for.inc ]
  %storemerge13 = phi i16 [ 0, %entry ], [ %inc, %for.inc ]
  %tobool6.not = icmp eq i32 %1, %lor.ext
  br i1 %tobool6.not, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add i16 %storemerge13, 1
  %conv = sext i16 %inc to i64
  %add = add nsw i64 %conv, 6
  %arrayidx = getelementptr inbounds [40 x i32], ptr @a, i64 0, i64 %add
  %2 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %cmp = icmp slt i32 %2, 4
  br i1 %cmp, label %for.body, label %for.end, !llvm.loop !9

for.end:                                          ; preds = %for.inc, %for.body
  %storemerge.lcssa12 = phi i16 [ %storemerge13, %for.body ], [ %inc, %for.inc ]
  store i16 %storemerge.lcssa12, ptr @b, align 2, !tbaa !12
  %cmp8.not = icmp eq i16 %storemerge.lcssa12, 4
  br i1 %cmp8.not, label %if.end11, label %if.then10

if.then10:                                        ; preds = %for.end
  tail call void @abort() #3
  unreachable

if.end11:                                         ; preds = %for.end
  tail call void @exit(i32 noundef 0) #3
  unreachable
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #1

; Function Attrs: nofree noreturn
declare void @exit(i32 noundef) local_unnamed_addr #2

attributes #0 = { nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = !{!13, !13, i64 0}
!13 = !{!"short", !7, i64 0}
