; 165361917870747294485269776215900636520
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/165361917870747294485269776215900636520_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/165361917870747294485269776215900636520.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@str = private unnamed_addr constant [11 x i8] c"Dead code.\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @f(i32 noundef %x) local_unnamed_addr #0 {
entry:
  %and8 = and i32 %x, 1
  %cmp9 = icmp eq i32 %and8, 0
  br i1 %cmp9, label %while.body, label %while.end

while.body:                                       ; preds = %while.body, %entry
  %reg.sroa.2.0.in10 = phi i32 [ %shr, %while.body ], [ %x, %entry ]
  %sext = shl i32 %reg.sroa.2.0.in10, 24
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %shr = ashr exact i32 %sext, 25
  %0 = and i32 %reg.sroa.2.0.in10, 2
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %while.body, label %while.end, !llvm.loop !5

while.end:                                        ; preds = %while.body, %entry
  ret i32 0
}

; Function Attrs: cold nofree noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #1 {
entry:
  %call = tail call i32 @f(i32 noundef 2)
  tail call void @abort() #4
  unreachable
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #3

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!5 = distinct !{!5, !6, !7}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!"llvm.loop.unroll.disable"}
