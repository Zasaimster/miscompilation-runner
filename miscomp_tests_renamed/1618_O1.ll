; 128932770517947590448380808605188570347
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/128932770517947590448380808605188570347.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/128932770517947590448380808605188570347.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c":ab\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @testFunction() local_unnamed_addr #0 {
entry:
  ret void
}

; Function Attrs: nofree noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #1 {
entry:
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %while.end.i, %entry
  %ptr.addr.0.idx44.i = phi i64 [ 0, %entry ], [ %spec.select.i, %while.end.i ]
  %sword.addr.043.i = phi i32 [ 1, %entry ], [ %dec.i, %while.end.i ]
  %dec.i = add nsw i32 %sword.addr.043.i, -1
  %tobool1.not.i = icmp eq i32 %sword.addr.043.i, 0
  br i1 %tobool1.not.i, label %begfield.exit, label %while.cond2.preheader.i

while.cond2.preheader.i:                          ; preds = %land.rhs.i
  %cmp337.i = icmp samesign ult i64 %ptr.addr.0.idx44.i, 3
  br i1 %cmp337.i, label %land.rhs4.i, label %while.end.i

land.rhs4.i:                                      ; preds = %while.cond2.preheader.i, %while.body8.i
  %ptr.addr.1.idx38.i = phi i64 [ %ptr.addr.1.add36.i, %while.body8.i ], [ %ptr.addr.0.idx44.i, %while.cond2.preheader.i ]
  %ptr.addr.1.ptr.i = getelementptr inbounds nuw i8, ptr @.str, i64 %ptr.addr.1.idx38.i
  %0 = load i8, ptr %ptr.addr.1.ptr.i, align 1, !tbaa !5
  %cmp5.not.i = icmp eq i8 %0, 58
  br i1 %cmp5.not.i, label %while.end.i, label %while.body8.i

while.body8.i:                                    ; preds = %land.rhs4.i
  %ptr.addr.1.add36.i = add i64 %ptr.addr.1.idx38.i, 1
  %exitcond.not.i = icmp eq i64 %ptr.addr.1.add36.i, 3
  br i1 %exitcond.not.i, label %while.end.i, label %land.rhs4.i, !llvm.loop !8

while.end.i:                                      ; preds = %while.body8.i, %land.rhs4.i, %while.cond2.preheader.i
  %ptr.addr.1.idx.lcssa.i = phi i64 [ %ptr.addr.0.idx44.i, %while.cond2.preheader.i ], [ %ptr.addr.1.idx38.i, %land.rhs4.i ], [ 3, %while.body8.i ]
  %cmp3.lcssa.i = phi i64 [ 0, %while.cond2.preheader.i ], [ 1, %land.rhs4.i ], [ 0, %while.body8.i ]
  %spec.select.i = add nuw nsw i64 %cmp3.lcssa.i, %ptr.addr.1.idx.lcssa.i
  %cmp.i = icmp slt i64 %spec.select.i, 3
  br i1 %cmp.i, label %land.rhs.i, label %begfield.exit, !llvm.loop !11

begfield.exit:                                    ; preds = %land.rhs.i, %while.end.i
  %ptr.addr.0.idx.lcssa.i = phi i64 [ %ptr.addr.0.idx44.i, %land.rhs.i ], [ %spec.select.i, %while.end.i ]
  %ptr.addr.0.ptr.ptr.i = getelementptr i8, ptr @.str, i64 %ptr.addr.0.idx.lcssa.i
  %cmp17.not.i = icmp slt i64 %ptr.addr.0.idx.lcssa.i, 3
  %ptr.addr.3.idx.i = zext i1 %cmp17.not.i to i64
  %ptr.addr.3.i = getelementptr i8, ptr %ptr.addr.0.ptr.ptr.i, i64 %ptr.addr.3.idx.i
  %cmp.not = icmp eq ptr %ptr.addr.3.i, getelementptr inbounds nuw (i8, ptr @.str, i64 2)
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %begfield.exit
  tail call void @abort() #4
  unreachable

if.end:                                           ; preds = %begfield.exit
  tail call void @exit(i32 noundef 0) #4
  unreachable
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #2

; Function Attrs: nofree noreturn
declare void @exit(i32 noundef) local_unnamed_addr #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }

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
!11 = distinct !{!11, !9, !10}
