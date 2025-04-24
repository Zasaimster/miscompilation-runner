; 157816954049845524279790408400346011802
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/157816954049845524279790408400346011802.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/157816954049845524279790408400346011802.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@a = dso_local local_unnamed_addr global [2 x i32] zeroinitializer, align 4

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @f(i32 noundef %b) local_unnamed_addr #0 {
entry:
  %call4 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef 0)
  %cmp5 = icmp slt i32 %call4, %b
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %i.06 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  %sub = add i32 %i.06, -2
  %idxprom = zext i32 %i.06 to i64
  %arrayidx = getelementptr inbounds nuw [2 x i32], ptr @a, i64 0, i64 %idxprom
  store i32 %sub, ptr %arrayidx, align 4, !tbaa !5
  %inc = add i32 %i.06, 1
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %inc)
  %cmp = icmp slt i32 %call, %b
  br i1 %cmp, label %for.body, label %for.end, !llvm.loop !9

for.end:                                          ; preds = %for.body, %entry
  ret i32 undef
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #1

; Function Attrs: nofree noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @a, i64 4), align 4, !tbaa !5
  store i32 0, ptr @a, align 4, !tbaa !5
  %call4.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef 0)
  %cmp5.i = icmp slt i32 %call4.i, 2
  br i1 %cmp5.i, label %for.body.i, label %f.exit

for.body.i:                                       ; preds = %entry, %for.body.i
  %i.06.i = phi i32 [ %inc.i, %for.body.i ], [ 0, %entry ]
  %sub.i = add i32 %i.06.i, -2
  %idxprom.i = zext i32 %i.06.i to i64
  %arrayidx.i = getelementptr inbounds nuw [2 x i32], ptr @a, i64 0, i64 %idxprom.i
  store i32 %sub.i, ptr %arrayidx.i, align 4, !tbaa !5
  %inc.i = add i32 %i.06.i, 1
  %call.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %inc.i)
  %cmp.i = icmp slt i32 %call.i, 2
  br i1 %cmp.i, label %for.body.i, label %f.exit, !llvm.loop !9

f.exit:                                           ; preds = %for.body.i, %entry
  %0 = load i32, ptr @a, align 4, !tbaa !5
  %cmp = icmp ne i32 %0, -2
  %1 = load i32, ptr getelementptr inbounds nuw (i8, ptr @a, i64 4), align 4
  %cmp1 = icmp ne i32 %1, -1
  %or.cond = select i1 %cmp, i1 true, i1 %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %f.exit
  tail call void @abort() #5
  unreachable

if.end:                                           ; preds = %f.exit
  tail call void @exit(i32 noundef 0) #5
  unreachable
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #3

; Function Attrs: nofree noreturn
declare void @exit(i32 noundef) local_unnamed_addr #4

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind }

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
