; 159949052659009561881583702366981734880
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/159949052659009561881583702366981734880_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/159949052659009561881583702366981734880.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%4d\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.end13, %entry
  %indvars.iv36 = phi i32 [ 1, %entry ], [ %indvars.iv.next37, %for.end13 ]
  %indvars.iv = phi i32 [ 8, %entry ], [ %indvars.iv.next, %for.end13 ]
  %i.035 = phi i32 [ 0, %entry ], [ %inc16, %for.end13 ]
  %coef.034 = phi i32 [ 0, %entry ], [ %coef.2, %for.end13 ]
  br label %for.body3

for.cond4.preheader:                              ; preds = %for.body3
  %cmp8 = icmp eq i32 %i.035, 0
  %sub9 = add nuw nsw i32 %i.035, 1
  br label %for.body6

for.body3:                                        ; preds = %for.body3, %for.cond1.preheader
  %space.031 = phi i32 [ %inc, %for.body3 ], [ 1, %for.cond1.preheader ]
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %inc = add nuw nsw i32 %space.031, 1
  %exitcond.not = icmp eq i32 %inc, %indvars.iv
  br i1 %exitcond.not, label %for.cond4.preheader, label %for.body3, !llvm.loop !5

for.body6:                                        ; preds = %if.end, %for.cond4.preheader
  %j.033 = phi i32 [ 0, %for.cond4.preheader ], [ %inc12, %if.end ]
  %coef.132 = phi i32 [ %coef.034, %for.cond4.preheader ], [ %coef.2, %if.end ]
  %cmp7 = icmp eq i32 %j.033, 0
  %or.cond = or i1 %cmp8, %cmp7
  br i1 %or.cond, label %if.end, label %if.else

if.else:                                          ; preds = %for.body6
  %add = sub nsw i32 %sub9, %j.033
  %mul = mul nsw i32 %add, %coef.132
  %div = sdiv i32 %mul, %j.033
  br label %if.end

if.end:                                           ; preds = %if.else, %for.body6
  %coef.2 = phi i32 [ %div, %if.else ], [ 1, %for.body6 ]
  %call10 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %coef.2)
  %inc12 = add nuw nsw i32 %j.033, 1
  %exitcond38.not = icmp eq i32 %inc12, %indvars.iv36
  br i1 %exitcond38.not, label %for.end13, label %for.body6, !llvm.loop !8

for.end13:                                        ; preds = %if.end
  %putchar = tail call i32 @putchar(i32 10)
  %inc16 = add nuw nsw i32 %i.035, 1
  %indvars.iv.next = add nsw i32 %indvars.iv, -1
  %indvars.iv.next37 = add nuw nsw i32 %indvars.iv36, 1
  %exitcond39.not = icmp eq i32 %inc16, 7
  br i1 %exitcond39.not, label %for.end17, label %for.cond1.preheader, !llvm.loop !9

for.end17:                                        ; preds = %for.end13
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #2

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }

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
!9 = distinct !{!9, !6, !7}
