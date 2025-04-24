; 133323399813806508489780914763514392199
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/133323399813806508489780914763514392199.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/133323399813806508489780914763514392199.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i, %entry
  %count.09.i = phi i32 [ 0, %entry ], [ %inc.i, %for.inc.i ]
  %p_6.addr.08.i = phi i32 [ 1, %entry ], [ %cond.i.i, %for.inc.i ]
  %exitcond.i = icmp eq i32 %count.09.i, 2
  br i1 %exitcond.i, label %if.then.i, label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  tail call void @abort() #3
  unreachable

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %count.09.i, 1
  %call.i.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef range(i32 1, 3) %p_6.addr.08.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  %add.i.i = zext i1 %tobool.not.i.i to i32
  %cond.i.i = add nuw nsw i32 %p_6.addr.08.i, %add.i.i
  %cmp.not.i = icmp eq i32 %cond.i.i, 3
  br i1 %cmp.not.i, label %func_4.exit, label %for.body.i, !llvm.loop !5

func_4.exit:                                      ; preds = %for.inc.i
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
