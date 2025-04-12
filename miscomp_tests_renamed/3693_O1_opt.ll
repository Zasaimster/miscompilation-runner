; 112817222640567483922366526272945995984
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/112817222640567483922366526272945995984_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/112817222640567483922366526272945995984.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %entry
  %x.0 = phi i32 [ 0, %entry ], [ %inc, %while.cond ]
  %timeout.0 = phi i32 [ 0, %entry ], [ %timeout.1, %while.cond ]
  %inc = add nuw nsw i32 %x.0, 1
  %cmp.not = icmp eq i32 %x.0, 0
  %cmp4 = icmp samesign ugt i32 %timeout.0, 4
  %. = select i1 %cmp4, i32 4, i32 0
  %inc3 = zext i1 %cmp.not to i32
  %timeout.1 = add nuw nsw i32 %timeout.0, %inc3
  %cleanup.dest.slot.0 = select i1 %cmp.not, i32 %., i32 3
  switch i32 %cleanup.dest.slot.0, label %cleanup7 [
    i32 0, label %while.cond
    i32 4, label %die
  ], !llvm.loop !5

die:                                              ; preds = %while.cond
  tail call void @abort() #2
  unreachable

cleanup7:                                         ; preds = %while.cond
  ret i32 0
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #1

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.unroll.disable"}
