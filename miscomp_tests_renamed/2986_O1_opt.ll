; 134935099904385451863155518316911484598
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/134935099904385451863155518316911484598_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/134935099904385451863155518316911484598.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree nounwind uwtable
define dso_local void @f(i32 noundef %i, i32 noundef %j, i32 noundef %radius, i32 noundef %width, i32 noundef %N) local_unnamed_addr #0 {
entry:
  %sub = sub i32 %radius, %i
  %sub1 = sub i32 %radius, %j
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %k.015, 1
  %exitcond.not = icmp eq i32 %inc, 3
  br i1 %exitcond.not, label %for.end9, label %for.body, !llvm.loop !5

for.body:                                         ; preds = %for.cond, %entry
  %k.015 = phi i32 [ 0, %entry ], [ %inc, %for.cond ]
  %add = add i32 %sub, %k.015
  %mul = mul nsw i32 %add, %width
  %add2 = add i32 %sub1, %mul
  %cmp3 = icmp slt i32 %add2, 0
  br i1 %cmp3, label %if.then, label %for.cond

if.then:                                          ; preds = %for.body
  tail call void @abort() #4
  unreachable

for.end9:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #1

; Function Attrs: nofree noreturn nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %argc, ptr noundef readnone captures(none) %argv) local_unnamed_addr #2 {
entry:
  br label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %f.exit, %entry
  %indvars.iv = phi i32 [ 6, %entry ], [ %indvars.iv.next, %f.exit ]
  %i.04 = phi i32 [ 1, %entry ], [ %inc, %f.exit ]
  %cmp3.i = icmp slt i32 %indvars.iv, 0
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %k.015.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 3
  br i1 %exitcond.not.i, label %f.exit, label %for.body.i, !llvm.loop !5

for.body.i:                                       ; preds = %for.cond.i, %for.body.i.preheader
  %k.015.i = phi i32 [ %inc.i, %for.cond.i ], [ 0, %for.body.i.preheader ]
  br i1 %cmp3.i, label %if.then.i, label %for.cond.i

if.then.i:                                        ; preds = %for.body.i
  tail call void @abort() #4
  unreachable

f.exit:                                           ; preds = %for.cond.i
  %inc = add nuw nsw i32 %i.04, 1
  %indvars.iv.next = add nsw i32 %indvars.iv, -5
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.end, label %for.body.i.preheader, !llvm.loop !8

for.end:                                          ; preds = %f.exit
  tail call void @exit(i32 noundef 0) #4
  unreachable
}

; Function Attrs: nofree noreturn
declare void @exit(i32 noundef) local_unnamed_addr #3

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }

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
