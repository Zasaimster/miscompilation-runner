; 120323421154307293461085569893905335231
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/120323421154307293461085569893905335231.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/120323421154307293461085569893905335231.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind uwtable
define dso_local range(i32 0, 2) i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca [39 x i16], align 16
  call void @llvm.lifetime.start.p0(i64 78, ptr nonnull %a) #4
  %0 = tail call ptr @llvm.stacksave.p0()
  %vla74 = alloca [5 x i16], align 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(78) %vla74, i8 0, i64 78, i1 false), !tbaa !5
  br label %for.body

sw.bb6.preheader:                                 ; preds = %for.body
  %1 = load i16, ptr %a, align 16, !tbaa !5
  store i16 %1, ptr %vla74, align 16, !tbaa !5
  %incdec.ptr876 = getelementptr inbounds nuw i8, ptr %vla74, i64 2
  %incdec.ptr777 = getelementptr inbounds nuw i8, ptr %a, i64 2
  %2 = load i16, ptr %incdec.ptr777, align 2, !tbaa !5
  store i16 %2, ptr %incdec.ptr876, align 2, !tbaa !5
  %incdec.ptr1178 = getelementptr inbounds nuw i8, ptr %vla74, i64 4
  %incdec.ptr1079 = getelementptr inbounds nuw i8, ptr %a, i64 4
  %3 = load i16, ptr %incdec.ptr1079, align 4, !tbaa !5
  store i16 %3, ptr %incdec.ptr1178, align 4, !tbaa !5
  %incdec.ptr1480 = getelementptr inbounds nuw i8, ptr %vla74, i64 6
  %incdec.ptr1381 = getelementptr inbounds nuw i8, ptr %a, i64 6
  %4 = load i16, ptr %incdec.ptr1381, align 2, !tbaa !5
  store i16 %4, ptr %incdec.ptr1480, align 2, !tbaa !5
  %incdec.ptr1782 = getelementptr inbounds nuw i8, ptr %vla74, i64 8
  %incdec.ptr1683 = getelementptr inbounds nuw i8, ptr %a, i64 8
  %5 = load i16, ptr %incdec.ptr1683, align 8, !tbaa !5
  store i16 %5, ptr %incdec.ptr1782, align 8, !tbaa !5
  %incdec.ptr2084 = getelementptr inbounds nuw i8, ptr %vla74, i64 10
  %incdec.ptr1985 = getelementptr inbounds nuw i8, ptr %a, i64 10
  %6 = load i16, ptr %incdec.ptr1985, align 2, !tbaa !5
  store i16 %6, ptr %incdec.ptr2084, align 2, !tbaa !5
  %incdec.ptr2386 = getelementptr inbounds nuw i8, ptr %vla74, i64 12
  %incdec.ptr2287 = getelementptr inbounds nuw i8, ptr %a, i64 12
  %7 = load i16, ptr %incdec.ptr2287, align 4, !tbaa !5
  store i16 %7, ptr %incdec.ptr2386, align 4, !tbaa !5
  br label %do.body

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %conv = trunc i64 %indvars.iv to i16
  %arrayidx = getelementptr inbounds nuw [39 x i16], ptr %a, i64 0, i64 %indvars.iv
  store i16 %conv, ptr %arrayidx, align 2, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 39
  br i1 %exitcond.not, label %sw.bb6.preheader, label %for.body, !llvm.loop !9

