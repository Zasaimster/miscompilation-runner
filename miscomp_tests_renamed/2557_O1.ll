; 14427312366562125943891473425952651260
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/14427312366562125943891473425952651260.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/14427312366562125943891473425952651260.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"Hello World\0A\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  br label %while.cond.i.preheader

for.cond:                                         ; preds = %if.end9
  %inc = add nuw nsw i32 %storemerge15, 1
  %exitcond.not = icmp eq i32 %inc, 17
  br i1 %exitcond.not, label %for.end, label %while.cond.i.preheader, !llvm.loop !5

while.cond.i.preheader:                           ; preds = %entry, %for.cond
  %storemerge15 = phi i32 [ 1, %entry ], [ %inc, %for.cond ]
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.preheader, %while.cond.i
  %z.0.i = phi i32 [ %mul.i, %while.cond.i ], [ %storemerge15, %while.cond.i.preheader ]
  %call.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %cmp.i = icmp sgt i32 %call.i, %z.0.i
  %mul.i = shl nsw i32 %z.0.i, 1
  br i1 %cmp.i, label %while.cond.i, label %foo.exit, !llvm.loop !8

foo.exit:                                         ; preds = %while.cond.i
  %cmp1 = icmp samesign ugt i32 %storemerge15, 6
  br i1 %cmp1, label %if.end9, label %if.else

if.else:                                          ; preds = %foo.exit
  %cmp2 = icmp samesign ugt i32 %storemerge15, 3
  br i1 %cmp2, label %if.then3, label %if.else4

if.then3:                                         ; preds = %if.else
  %sub = shl nuw nsw i32 %storemerge15, 1
  br label %if.end9

if.else4:                                         ; preds = %if.else
  %cmp5 = icmp eq i32 %storemerge15, 3
  %. = select i1 %cmp5, i32 12, i32 8
  br label %if.end9

if.end9:                                          ; preds = %if.else4, %foo.exit, %if.then3
  %k.0 = phi i32 [ %sub, %if.then3 ], [ %storemerge15, %foo.exit ], [ %., %if.else4 ]
  %cmp10.not = icmp eq i32 %z.0.i, %k.0
  br i1 %cmp10.not, label %for.cond, label %if.then11

if.then11:                                        ; preds = %if.end9
  tail call void @abort() #3
  unreachable

for.end:                                          ; preds = %for.cond
  ret i32 0
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #2

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!8 = distinct !{!8, !6, !7}
