; 123322114185079908519221617896547658464
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/123322114185079908519221617896547658464_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/123322114185079908519221617896547658464.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @tar(i32 noundef %i) local_unnamed_addr #0 {
entry:
  %cmp.not = icmp eq i32 %i, 36863
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @abort() #3
  unreachable

if.end:                                           ; preds = %entry
  ret i32 -1
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #1

; Function Attrs: nofree nounwind uwtable
define dso_local void @bug(i32 noundef %q, i32 noundef %bcount) local_unnamed_addr #0 {
entry:
  %sub = add nsw i32 %q, -1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %cmp.not = phi i1 [ false, %entry ], [ true, %while.body ]
  %outgo.0 = phi i32 [ 0, %entry ], [ %spec.select, %while.body ]
  br i1 %cmp.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %inc = add nsw i32 %outgo.0, 1
  %cmp1.not = icmp slt i32 %outgo.0, %sub
  %spec.select = select i1 %cmp1.not, i32 %inc, i32 %sub
  %mul = mul nsw i32 %spec.select, %bcount
  %cmp.not.i = icmp eq i32 %mul, 36863
  br i1 %cmp.not.i, label %while.cond, label %if.then.i, !llvm.loop !5

if.then.i:                                        ; preds = %while.body
  tail call void @abort() #3
  unreachable

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  ret i32 0
}

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

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
