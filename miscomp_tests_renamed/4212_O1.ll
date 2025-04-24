; 173754769286237229658181903838768963249
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/173754769286237229658181903838768963249.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/173754769286237229658181903838768963249.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @f(i32 noundef %x) local_unnamed_addr #0 {
entry:
  %call = tail call i32 (...) @deadFunction() #4
  %and9 = and i32 %x, 1
  %cmp10 = icmp eq i32 %and9, 0
  br i1 %cmp10, label %while.body, label %while.end

while.body:                                       ; preds = %entry, %while.body
  %num.012 = phi i32 [ %inc, %while.body ], [ 0, %entry ]
  %reg.sroa.2.0.in11 = phi i32 [ %shr, %while.body ], [ %x, %entry ]
  %sext = shl i32 %reg.sroa.2.0.in11, 16
  %inc = add nuw nsw i32 %num.012, 1
  %shr = ashr exact i32 %sext, 17
  %0 = and i32 %reg.sroa.2.0.in11, 2
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %while.body, label %while.end, !llvm.loop !5

while.end:                                        ; preds = %while.body, %entry
  %num.0.lcssa = phi i32 [ 0, %entry ], [ %inc, %while.body ]
  ret i32 %num.0.lcssa
}

declare i32 @deadFunction(...) local_unnamed_addr #1

; Function Attrs: noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  %call.i = tail call i32 (...) @deadFunction() #4
  tail call void @exit(i32 noundef 0) #5
  unreachable
}

; Function Attrs: nofree noreturn
declare void @exit(i32 noundef) local_unnamed_addr #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
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
