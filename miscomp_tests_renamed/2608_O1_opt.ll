; 145184570962449987126495035165280762725
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/145184570962449987126495035165280762725_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/145184570962449987126495035165280762725.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"Hello, optimizer!\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d \00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %cmp.not42 = icmp slt i32 %call, 1
  br i1 %cmp.not42, label %for.end21, label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %while.end, %entry
  %indvars.iv47 = phi i32 [ %indvars.iv.next48, %while.end ], [ 1, %entry ]
  %indvars.iv45 = phi i32 [ %indvars.iv.next46, %while.end ], [ %call, %entry ]
  %indvars.iv.in = phi i32 [ %indvars.iv, %while.end ], [ %call, %entry ]
  %i.043 = phi i32 [ %inc20, %while.end ], [ 1, %entry ]
  %indvars.iv = add i32 %indvars.iv.in, -1
  %cmp2.not36.not = icmp sgt i32 %call, %i.043
  br i1 %cmp2.not36.not, label %for.body3, label %while.body.preheader

for.body3:                                        ; preds = %for.body3, %for.cond1.preheader
  %space.037 = phi i32 [ %inc5, %for.body3 ], [ 1, %for.cond1.preheader ]
  %call4 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1)
  %inc5 = add nuw i32 %space.037, 1
  %exitcond.not = icmp eq i32 %inc5, %indvars.iv45
  br i1 %exitcond.not, label %while.body.preheader, label %for.body3, !llvm.loop !5

while.body.preheader:                             ; preds = %for.body3, %for.cond1.preheader
  %count.240.ph = phi i32 [ 0, %for.cond1.preheader ], [ %indvars.iv, %for.body3 ]
  br label %while.body

while.body:                                       ; preds = %if.end, %while.body.preheader
  %count1.141 = phi i32 [ %count1.2, %if.end ], [ 0, %while.body.preheader ]
  %count.240 = phi i32 [ %count.3, %if.end ], [ %count.240.ph, %while.body.preheader ]
  %k.139 = phi i32 [ %inc17, %if.end ], [ 0, %while.body.preheader ]
  %cmp9.not.not = icmp slt i32 %count.240, %call
  br i1 %cmp9.not.not, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %add = add nuw nsw i32 %k.139, %i.043
  %call10 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %add)
  %inc11 = add nsw i32 %count.240, 1
  br label %if.end

if.else:                                          ; preds = %while.body
  %inc12.neg = xor i32 %count1.141, -1
  %inc12 = add nsw i32 %count1.141, 1
  %add13 = add nuw nsw i32 %k.139, %i.043
  %mul14.neg44 = shl i32 %inc12.neg, 1
  %sub15 = add i32 %add13, %mul14.neg44
  %call16 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %sub15)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %count.3 = phi i32 [ %inc11, %if.then ], [ %count.240, %if.else ]
  %count1.2 = phi i32 [ %count1.141, %if.then ], [ %inc12, %if.else ]
  %inc17 = add nuw i32 %k.139, 1
  %exitcond49 = icmp eq i32 %inc17, %indvars.iv47
  br i1 %exitcond49, label %while.end, label %while.body, !llvm.loop !8

while.end:                                        ; preds = %if.end
  %putchar = tail call i32 @putchar(i32 10)
  %inc20 = add nuw i32 %i.043, 1
  %indvars.iv.next46 = add i32 %indvars.iv45, -1
  %indvars.iv.next48 = add nuw i32 %indvars.iv47, 2
  %exitcond50.not = icmp eq i32 %i.043, %call
  br i1 %exitcond50.not, label %for.end21, label %for.cond1.preheader, !llvm.loop !9

for.end21:                                        ; preds = %while.end, %entry
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
