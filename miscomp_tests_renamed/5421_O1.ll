; 153908541394012738675652229100515989190
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/153908541394012738675652229100515989190.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/153908541394012738675652229100515989190.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test = type { i64, i32 }

@.str = private unnamed_addr constant [15 x i8] c"Hello, World!\0A\00", align 1
@tests = dso_local local_unnamed_addr global [5 x { i64, i32, [4 x i8] }] [{ i64, i32, [4 x i8] } { i64 -1152921504606846976, i32 -1, [4 x i8] zeroinitializer }, { i64, i32, [4 x i8] } { i64 -1152921504606846977, i32 1, [4 x i8] zeroinitializer }, { i64, i32, [4 x i8] } { i64 -1152921504606846975, i32 -1, [4 x i8] zeroinitializer }, { i64, i32, [4 x i8] } { i64 0, i32 -1, [4 x i8] zeroinitializer }, { i64, i32, [4 x i8] } { i64 -9223372036854775808, i32 1, [4 x i8] zeroinitializer }], align 16

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @movegt(i32 noundef %x, i32 noundef %y, i64 noundef %a) local_unnamed_addr #0 {
entry:
  %call3 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %cmp4 = icmp slt i32 %call3, %y
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %cmp = icmp slt i32 %call, %y
  br i1 %cmp, label %for.body, label %for.cond.for.end_crit_edge, !llvm.loop !5

for.cond.for.end_crit_edge:                       ; preds = %for.body
  %cmp1.le = icmp sgt i64 %a, -1152921504606846977
  %x.y.le = select i1 %cmp1.le, i32 %x, i32 %y
  br label %for.end

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %entry
  %ret.0.lcssa = phi i32 [ %x.y.le, %for.cond.for.end_crit_edge ], [ 1, %entry ]
  ret i32 %ret.0.lcssa
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  br label %for.body

for.cond:                                         ; preds = %movegt.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 5
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !8

for.body:                                         ; preds = %entry, %for.cond
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.cond ]
  %arrayidx = getelementptr inbounds nuw [5 x %struct.test], ptr @tests, i64 0, i64 %indvars.iv
  %0 = load i64, ptr %arrayidx, align 16, !tbaa !9
  %call3.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %cmp4.i = icmp slt i32 %call3.i, 1
  br i1 %cmp4.i, label %for.body.i, label %movegt.exit

for.body.i:                                       ; preds = %for.body, %for.body.i
  %call.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %cmp.i = icmp slt i32 %call.i, 1
  br i1 %cmp.i, label %for.body.i, label %for.cond.for.end_crit_edge.i, !llvm.loop !5

for.cond.for.end_crit_edge.i:                     ; preds = %for.body.i
  %cmp1.le.i = icmp sgt i64 %0, -1152921504606846977
  %x.y.le.i = select i1 %cmp1.le.i, i32 -1, i32 1
  br label %movegt.exit

movegt.exit:                                      ; preds = %for.body, %for.cond.for.end_crit_edge.i
  %ret.0.lcssa.i = phi i32 [ %x.y.le.i, %for.cond.for.end_crit_edge.i ], [ 1, %for.body ]
  %ret = getelementptr inbounds nuw i8, ptr %arrayidx, i64 8
  %1 = load i32, ptr %ret, align 8, !tbaa !15
  %cmp4.not = icmp eq i32 %ret.0.lcssa.i, %1
  br i1 %cmp4.not, label %for.cond, label %if.then

if.then:                                          ; preds = %movegt.exit
  tail call void @abort() #3
  unreachable

for.end:                                          ; preds = %for.cond
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
!8 = distinct !{!8, !6, !7}
!9 = !{!10, !11, i64 0}
!10 = !{!"test", !11, i64 0, !14, i64 8}
!11 = !{!"long long", !12, i64 0}
!12 = !{!"omnipotent char", !13, i64 0}
!13 = !{!"Simple C/C++ TBAA"}
!14 = !{!"int", !12, i64 0}
!15 = !{!10, !14, i64 8}
