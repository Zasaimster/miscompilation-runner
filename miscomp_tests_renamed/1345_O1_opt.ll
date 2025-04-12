; 188914884974524546842348840299537128055
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/188914884974524546842348840299537128055_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/188914884974524546842348840299537128055.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@b = dso_local local_unnamed_addr global i16 0, align 2
@.str = private unnamed_addr constant [11 x i8] c"Finished!\0A\00", align 1
@f = dso_local local_unnamed_addr global i32 0, align 4
@h = dso_local local_unnamed_addr global i32 0, align 4
@d = dso_local local_unnamed_addr global i32 0, align 4
@a = dso_local local_unnamed_addr global i32 0, align 4
@i = dso_local local_unnamed_addr global i32 0, align 4
@g = dso_local local_unnamed_addr global i32 0, align 4
@e = dso_local local_unnamed_addr global i32 0, align 4
@c = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @fn1() local_unnamed_addr #0 {
entry:
  store i16 42, ptr @b, align 2, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %cleanup, %entry
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %0 = zext i32 %call to i64
  %1 = tail call ptr @llvm.stacksave.p0()
  %vla = alloca i32, i64 %0, align 16
  %2 = load i32, ptr @f, align 4, !tbaa !9
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds i32, ptr %vla, i64 %idxprom
  store i32 0, ptr %arrayidx, align 4, !tbaa !9
  %3 = load i32, ptr @h, align 4, !tbaa !9
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %for.cond1.preheader, label %if.then

for.cond1.preheader:                              ; preds = %for.cond
  %f.promoted = load i32, ptr @f, align 4, !tbaa !9
  %tobool2.not20 = icmp eq i32 %f.promoted, 0
  br i1 %tobool2.not20, label %for.cond3.preheader, label %for.cond1.for.cond3.preheader_crit_edge

if.then:                                          ; preds = %for.cond
  store i32 0, ptr @d, align 4, !tbaa !9
  br label %cleanup

for.cond1.for.cond3.preheader_crit_edge:          ; preds = %for.cond1.preheader
  store i32 0, ptr @f, align 4, !tbaa !9
  br label %for.cond3.preheader

for.cond3.preheader:                              ; preds = %for.cond1.for.cond3.preheader_crit_edge, %for.cond1.preheader
  %4 = load i16, ptr @b, align 2, !tbaa !5
  %conv = sext i16 %4 to i32
  %5 = and i16 %4, -14658
  %tobool8.not = icmp eq i16 %5, 0
  %sub = sext i1 %tobool8.not to i32
  %cond = add nsw i32 %sub, %conv
  store i32 %cond, ptr @i, align 4, !tbaa !9
  store i32 %cond, ptr @g, align 4, !tbaa !9
  %6 = load i32, ptr %vla, align 16, !tbaa !9
  store i32 %6, ptr @e, align 4, !tbaa !9
  %7 = load i32, ptr @c, align 4, !tbaa !9
  %tobool12.not = icmp eq i32 %7, 0
  br i1 %tobool12.not, label %return.critedge, label %for.cond3, !llvm.loop !11

for.cond3:                                        ; preds = %for.cond3.preheader
  store i32 1, ptr @a, align 4, !tbaa !9
  br label %cleanup

cleanup:                                          ; preds = %for.cond3, %if.then
  call void @llvm.stackrestore.p0(ptr %1)
  br label %for.cond

return.critedge:                                  ; preds = %for.cond3.preheader
  store i32 0, ptr @a, align 4, !tbaa !9
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #2

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %call = tail call i32 @fn1()
  %0 = load i32, ptr @g, align 4, !tbaa !9
  %cmp.not = icmp eq i32 %0, -1
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @abort() #4
  unreachable

if.end:                                           ; preds = %entry
  ret i32 0
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #3

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"short", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !7, i64 0}
!11 = distinct !{!11, !12, !13}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.unroll.disable"}