do.body:                                          ; preds = %sw.bb6.preheader, %do.body
  %n.290 = phi i32 [ 5, %sw.bb6.preheader ], [ %dec, %do.body ]
  %to.189 = phi ptr [ %vla74, %sw.bb6.preheader ], [ %incdec.ptr5, %do.body ]
  %from.188 = phi ptr [ %a, %sw.bb6.preheader ], [ %incdec.ptr, %do.body ]
  %dec = add nsw i32 %n.290, -1
  %incdec.ptr26 = getelementptr inbounds nuw i8, ptr %to.189, i64 14
  %incdec.ptr25 = getelementptr inbounds nuw i8, ptr %from.188, i64 14
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %from.188, i64 16
  %8 = load i16, ptr %incdec.ptr25, align 2, !tbaa !5
  %incdec.ptr5 = getelementptr inbounds nuw i8, ptr %to.189, i64 16
  store i16 %8, ptr %incdec.ptr26, align 2, !tbaa !5
  %9 = load i16, ptr %incdec.ptr, align 2, !tbaa !5
  store i16 %9, ptr %incdec.ptr5, align 2, !tbaa !5
  %incdec.ptr8 = getelementptr inbounds nuw i8, ptr %to.189, i64 18
  %incdec.ptr7 = getelementptr inbounds nuw i8, ptr %from.188, i64 18
  %10 = load i16, ptr %incdec.ptr7, align 2, !tbaa !5
  store i16 %10, ptr %incdec.ptr8, align 2, !tbaa !5
  %incdec.ptr11 = getelementptr inbounds nuw i8, ptr %to.189, i64 20
  %incdec.ptr10 = getelementptr inbounds nuw i8, ptr %from.188, i64 20
  %11 = load i16, ptr %incdec.ptr10, align 2, !tbaa !5
  store i16 %11, ptr %incdec.ptr11, align 2, !tbaa !5
  %incdec.ptr14 = getelementptr inbounds nuw i8, ptr %to.189, i64 22
  %incdec.ptr13 = getelementptr inbounds nuw i8, ptr %from.188, i64 22
  %12 = load i16, ptr %incdec.ptr13, align 2, !tbaa !5
  store i16 %12, ptr %incdec.ptr14, align 2, !tbaa !5
  %incdec.ptr17 = getelementptr inbounds nuw i8, ptr %to.189, i64 24
  %incdec.ptr16 = getelementptr inbounds nuw i8, ptr %from.188, i64 24
  %13 = load i16, ptr %incdec.ptr16, align 2, !tbaa !5
  store i16 %13, ptr %incdec.ptr17, align 2, !tbaa !5
  %incdec.ptr20 = getelementptr inbounds nuw i8, ptr %to.189, i64 26
  %incdec.ptr19 = getelementptr inbounds nuw i8, ptr %from.188, i64 26
  %14 = load i16, ptr %incdec.ptr19, align 2, !tbaa !5
  store i16 %14, ptr %incdec.ptr20, align 2, !tbaa !5
  %incdec.ptr23 = getelementptr inbounds nuw i8, ptr %to.189, i64 28
  %incdec.ptr22 = getelementptr inbounds nuw i8, ptr %from.188, i64 28
  %15 = load i16, ptr %incdec.ptr22, align 2, !tbaa !5
  store i16 %15, ptr %incdec.ptr23, align 2, !tbaa !5
  %cmp27 = icmp ugt i32 %n.290, 2
  br i1 %cmp27, label %do.body, label %for.body32, !llvm.loop !12

for.cond29:                                       ; preds = %for.body32
  %indvars.iv.next94 = add nuw nsw i64 %indvars.iv93, 1
  %exitcond96.not = icmp eq i64 %indvars.iv.next94, 39
  br i1 %exitcond96.not, label %cleanup, label %for.body32, !llvm.loop !13

for.body32:                                       ; preds = %do.body, %for.cond29
  %indvars.iv93 = phi i64 [ %indvars.iv.next94, %for.cond29 ], [ 0, %do.body ]
  %arrayidx34 = getelementptr inbounds nuw [39 x i16], ptr %a, i64 0, i64 %indvars.iv93
  %16 = load i16, ptr %arrayidx34, align 2, !tbaa !5
  %arrayidx37 = getelementptr inbounds nuw i16, ptr %vla74, i64 %indvars.iv93
  %17 = load i16, ptr %arrayidx37, align 2, !tbaa !5
  %cmp39.not = icmp eq i16 %16, %17
  br i1 %cmp39.not, label %for.cond29, label %cleanup

cleanup:                                          ; preds = %for.cond29, %for.body32
  %retval.0 = phi i32 [ 1, %for.body32 ], [ 0, %for.cond29 ]
  call void @llvm.stackrestore.p0(ptr %0)
  call void @llvm.lifetime.end.p0(i64 78, ptr nonnull %a) #4
  ret i32 %retval.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

attributes #0 = { nofree norecurse nosync nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nounwind }

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
!13 = distinct !{!13, !10, !11}
