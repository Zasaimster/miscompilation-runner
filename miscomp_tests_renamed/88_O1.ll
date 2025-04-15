; 174466983344152819361358360431395309075
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/174466983344152819361358360431395309075.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/174466983344152819361358360431395309075.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  br label %for.body

for.body:                                         ; preds = %entry, %if.end4
  %i.014 = phi i32 [ 1, %entry ], [ %inc, %if.end4 ]
  %work.013 = phi double [ 1.000000e+00, %entry ], [ %div5, %if.end4 ]
  %beta.012 = phi double [ 0.000000e+00, %entry ], [ %beta.1, %if.end4 ]
  %oldrho.011 = phi double [ undef, %entry ], [ %mul, %if.end4 ]
  %mul = fmul double %work.013, %work.013
  %cmp1.not = icmp eq i32 %i.014, 1
  %div = fdiv double %mul, %oldrho.011
  %beta.1 = select i1 %cmp1.not, double %beta.012, double %div
  %cmp2 = fcmp oeq double %beta.1, 1.000000e+00
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %for.body
  tail call void @abort() #3
  unreachable

if.end4:                                          ; preds = %for.body
  %div5 = fmul double %work.013, 5.000000e-01
  %inc = add nuw nsw i32 %i.014, 1
  %exitcond.not = icmp eq i32 %inc, 3
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !5

for.end:                                          ; preds = %if.end4
  %call = tail call i32 (...) @deadFunction() #4
  ret i32 0
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #1

declare i32 @deadFunction(...) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }
attributes #4 = { nounwind }

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
