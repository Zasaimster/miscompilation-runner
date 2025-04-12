; 161996432792618014828662603862010142362
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/161996432792618014828662603862010142362_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/161996432792618014828662603862010142362.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @f(i32 noundef %x) local_unnamed_addr #0 {
entry:
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %x)
  %and9 = and i32 %call, 1
  %cmp10 = icmp eq i32 %and9, 0
  br i1 %cmp10, label %while.body, label %while.end

while.body:                                       ; preds = %while.body, %entry
  %num.012 = phi i32 [ %inc, %while.body ], [ 0, %entry ]
  %reg.sroa.2.0.in11 = phi i32 [ %shr, %while.body ], [ %call, %entry ]
  %sext = shl i32 %reg.sroa.2.0.in11, 24
  %inc = add nuw nsw i32 %num.012, 1
  %shr = ashr exact i32 %sext, 25
  %0 = and i32 %reg.sroa.2.0.in11, 2
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %while.body, label %while.end, !llvm.loop !5

while.end:                                        ; preds = %while.body, %entry
  %num.0.lcssa = phi i32 [ 0, %entry ], [ %inc, %while.body ]
  ret i32 %num.0.lcssa
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #1

; Function Attrs: nofree noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  %call.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef 2)
  %and9.i = and i32 %call.i, 1
  %cmp10.i = icmp eq i32 %and9.i, 0
  br i1 %cmp10.i, label %while.body.i, label %if.then

while.body.i:                                     ; preds = %while.body.i, %entry
  %num.012.i = phi i32 [ %inc.i, %while.body.i ], [ 0, %entry ]
  %reg.sroa.2.0.in11.i = phi i32 [ %shr.i, %while.body.i ], [ %call.i, %entry ]
  %sext.i = shl i32 %reg.sroa.2.0.in11.i, 24
  %inc.i = add nuw nsw i32 %num.012.i, 1
  %shr.i = ashr exact i32 %sext.i, 25
  %0 = and i32 %reg.sroa.2.0.in11.i, 2
  %cmp.i = icmp eq i32 %0, 0
  br i1 %cmp.i, label %while.body.i, label %f.exit.loopexit, !llvm.loop !5

f.exit.loopexit:                                  ; preds = %while.body.i
  %1 = icmp eq i32 %num.012.i, 0
  br i1 %1, label %if.end, label %if.then

if.then:                                          ; preds = %f.exit.loopexit, %entry
  tail call void @abort() #5
  unreachable

if.end:                                           ; preds = %f.exit.loopexit
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
!5 = distinct !{!5, !6, !7}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!"llvm.loop.unroll.disable"}
