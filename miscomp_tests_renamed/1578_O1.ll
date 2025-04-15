; 174264670346691767922569428391240900666
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/174264670346691767922569428391240900666.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/174264670346691767922569428391240900666.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local range(i32 0, 2) i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca [39 x i16], align 16
  %b = alloca [39 x i16], align 16
  call void @llvm.lifetime.start.p0(i64 78, ptr nonnull %a) #3
  call void @llvm.lifetime.start.p0(i64 78, ptr nonnull %b) #3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(78) %b, i8 0, i64 78, i1 false), !tbaa !5
  br label %for.body

sw.bb7.preheader:                                 ; preds = %for.body
  %0 = load i16, ptr %a, align 16, !tbaa !5
  store i16 %0, ptr %b, align 16, !tbaa !5
  %incdec.ptr978 = getelementptr inbounds nuw i8, ptr %b, i64 2
  %incdec.ptr879 = getelementptr inbounds nuw i8, ptr %a, i64 2
  %1 = load i16, ptr %incdec.ptr879, align 2, !tbaa !5
  store i16 %1, ptr %incdec.ptr978, align 2, !tbaa !5
  %incdec.ptr1280 = getelementptr inbounds nuw i8, ptr %b, i64 4
  %incdec.ptr1181 = getelementptr inbounds nuw i8, ptr %a, i64 4
  %2 = load i16, ptr %incdec.ptr1181, align 4, !tbaa !5
  store i16 %2, ptr %incdec.ptr1280, align 4, !tbaa !5
  %incdec.ptr1582 = getelementptr inbounds nuw i8, ptr %b, i64 6
  %incdec.ptr1483 = getelementptr inbounds nuw i8, ptr %a, i64 6
  %3 = load i16, ptr %incdec.ptr1483, align 2, !tbaa !5
  store i16 %3, ptr %incdec.ptr1582, align 2, !tbaa !5
  %incdec.ptr1884 = getelementptr inbounds nuw i8, ptr %b, i64 8
  %incdec.ptr1785 = getelementptr inbounds nuw i8, ptr %a, i64 8
  %4 = load i16, ptr %incdec.ptr1785, align 8, !tbaa !5
  store i16 %4, ptr %incdec.ptr1884, align 8, !tbaa !5
  %incdec.ptr2186 = getelementptr inbounds nuw i8, ptr %b, i64 10
  %incdec.ptr2087 = getelementptr inbounds nuw i8, ptr %a, i64 10
  %5 = load i16, ptr %incdec.ptr2087, align 2, !tbaa !5
  store i16 %5, ptr %incdec.ptr2186, align 2, !tbaa !5
  %incdec.ptr2488 = getelementptr inbounds nuw i8, ptr %b, i64 12
  %incdec.ptr2389 = getelementptr inbounds nuw i8, ptr %a, i64 12
  %6 = load i16, ptr %incdec.ptr2389, align 4, !tbaa !5
  store i16 %6, ptr %incdec.ptr2488, align 4, !tbaa !5
  br label %do.body

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %conv = trunc i64 %indvars.iv to i16
  %arrayidx = getelementptr inbounds nuw [39 x i16], ptr %a, i64 0, i64 %indvars.iv
  store i16 %conv, ptr %arrayidx, align 2, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 39
  br i1 %exitcond.not, label %sw.bb7.preheader, label %for.body, !llvm.loop !9

