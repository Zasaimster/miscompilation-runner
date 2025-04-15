; 131466718533608738363716135498160478493
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/131466718533608738363716135498160478493.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/131466718533608738363716135498160478493.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@testAllocaOrder.count = internal unnamed_addr global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"sum = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"-d\00", align 1
@str = private unnamed_addr constant [15 x i8] c"I am not used!\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @AddCounts(ptr noundef readonly captures(none) %S1, ptr noundef readonly captures(none) %S2, ptr noundef readonly captures(none) %S3, i32 noundef %noPrint) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq i32 %noPrint, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %seqnum = getelementptr inbounds nuw i8, ptr %S1, i64 8
  %0 = load i32, ptr %seqnum, align 8, !tbaa !5
  %seqnum1 = getelementptr inbounds nuw i8, ptr %S2, i64 8
  %1 = load i32, ptr %seqnum1, align 8, !tbaa !5
  %add = add nsw i32 %1, %0
  %seqnum2 = getelementptr inbounds nuw i8, ptr %S3, i64 8
  %2 = load i32, ptr %seqnum2, align 8, !tbaa !5
  %add3 = add nsw i32 %add, %2
  ret i32 %add3
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind uwtable
define dso_local void @testAllocaOrder(i32 noundef %noPrint) local_unnamed_addr #0 {
entry:
  %0 = load i32, ptr @testAllocaOrder.count, align 4, !tbaa !12
  %inc3 = add nsw i32 %0, 3
  store i32 %inc3, ptr @testAllocaOrder.count, align 4, !tbaa !12
  %tobool.not.i = icmp eq i32 %noPrint, 0
  br i1 %tobool.not.i, label %if.then.i, label %AddCounts.exit

if.then.i:                                        ; preds = %entry
  %puts.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %AddCounts.exit

AddCounts.exit:                                   ; preds = %entry, %if.then.i
  %inc = shl i32 %0, 1
  %add.i = add i32 %inc, 3
  %add3.i = add nsw i32 %add.i, %inc3
  %call5 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %add3.i)
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %argc, ptr noundef readonly captures(none) %argv) local_unnamed_addr #0 {
entry:
  %cmp = icmp sgt i32 %argc, 1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %arrayidx = getelementptr inbounds nuw i8, ptr %argv, i64 8
  %0 = load ptr, ptr %arrayidx, align 8, !tbaa !13
  %call = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(3) @.str.2) #4
  %tobool.not.not = icmp eq i32 %call, 0
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry
  %noPrint.0 = phi i1 [ false, %entry ], [ %tobool.not.not, %land.lhs.true ]
  br label %for.body

for.body:                                         ; preds = %if.end, %testAllocaOrder.exit
  %i.03 = phi i32 [ 0, %if.end ], [ %inc, %testAllocaOrder.exit ]
  %1 = load i32, ptr @testAllocaOrder.count, align 4, !tbaa !12
  %inc3.i = add nsw i32 %1, 3
  store i32 %inc3.i, ptr @testAllocaOrder.count, align 4, !tbaa !12
  br i1 %noPrint.0, label %if.then.i.i, label %testAllocaOrder.exit

if.then.i.i:                                      ; preds = %for.body
  %puts.i.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %testAllocaOrder.exit

testAllocaOrder.exit:                             ; preds = %for.body, %if.then.i.i
  %inc.i = shl i32 %1, 1
  %add.i.i = add i32 %inc.i, 3
  %add3.i.i = add nsw i32 %add.i.i, %inc3.i
  %call5.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %add3.i.i)
  %inc = add nuw nsw i32 %i.03, 1
  %exitcond.not = icmp eq i32 %inc, 10
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !15

for.end:                                          ; preds = %testAllocaOrder.exit
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #3

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
!5 = !{!6, !11, i64 8}
!6 = !{!"DummyStruct", !7, i64 0, !11, i64 8}
!7 = !{!"p1 _ZTS11DummyStruct", !8, i64 0}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"int", !9, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"p1 omnipotent char", !8, i64 0}
!15 = distinct !{!15, !16, !17}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!"llvm.loop.unroll.disable"}
