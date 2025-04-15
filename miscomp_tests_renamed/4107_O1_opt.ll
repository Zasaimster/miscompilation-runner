; 145671979117790483395957382480545440750
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/145671979117790483395957382480545440750_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/145671979117790483395957382480545440750.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @anotherDummyFunc() local_unnamed_addr #0 {
entry:
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #1 {
entry:
  br label %for.body

for.body:                                         ; preds = %for.inc, %entry
  %i.039 = phi i32 [ -1, %entry ], [ %inc, %for.inc ]
  %call = tail call i32 (i32, ...) @foo(i32 noundef %i.039) #4
  switch i32 %i.039, label %if.else21 [
    i32 4, label %if.then
    i32 6, label %if.then5
    i32 9, label %if.then11
    i32 11, label %if.then17
  ]

if.then:                                          ; preds = %for.body
  %cmp2.not = icmp eq i32 %call, 30
  br i1 %cmp2.not, label %for.inc, label %if.then3

if.then3:                                         ; preds = %if.then
  tail call void @abort() #5
  unreachable

if.then5:                                         ; preds = %for.body
  %cmp6.not = icmp eq i32 %call, 30
  br i1 %cmp6.not, label %for.inc, label %if.then7

if.then7:                                         ; preds = %if.then5
  tail call void @abort() #5
  unreachable

if.then11:                                        ; preds = %for.body
  %cmp12.not = icmp eq i32 %call, 30
  br i1 %cmp12.not, label %for.inc, label %if.then13

if.then13:                                        ; preds = %if.then11
  tail call void @abort() #5
  unreachable

if.then17:                                        ; preds = %for.body
  %cmp18.not = icmp eq i32 %call, 30
  br i1 %cmp18.not, label %for.inc, label %if.then19

if.then19:                                        ; preds = %if.then17
  tail call void @abort() #5
  unreachable

if.else21:                                        ; preds = %for.body
  %cmp22.not = icmp eq i32 %call, 31
  br i1 %cmp22.not, label %for.inc, label %if.then23

if.then23:                                        ; preds = %if.else21
  tail call void @abort() #5
  unreachable

for.inc:                                          ; preds = %if.else21, %if.then17, %if.then11, %if.then5, %if.then
  %inc = add nsw i32 %i.039, 1
  %exitcond.not = icmp eq i32 %inc, 66
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !5

for.end:                                          ; preds = %for.inc
  ret i32 0
}

declare i32 @foo(...) local_unnamed_addr #2

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
