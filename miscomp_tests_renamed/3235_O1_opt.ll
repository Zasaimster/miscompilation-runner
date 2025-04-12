; 178251688666746214422268864032616030663
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/178251688666746214422268864032616030663_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/178251688666746214422268864032616030663.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"Positive\0A\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local void @f(i32 noundef %i, i32 noundef %j, i32 noundef %radius, i32 noundef %width, i32 noundef %N) local_unnamed_addr #0 {
entry:
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %sub = sub nsw i32 %call, %radius
  %cmp120 = icmp slt i32 %sub, 3
  br i1 %cmp120, label %for.body.lr.ph, label %for.end11

for.body.lr.ph:                                   ; preds = %entry
  %cond = tail call i32 @llvm.smax.i32(i32 %sub, i32 0)
  %sub2 = sub i32 %radius, %i
  %sub3 = sub i32 %radius, %j
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %k.021, 1
  %exitcond.not = icmp eq i32 %inc, 3
  br i1 %exitcond.not, label %for.end11, label %for.body, !llvm.loop !5

for.body:                                         ; preds = %for.cond, %for.body.lr.ph
  %k.021 = phi i32 [ %cond, %for.body.lr.ph ], [ %inc, %for.cond ]
  %add = add i32 %sub2, %k.021
  %mul = mul nsw i32 %add, %width
  %add4 = add i32 %sub3, %mul
  %cmp5 = icmp slt i32 %add4, 0
  br i1 %cmp5, label %if.then, label %for.cond

if.then:                                          ; preds = %for.body
  tail call void @abort() #6
  unreachable

for.end11:                                        ; preds = %for.cond, %entry
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #1

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #2

; Function Attrs: nofree noreturn nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %argc, ptr noundef readnone captures(none) %argv) local_unnamed_addr #3 {
entry:
  br label %for.body

for.body:                                         ; preds = %f.exit, %entry
  %i.04 = phi i32 [ 1, %entry ], [ %inc, %f.exit ]
  %call.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %cmp120.i = icmp slt i32 %call.i, 5
  br i1 %cmp120.i, label %for.body.lr.ph.i, label %f.exit

for.body.lr.ph.i:                                 ; preds = %for.body
  %0 = tail call i32 @llvm.smax.i32(i32 %call.i, i32 2)
  %cond.i = add nsw i32 %0, -2
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %k.021.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 3
  br i1 %exitcond.not.i, label %f.exit, label %for.body.i, !llvm.loop !5

for.body.i:                                       ; preds = %for.cond.i, %for.body.lr.ph.i
  %k.021.i = phi i32 [ %cond.i, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i ]
  %reass.sub = sub i32 %k.021.i, %i.04
  %1 = mul i32 %reass.sub, 5
  %add4.i = add i32 %1, 11
  %cmp5.i = icmp slt i32 %add4.i, 0
  br i1 %cmp5.i, label %if.then.i, label %for.cond.i

if.then.i:                                        ; preds = %for.body.i
  tail call void @abort() #6
  unreachable

f.exit:                                           ; preds = %for.cond.i, %for.body
  %inc = add nuw nsw i32 %i.04, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !8

for.end:                                          ; preds = %f.exit
  tail call void @exit(i32 noundef 0) #6
  unreachable
}

; Function Attrs: nofree noreturn
declare void @exit(i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
!5 = distinct !{!5, !6, !7}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!"llvm.loop.unroll.disable"}
!8 = distinct !{!8, !6, !7}
