; 17124555086481688906919336610101221753
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/17124555086481688906919336610101221753.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/17124555086481688906919336610101221753.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"Hello, World!\0A\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %conv = sitofp i32 %call to double
  br label %for.body

for.body:                                         ; preds = %entry, %if.end7
  %i.017 = phi i32 [ 1, %entry ], [ %inc, %if.end7 ]
  %work.016 = phi double [ 1.000000e+00, %entry ], [ %div8, %if.end7 ]
  %beta.015 = phi double [ %conv, %entry ], [ %beta.1, %if.end7 ]
  %oldrho.014 = phi double [ undef, %entry ], [ %mul, %if.end7 ]
  %mul = fmul double %work.016, %work.016
  %cmp2.not = icmp eq i32 %i.017, 1
  %div = fdiv double %mul, %oldrho.014
  %beta.1 = select i1 %cmp2.not, double %beta.015, double %div
  %cmp4 = fcmp oeq double %beta.1, 1.000000e+00
  br i1 %cmp4, label %if.then6, label %if.end7

if.then6:                                         ; preds = %for.body
  tail call void @abort() #3
  unreachable

if.end7:                                          ; preds = %for.body
  %div8 = fmul double %work.016, 5.000000e-01
  %inc = add nuw nsw i32 %i.017, 1
  %exitcond.not = icmp eq i32 %inc, 3
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !5

for.end:                                          ; preds = %if.end7
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #1

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #2

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