do.body:                                          ; preds = %sw.bb7.preheader, %do.body
  %to.192 = phi ptr [ %b, %sw.bb7.preheader ], [ %incdec.ptr6, %do.body ]
  %from.191 = phi ptr [ %a, %sw.bb7.preheader ], [ %incdec.ptr, %do.body ]
  %n.290 = phi i32 [ 5, %sw.bb7.preheader ], [ %dec, %do.body ]
  %dec = add nsw i32 %n.290, -1
  %incdec.ptr27 = getelementptr inbounds nuw i8, ptr %to.192, i64 14
  %incdec.ptr26 = getelementptr inbounds nuw i8, ptr %from.191, i64 14
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %from.191, i64 16
  %7 = load i16, ptr %incdec.ptr26, align 2, !tbaa !5
  %incdec.ptr6 = getelementptr inbounds nuw i8, ptr %to.192, i64 16
  store i16 %7, ptr %incdec.ptr27, align 2, !tbaa !5
  %8 = load i16, ptr %incdec.ptr, align 2, !tbaa !5
  store i16 %8, ptr %incdec.ptr6, align 2, !tbaa !5
  %incdec.ptr9 = getelementptr inbounds nuw i8, ptr %to.192, i64 18
  %incdec.ptr8 = getelementptr inbounds nuw i8, ptr %from.191, i64 18
  %9 = load i16, ptr %incdec.ptr8, align 2, !tbaa !5
  store i16 %9, ptr %incdec.ptr9, align 2, !tbaa !5
  %incdec.ptr12 = getelementptr inbounds nuw i8, ptr %to.192, i64 20
  %incdec.ptr11 = getelementptr inbounds nuw i8, ptr %from.191, i64 20
  %10 = load i16, ptr %incdec.ptr11, align 2, !tbaa !5
  store i16 %10, ptr %incdec.ptr12, align 2, !tbaa !5
  %incdec.ptr15 = getelementptr inbounds nuw i8, ptr %to.192, i64 22
  %incdec.ptr14 = getelementptr inbounds nuw i8, ptr %from.191, i64 22
  %11 = load i16, ptr %incdec.ptr14, align 2, !tbaa !5
  store i16 %11, ptr %incdec.ptr15, align 2, !tbaa !5
  %incdec.ptr18 = getelementptr inbounds nuw i8, ptr %to.192, i64 24
  %incdec.ptr17 = getelementptr inbounds nuw i8, ptr %from.191, i64 24
  %12 = load i16, ptr %incdec.ptr17, align 2, !tbaa !5
  store i16 %12, ptr %incdec.ptr18, align 2, !tbaa !5
  %incdec.ptr21 = getelementptr inbounds nuw i8, ptr %to.192, i64 26
  %incdec.ptr20 = getelementptr inbounds nuw i8, ptr %from.191, i64 26
  %13 = load i16, ptr %incdec.ptr20, align 2, !tbaa !5
  store i16 %13, ptr %incdec.ptr21, align 2, !tbaa !5
  %incdec.ptr24 = getelementptr inbounds nuw i8, ptr %to.192, i64 28
  %incdec.ptr23 = getelementptr inbounds nuw i8, ptr %from.191, i64 28
  %14 = load i16, ptr %incdec.ptr23, align 2, !tbaa !5
  store i16 %14, ptr %incdec.ptr24, align 2, !tbaa !5
  %cmp28 = icmp ugt i32 %n.290, 2
  br i1 %cmp28, label %do.body, label %for.body33, !llvm.loop !12

for.cond30:                                       ; preds = %for.body33
  %indvars.iv.next96 = add nuw nsw i64 %indvars.iv95, 1
  %exitcond98.not = icmp eq i64 %indvars.iv.next96, 39
  br i1 %exitcond98.not, label %cleanup, label %for.body33, !llvm.loop !13

for.body33:                                       ; preds = %do.body, %for.cond30
  %indvars.iv95 = phi i64 [ %indvars.iv.next96, %for.cond30 ], [ 0, %do.body ]
  %arrayidx35 = getelementptr inbounds nuw [39 x i16], ptr %a, i64 0, i64 %indvars.iv95
  %15 = load i16, ptr %arrayidx35, align 2, !tbaa !5
  %arrayidx38 = getelementptr inbounds nuw [39 x i16], ptr %b, i64 0, i64 %indvars.iv95
  %16 = load i16, ptr %arrayidx38, align 2, !tbaa !5
  %cmp40.not = icmp eq i16 %15, %16
  br i1 %cmp40.not, label %for.cond30, label %cleanup

cleanup:                                          ; preds = %for.cond30, %for.body33
  %retval.0 = phi i32 [ 1, %for.body33 ], [ 0, %for.cond30 ]
  call void @llvm.lifetime.end.p0(i64 78, ptr nonnull %b) #3
  call void @llvm.lifetime.end.p0(i64 78, ptr nonnull %a) #3
  ret i32 %retval.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

attributes #0 = { nofree norecurse nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
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
!13 = distinct !{!13, !10, !11}
