; 154037512450157349172278485052117691571
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/154037512450157349172278485052117691571_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/154037512450157349172278485052117691571.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [32 x i8] c"This function is never called.\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Hello, World!\0A\00", align 1

; Function Attrs: nofree noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %0 = zext i32 %call to i64
  %vla = alloca i32, i64 %0, align 16
  %call116 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1)
  %cmp17 = icmp slt i32 %call116, 3
  br i1 %cmp17, label %for.body, label %for.body5.preheader

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %indvars23 = trunc i64 %indvars.iv to i32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx = getelementptr inbounds nuw i32, ptr %vla, i64 %indvars.iv
  store i32 %indvars23, ptr %arrayidx, align 4, !tbaa !5
  %call1 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1)
  %cmp = icmp slt i32 %call1, 3
  br i1 %cmp, label %for.body, label %for.body5.preheader, !llvm.loop !9

for.body5.preheader:                              ; preds = %for.body, %entry
  br label %for.body5

for.cond3:                                        ; preds = %for.body5
  %dec = add nsw i32 %i.120, -1
  %cmp4.not = icmp eq i32 %i.120, 0
  br i1 %cmp4.not, label %for.end10, label %for.body5, !llvm.loop !12

for.body5:                                        ; preds = %for.cond3, %for.body5.preheader
  %i.120 = phi i32 [ %dec, %for.cond3 ], [ 2, %for.body5.preheader ]
  %idxprom6 = zext nneg i32 %i.120 to i64
  %arrayidx7 = getelementptr inbounds nuw i32, ptr %vla, i64 %idxprom6
  %1 = load i32, ptr %arrayidx7, align 4, !tbaa !5
  %cmp8.not = icmp eq i32 %1, %i.120
  br i1 %cmp8.not, label %for.cond3, label %if.then

if.then:                                          ; preds = %for.body5
  tail call void @abort() #4
  unreachable

for.end10:                                        ; preds = %for.cond3
  tail call void @exit(i32 noundef 0) #4
  unreachable
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #1

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #2

; Function Attrs: nofree noreturn
declare void @exit(i32 noundef) local_unnamed_addr #3

attributes #0 = { nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
