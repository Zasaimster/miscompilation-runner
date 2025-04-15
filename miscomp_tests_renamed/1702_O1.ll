; 129127860087684452725370784531584416544
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/129127860087684452725370784531584416544.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/129127860087684452725370784531584416544.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2147483648, 2147483641) i32 @test() local_unnamed_addr #0 {
entry:
  %call2 = tail call i32 (...) @func2() #5
  %cmp.not3 = icmp eq i32 %call2, 8
  br i1 %cmp.not3, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %biv.04 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  %inc = add nuw nsw i32 %biv.04, 1
  %call = tail call i32 (...) @func2() #5
  %cmp.not = icmp eq i32 %call, 8
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.body, !llvm.loop !5

for.cond.for.end_crit_edge:                       ; preds = %for.body
  %mul.le = shl nsw i32 %biv.04, 3
  br label %for.end

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %entry
  %giv.0.lcssa = phi i32 [ %mul.le, %for.cond.for.end_crit_edge ], [ 0, %entry ]
  ret i32 %giv.0.lcssa
}

declare i32 @func2(...) local_unnamed_addr #1

; Function Attrs: noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  %call2.i = tail call i32 (...) @func2() #5
  %cmp.not3.i = icmp eq i32 %call2.i, 8
  br i1 %cmp.not3.i, label %if.then, label %for.body.i

for.body.i:                                       ; preds = %entry, %for.body.i
  %biv.04.i = phi i32 [ %inc.i, %for.body.i ], [ 0, %entry ]
  %inc.i = add nuw nsw i32 %biv.04.i, 1
  %call.i = tail call i32 (...) @func2() #5
  %cmp.not.i = icmp eq i32 %call.i, 8
  br i1 %cmp.not.i, label %for.cond.for.end_crit_edge.i, label %for.body.i, !llvm.loop !5

for.cond.for.end_crit_edge.i:                     ; preds = %for.body.i
  %0 = icmp eq i32 %biv.04.i, 1
  br i1 %0, label %if.end, label %if.then

if.then:                                          ; preds = %entry, %for.cond.for.end_crit_edge.i
  tail call void @abort() #6
  unreachable

if.end:                                           ; preds = %for.cond.for.end_crit_edge.i
  tail call void @exit(i32 noundef 0) #6
  unreachable
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #3

; Function Attrs: nofree noreturn
declare void @exit(i32 noundef) local_unnamed_addr #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
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
