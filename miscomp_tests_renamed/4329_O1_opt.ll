; 175967989867416765681194035533163928384
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/175967989867416765681194035533163928384_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/175967989867416765681194035533163928384.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@str = private unnamed_addr constant [14 x i8] c"Hello, World!\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %call = tail call i32 (...) @compute() #4
  %conv = sext i32 %call to i64
  %0 = inttoptr i64 %conv to ptr
  %1 = load i8, ptr %0, align 1, !tbaa !5
  %tobool.not11 = icmp eq i8 %1, 0
  br i1 %tobool.not11, label %if.then6, label %for.body

for.body:                                         ; preds = %for.body, %entry
  %2 = phi i8 [ %3, %for.body ], [ %1, %entry ]
  %hicount.012 = phi i32 [ %spec.select, %for.body ], [ 0, %entry ]
  %.lobit = lshr i8 %2, 7
  %inc = zext nneg i8 %.lobit to i32
  %spec.select = add nuw nsw i32 %hicount.012, %inc
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %3 = load i8, ptr %0, align 1, !tbaa !5
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %for.end.loopexit, label %for.body, !llvm.loop !8

for.end.loopexit:                                 ; preds = %for.body
  %4 = icmp eq i32 %spec.select, 1
  br i1 %4, label %if.end7, label %if.then6

if.then6:                                         ; preds = %for.end.loopexit, %entry
  tail call void @abort() #5
  unreachable

if.end7:                                          ; preds = %for.end.loopexit
  ret i32 0
}

declare i32 @compute(...) local_unnamed_addr #1

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = distinct !{!8, !9, !10}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.unroll.disable"}
