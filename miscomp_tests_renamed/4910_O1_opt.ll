; 186830252463365969341402153556078714010
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/186830252463365969341402153556078714010_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/186830252463365969341402153556078714010.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.a = private unnamed_addr constant [4 x float] [float 5.000000e+00, float 1.000000e+00, float 3.000000e+00, float 5.000000e+00], align 16
@__const.main.b = private unnamed_addr constant [4 x float] [float 2.000000e+00, float 4.000000e+00, float 3.000000e+00, float 0.000000e+00], align 16

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef i32 @f(ptr noundef writeonly captures(none) %d, ptr noundef readonly captures(none) %x, ptr noundef readonly captures(none) %y, i32 noundef %n) local_unnamed_addr #0 {
entry:
  %tobool.not3 = icmp eq i32 %n, 0
  br i1 %tobool.not3, label %while.end, label %while.body

while.body:                                       ; preds = %while.body, %entry
  %n.addr.07 = phi i32 [ %dec, %while.body ], [ %n, %entry ]
  %y.addr.06 = phi ptr [ %incdec.ptr1, %while.body ], [ %y, %entry ]
  %x.addr.05 = phi ptr [ %incdec.ptr, %while.body ], [ %x, %entry ]
  %d.addr.04 = phi ptr [ %incdec.ptr2, %while.body ], [ %d, %entry ]
  %dec = add nsw i32 %n.addr.07, -1
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %x.addr.05, i64 4
  %0 = load float, ptr %x.addr.05, align 4, !tbaa !5
  %incdec.ptr1 = getelementptr inbounds nuw i8, ptr %y.addr.06, i64 4
  %1 = load float, ptr %y.addr.06, align 4, !tbaa !5
  %cmp = fcmp oeq float %0, %1
  %conv = zext i1 %cmp to i32
  %incdec.ptr2 = getelementptr inbounds nuw i8, ptr %d.addr.04, i64 4
  store i32 %conv, ptr %d.addr.04, align 4, !tbaa !9
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.end, label %while.body, !llvm.loop !11

while.end:                                        ; preds = %while.body, %entry
  ret i32 0
}

; Function Attrs: nofree noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #1 {
entry:
  %r = alloca [4 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %r) #5
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i, %entry
  %n.addr.07.i = phi i32 [ %dec.i, %while.body.i ], [ 4, %entry ]
  %y.addr.06.i = phi ptr [ %incdec.ptr1.i, %while.body.i ], [ @__const.main.b, %entry ]
  %x.addr.05.i = phi ptr [ %incdec.ptr.i, %while.body.i ], [ @__const.main.a, %entry ]
  %d.addr.04.i = phi ptr [ %incdec.ptr2.i, %while.body.i ], [ %r, %entry ]
  %dec.i = add nsw i32 %n.addr.07.i, -1
  %incdec.ptr.i = getelementptr inbounds nuw i8, ptr %x.addr.05.i, i64 4
  %0 = load float, ptr %x.addr.05.i, align 4, !tbaa !5
  %incdec.ptr1.i = getelementptr inbounds nuw i8, ptr %y.addr.06.i, i64 4
  %1 = load float, ptr %y.addr.06.i, align 4, !tbaa !5
  %cmp.i = fcmp oeq float %0, %1
  %conv.i = zext i1 %cmp.i to i32
  %incdec.ptr2.i = getelementptr inbounds nuw i8, ptr %d.addr.04.i, i64 4
  store i32 %conv.i, ptr %d.addr.04.i, align 4, !tbaa !9
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %for.body, label %while.body.i, !llvm.loop !11

for.cond:                                         ; preds = %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !14

for.body:                                         ; preds = %for.cond, %while.body.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond ], [ 0, %while.body.i ]
  %arrayidx = getelementptr inbounds nuw [4 x float], ptr @__const.main.a, i64 0, i64 %indvars.iv
  %2 = load float, ptr %arrayidx, align 4, !tbaa !5
  %arrayidx4 = getelementptr inbounds nuw [4 x float], ptr @__const.main.b, i64 0, i64 %indvars.iv
  %3 = load float, ptr %arrayidx4, align 4, !tbaa !5
  %cmp5 = fcmp oeq float %2, %3
  %conv = zext i1 %cmp5 to i32
  %arrayidx7 = getelementptr inbounds nuw [4 x i32], ptr %r, i64 0, i64 %indvars.iv
  %4 = load i32, ptr %arrayidx7, align 4, !tbaa !9
  %cmp8.not = icmp eq i32 %4, %conv
  br i1 %cmp8.not, label %for.cond, label %if.then

if.then:                                          ; preds = %for.body
  tail call void @abort() #6
  unreachable

for.end:                                          ; preds = %for.cond
  tail call void @exit(i32 noundef 0) #6
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #2

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #3

; Function Attrs: nofree noreturn
declare void @exit(i32 noundef) local_unnamed_addr #4

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"float", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !7, i64 0}
!11 = distinct !{!11, !12, !13}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = distinct !{!14, !12, !13}
