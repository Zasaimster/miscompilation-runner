; 117162208664766609711477580840698295413
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/117162208664766609711477580840698295413_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/117162208664766609711477580840698295413.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local range(i32 0, 2) i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca [0 x i16], align 2
  %b = alloca [39 x i16], align 16
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %a) #3
  call void @llvm.lifetime.start.p0(i64 78, ptr nonnull %b) #3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(78) %b, i8 0, i64 78, i1 false), !tbaa !5
  store i16 38, ptr %a, align 2, !tbaa !5
  store i16 38, ptr %b, align 16, !tbaa !5
  %incdec.ptr774 = getelementptr inbounds nuw i8, ptr %b, i64 2
  %incdec.ptr675 = getelementptr inbounds nuw i8, ptr %a, i64 2
  %0 = load i16, ptr %incdec.ptr675, align 2, !tbaa !5
  store i16 %0, ptr %incdec.ptr774, align 2, !tbaa !5
  %incdec.ptr1076 = getelementptr inbounds nuw i8, ptr %b, i64 4
  %incdec.ptr977 = getelementptr inbounds nuw i8, ptr %a, i64 4
  %1 = load i16, ptr %incdec.ptr977, align 2, !tbaa !5
  store i16 %1, ptr %incdec.ptr1076, align 4, !tbaa !5
  %incdec.ptr1378 = getelementptr inbounds nuw i8, ptr %b, i64 6
  %incdec.ptr1279 = getelementptr inbounds nuw i8, ptr %a, i64 6
  %2 = load i16, ptr %incdec.ptr1279, align 2, !tbaa !5
  store i16 %2, ptr %incdec.ptr1378, align 2, !tbaa !5
  %incdec.ptr1680 = getelementptr inbounds nuw i8, ptr %b, i64 8
  %incdec.ptr1581 = getelementptr inbounds nuw i8, ptr %a, i64 8
  %3 = load i16, ptr %incdec.ptr1581, align 2, !tbaa !5
  store i16 %3, ptr %incdec.ptr1680, align 8, !tbaa !5
  %incdec.ptr1982 = getelementptr inbounds nuw i8, ptr %b, i64 10
  %incdec.ptr1883 = getelementptr inbounds nuw i8, ptr %a, i64 10
  %4 = load i16, ptr %incdec.ptr1883, align 2, !tbaa !5
  store i16 %4, ptr %incdec.ptr1982, align 2, !tbaa !5
  %incdec.ptr2284 = getelementptr inbounds nuw i8, ptr %b, i64 12
  %incdec.ptr2185 = getelementptr inbounds nuw i8, ptr %a, i64 12
  %5 = load i16, ptr %incdec.ptr2185, align 2, !tbaa !5
  store i16 %5, ptr %incdec.ptr2284, align 4, !tbaa !5
  br label %do.body

do.body:                                          ; preds = %do.body, %entry
  %to.188 = phi ptr [ %b, %entry ], [ %incdec.ptr4, %do.body ]
  %from.187 = phi ptr [ %a, %entry ], [ %incdec.ptr, %do.body ]
  %n.286 = phi i32 [ 5, %entry ], [ %dec, %do.body ]
  %dec = add nsw i32 %n.286, -1
  %incdec.ptr25 = getelementptr inbounds nuw i8, ptr %to.188, i64 14
  %incdec.ptr24 = getelementptr inbounds nuw i8, ptr %from.187, i64 14
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %from.187, i64 16
  %6 = load i16, ptr %incdec.ptr24, align 2, !tbaa !5
  %incdec.ptr4 = getelementptr inbounds nuw i8, ptr %to.188, i64 16
  store i16 %6, ptr %incdec.ptr25, align 2, !tbaa !5
  %7 = load i16, ptr %incdec.ptr, align 2, !tbaa !5
  store i16 %7, ptr %incdec.ptr4, align 2, !tbaa !5
  %incdec.ptr7 = getelementptr inbounds nuw i8, ptr %to.188, i64 18
  %incdec.ptr6 = getelementptr inbounds nuw i8, ptr %from.187, i64 18
  %8 = load i16, ptr %incdec.ptr6, align 2, !tbaa !5
  store i16 %8, ptr %incdec.ptr7, align 2, !tbaa !5
  %incdec.ptr10 = getelementptr inbounds nuw i8, ptr %to.188, i64 20
  %incdec.ptr9 = getelementptr inbounds nuw i8, ptr %from.187, i64 20
  %9 = load i16, ptr %incdec.ptr9, align 2, !tbaa !5
  store i16 %9, ptr %incdec.ptr10, align 2, !tbaa !5
  %incdec.ptr13 = getelementptr inbounds nuw i8, ptr %to.188, i64 22
  %incdec.ptr12 = getelementptr inbounds nuw i8, ptr %from.187, i64 22
  %10 = load i16, ptr %incdec.ptr12, align 2, !tbaa !5
  store i16 %10, ptr %incdec.ptr13, align 2, !tbaa !5
  %incdec.ptr16 = getelementptr inbounds nuw i8, ptr %to.188, i64 24
  %incdec.ptr15 = getelementptr inbounds nuw i8, ptr %from.187, i64 24
  %11 = load i16, ptr %incdec.ptr15, align 2, !tbaa !5
  store i16 %11, ptr %incdec.ptr16, align 2, !tbaa !5
  %incdec.ptr19 = getelementptr inbounds nuw i8, ptr %to.188, i64 26
  %incdec.ptr18 = getelementptr inbounds nuw i8, ptr %from.187, i64 26
  %12 = load i16, ptr %incdec.ptr18, align 2, !tbaa !5
  store i16 %12, ptr %incdec.ptr19, align 2, !tbaa !5
  %incdec.ptr22 = getelementptr inbounds nuw i8, ptr %to.188, i64 28
  %incdec.ptr21 = getelementptr inbounds nuw i8, ptr %from.187, i64 28
  %13 = load i16, ptr %incdec.ptr21, align 2, !tbaa !5
  store i16 %13, ptr %incdec.ptr22, align 2, !tbaa !5
  %cmp26 = icmp ugt i32 %n.286, 2
  br i1 %cmp26, label %do.body, label %for.cond28.preheader, !llvm.loop !9

for.cond28.preheader:                             ; preds = %do.body
  %14 = load i16, ptr %a, align 2, !tbaa !5
  br label %for.body31

for.cond28:                                       ; preds = %for.body31
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 39
  br i1 %exitcond.not, label %cleanup, label %for.body31, !llvm.loop !12

for.body31:                                       ; preds = %for.cond28, %for.cond28.preheader
  %indvars.iv = phi i64 [ 0, %for.cond28.preheader ], [ %indvars.iv.next, %for.cond28 ]
  %arrayidx36 = getelementptr inbounds nuw [39 x i16], ptr %b, i64 0, i64 %indvars.iv
  %15 = load i16, ptr %arrayidx36, align 2, !tbaa !5
  %cmp38.not = icmp eq i16 %14, %15
  br i1 %cmp38.not, label %for.cond28, label %cleanup

cleanup:                                          ; preds = %for.body31, %for.cond28
  %retval.0 = phi i32 [ 1, %for.body31 ], [ 0, %for.cond28 ]
  call void @llvm.lifetime.end.p0(i64 78, ptr nonnull %b) #3
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %a) #3
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

attributes #0 = { nofree norecurse nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"short", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
