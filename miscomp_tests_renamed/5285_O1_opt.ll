; 135739429085366020681682798416882764408
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/135739429085366020681682798416882764408_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/135739429085366020681682798416882764408.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [25 x i8] c"This won't be compiled.\0A\00", align 1
@g_5 = dso_local local_unnamed_addr global i8 0, align 1

; Function Attrs: nofree nounwind uwtable
define dso_local void @func_1() local_unnamed_addr #0 {
entry:
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  br label %for.cond

for.cond:                                         ; preds = %for.cond, %entry
  %storemerge.in = phi i32 [ %call, %entry ], [ %sub, %for.cond ]
  %conv1 = and i32 %storemerge.in, 255
  %cmp = icmp samesign ugt i32 %conv1, 3
  %sub = add nsw i32 %conv1, -5
  br i1 %cmp, label %for.cond, label %for.end, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %storemerge.le = trunc i32 %storemerge.in to i8
  store i8 %storemerge.le, ptr @g_5, align 1, !tbaa !8
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %call.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i, %entry
  %storemerge.in.i = phi i32 [ %call.i, %entry ], [ %sub.i, %for.cond.i ]
  %conv1.i = and i32 %storemerge.in.i, 255
  %cmp.i = icmp samesign ugt i32 %conv1.i, 3
  %sub.i = add nsw i32 %conv1.i, -5
  br i1 %cmp.i, label %for.cond.i, label %func_1.exit, !llvm.loop !5

func_1.exit:                                      ; preds = %for.cond.i
  %storemerge.le.i = trunc i32 %storemerge.in.i to i8
  store i8 %storemerge.le.i, ptr @g_5, align 1, !tbaa !8
  %cmp.not = icmp eq i8 %storemerge.le.i, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %func_1.exit
  tail call void @abort() #3
  unreachable

if.end:                                           ; preds = %func_1.exit
  ret i32 0
}

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
!8 = !{!9, !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
