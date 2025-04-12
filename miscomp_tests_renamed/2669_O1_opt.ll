; 15630832892004275160471445527693516199
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/15630832892004275160471445527693516199_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/15630832892004275160471445527693516199.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"Value of a: %d\0A\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local range(i32 0, 3) i32 @foo(i8 noundef zeroext %x, i64 noundef %y) local_unnamed_addr #0 {
entry:
  %0 = and i8 %x, 1
  %tobool.not = icmp eq i64 %y, 0
  br label %do.body

do.body:                                          ; preds = %do.body, %entry
  %x.addr.0 = phi i8 [ %0, %entry ], [ %conv3, %do.body ]
  %conv3 = select i1 %tobool.not, i8 %x.addr.0, i8 0
  %conv4 = zext nneg i8 %conv3 to i64
  %cmp = icmp ugt i64 %y, %conv4
  br i1 %cmp, label %do.body, label %do.end, !llvm.loop !5

do.end:                                           ; preds = %do.body
  %conv6 = zext nneg i8 %conv3 to i32
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %conv6)
  %add = add nuw nsw i64 %y, %conv4
  %conv8 = trunc nuw nsw i64 %add to i32
  ret i32 %conv8
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %call.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef 1)
  ret i32 0
}

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
