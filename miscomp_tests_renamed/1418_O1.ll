; 125431026229786924311731503602983215326
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/125431026229786924311731503602983215326.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/125431026229786924311731503602983215326.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d \00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %entry, %while.end
  %indvars.iv43 = phi i32 [ 1, %entry ], [ %indvars.iv.next44, %while.end ]
  %indvars.iv = phi i32 [ 41, %entry ], [ %indvars.iv.next, %while.end ]
  %i.041 = phi i32 [ 1, %entry ], [ %inc19, %while.end ]
  %smax = tail call i32 @llvm.smax.i32(i32 %indvars.iv, i32 1)
  %cmp2.not35 = icmp samesign ugt i32 %i.041, 41
  br i1 %cmp2.not35, label %while.body.preheader, label %for.body3

for.body3:                                        ; preds = %for.cond1.preheader, %for.body3
  %space.036 = phi i32 [ %inc4, %for.body3 ], [ 1, %for.cond1.preheader ]
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %inc4 = add nuw nsw i32 %space.036, 1
  %exitcond.not = icmp eq i32 %space.036, %smax
  br i1 %exitcond.not, label %while.body.preheader, label %for.body3, !llvm.loop !5

while.body.preheader:                             ; preds = %for.body3, %for.cond1.preheader
  %count.239.ph = phi i32 [ 0, %for.cond1.preheader ], [ %smax, %for.body3 ]
  br label %while.body

while.body:                                       ; preds = %while.body.preheader, %if.end
  %count1.140 = phi i32 [ %count1.2, %if.end ], [ 0, %while.body.preheader ]
  %count.239 = phi i32 [ %count.3, %if.end ], [ %count.239.ph, %while.body.preheader ]
  %k.138 = phi i32 [ %inc16, %if.end ], [ 0, %while.body.preheader ]
  %cmp8 = icmp slt i32 %count.239, 42
  br i1 %cmp8, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %add = add nuw nsw i32 %k.138, %i.041
  %call9 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %add)
  %inc10 = add nsw i32 %count.239, 1
  br label %if.end

if.else:                                          ; preds = %while.body
  %inc11.neg = xor i32 %count1.140, -1
  %inc11 = add nsw i32 %count1.140, 1
  %add12 = add nuw nsw i32 %k.138, %i.041
  %mul13.neg42 = shl i32 %inc11.neg, 1
  %sub14 = add i32 %add12, %mul13.neg42
  %call15 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %sub14)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %count.3 = phi i32 [ %inc10, %if.then ], [ %count.239, %if.else ]
  %count1.2 = phi i32 [ %count1.140, %if.then ], [ %inc11, %if.else ]
  %inc16 = add nuw nsw i32 %k.138, 1
  %exitcond45 = icmp eq i32 %inc16, %indvars.iv43
  br i1 %exitcond45, label %while.end, label %while.body, !llvm.loop !8

while.end:                                        ; preds = %if.end
  %putchar = tail call i32 @putchar(i32 10)
  %inc19 = add nuw nsw i32 %i.041, 1
  %indvars.iv.next = add nsw i32 %indvars.iv, -1
  %indvars.iv.next44 = add nuw nsw i32 %indvars.iv43, 2
  %exitcond46.not = icmp eq i32 %inc19, 43
  br i1 %exitcond46.not, label %for.end20, label %for.cond1.preheader, !llvm.loop !9

for.end20:                                        ; preds = %while.end
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

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
