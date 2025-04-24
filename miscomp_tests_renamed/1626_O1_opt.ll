; 129066237199574296294892189035075048674
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/129066237199574296294892189035075048674_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/129066237199574296294892189035075048674.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"index = %d\0A\00", align 1
@str = private unnamed_addr constant [18 x i8] c"This won't print.\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %h) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq i32 %h, 0
  %cmp1 = icmp sgt i32 %h, 10
  br i1 %cmp1, label %if.then2, label %for.cond5.preheader.preheader

if.then2:                                         ; preds = %entry
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %for.cond5.preheader.preheader

for.cond5.preheader.preheader:                    ; preds = %if.then2, %entry
  br label %for.cond5.preheader

for.cond5.preheader:                              ; preds = %for.inc31, %for.cond5.preheader.preheader
  %d.047 = phi i32 [ %inc32, %for.inc31 ], [ 0, %for.cond5.preheader.preheader ]
  br label %for.cond8.preheader

for.cond8.preheader:                              ; preds = %for.inc28, %for.cond5.preheader
  %e.046 = phi i32 [ 0, %for.cond5.preheader ], [ %inc29, %for.inc28 ]
  br label %for.body10

for.body10:                                       ; preds = %for.inc, %for.cond8.preheader
  %f.045 = phi i32 [ 0, %for.cond8.preheader ], [ %inc, %for.inc ]
  %call15 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef 0)
  %call24 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef 0)
  br i1 %cmp, label %if.then25, label %for.inc

if.then25:                                        ; preds = %for.body10
  %call26 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %e.046)
  br label %for.inc

for.inc:                                          ; preds = %if.then25, %for.body10
  %inc = add nuw nsw i32 %f.045, 1
  %exitcond.not = icmp eq i32 %inc, 10
  br i1 %exitcond.not, label %for.inc28, label %for.body10, !llvm.loop !5

for.inc28:                                        ; preds = %for.inc
  %inc29 = add nuw nsw i32 %e.046, 1
  %exitcond48.not = icmp eq i32 %inc29, 3
  br i1 %exitcond48.not, label %for.inc31, label %for.cond8.preheader, !llvm.loop !8

for.inc31:                                        ; preds = %for.inc28
  %inc32 = add nuw nsw i32 %d.047, 1
  %exitcond49.not = icmp eq i32 %inc32, 6
  br i1 %exitcond49.not, label %for.end33, label %for.cond5.preheader, !llvm.loop !9

for.end33:                                        ; preds = %for.inc31
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #2

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
