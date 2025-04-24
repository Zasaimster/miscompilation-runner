; 144098823674034054004667996744055674370
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/144098823674034054004667996744055674370.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/144098823674034054004667996744055674370.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"Hello, World!\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%4d\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %cmp35 = icmp sgt i32 %call, 0
  br i1 %cmp35, label %for.cond1.preheader.preheader, label %for.end18

for.cond1.preheader.preheader:                    ; preds = %entry
  %0 = add nuw i32 %call, 1
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.cond1.preheader.preheader, %for.end14
  %indvars.iv38 = phi i32 [ 1, %for.cond1.preheader.preheader ], [ %indvars.iv.next39, %for.end14 ]
  %indvars.iv = phi i32 [ %0, %for.cond1.preheader.preheader ], [ %indvars.iv.next, %for.end14 ]
  %i.037 = phi i32 [ 0, %for.cond1.preheader.preheader ], [ %inc17, %for.end14 ]
  %coef.036 = phi i32 [ 1, %for.cond1.preheader.preheader ], [ %coef.2, %for.end14 ]
  %cmp2.not31.not = icmp sgt i32 %call, %i.037
  br i1 %cmp2.not31.not, label %for.body3, label %for.cond5.preheader

for.cond5.preheader:                              ; preds = %for.body3, %for.cond1.preheader
  %cmp9 = icmp eq i32 %i.037, 0
  %sub10 = add nuw nsw i32 %i.037, 1
  br label %for.body7

for.body3:                                        ; preds = %for.cond1.preheader, %for.body3
  %space.032 = phi i32 [ %inc, %for.body3 ], [ 1, %for.cond1.preheader ]
  %call4 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1)
  %inc = add nuw i32 %space.032, 1
  %exitcond.not = icmp eq i32 %inc, %indvars.iv
  br i1 %exitcond.not, label %for.cond5.preheader, label %for.body3, !llvm.loop !5

for.body7:                                        ; preds = %for.cond5.preheader, %if.end
  %j.034 = phi i32 [ 0, %for.cond5.preheader ], [ %inc13, %if.end ]
  %coef.133 = phi i32 [ %coef.036, %for.cond5.preheader ], [ %coef.2, %if.end ]
  %cmp8 = icmp eq i32 %j.034, 0
  %or.cond = or i1 %cmp9, %cmp8
  br i1 %or.cond, label %if.end, label %if.else

if.else:                                          ; preds = %for.body7
  %add = sub nsw i32 %sub10, %j.034
  %mul = mul nsw i32 %add, %coef.133
  %div = sdiv i32 %mul, %j.034
  br label %if.end

if.end:                                           ; preds = %for.body7, %if.else
  %coef.2 = phi i32 [ %div, %if.else ], [ 1, %for.body7 ]
  %call11 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %coef.2)
  %inc13 = add nuw nsw i32 %j.034, 1
  %exitcond40.not = icmp eq i32 %inc13, %indvars.iv38
  br i1 %exitcond40.not, label %for.end14, label %for.body7, !llvm.loop !8

for.end14:                                        ; preds = %if.end
  %putchar = tail call i32 @putchar(i32 10)
  %inc17 = add nuw nsw i32 %i.037, 1
  %indvars.iv.next = add i32 %indvars.iv, -1
  %indvars.iv.next39 = add nuw i32 %indvars.iv38, 1
  %exitcond41.not = icmp eq i32 %inc17, %call
  br i1 %exitcond41.not, label %for.end18, label %for.cond1.preheader, !llvm.loop !9

for.end18:                                        ; preds = %for.end14, %entry
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
