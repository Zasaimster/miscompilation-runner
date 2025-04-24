; 154476578796324481950133360512396366906
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/154476578796324481950133360512396366906_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/154476578796324481950133360512396366906.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"Hello, World!\0A\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local range(i32 0, 2) i32 @main() local_unnamed_addr #0 {
entry:
  %b = alloca [39 x i16], align 16
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %0 = zext i32 %call to i64
  %vla = alloca i16, i64 %0, align 16
  call void @llvm.lifetime.start.p0(i64 78, ptr nonnull %b) #4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(78) %b, i8 0, i64 78, i1 false), !tbaa !5
  br label %for.body

sw.bb4.preheader:                                 ; preds = %for.body
  %1 = load i16, ptr %vla, align 16, !tbaa !5
  store i16 %1, ptr %b, align 16, !tbaa !5
  %incdec.ptr672 = getelementptr inbounds nuw i8, ptr %b, i64 2
  %incdec.ptr573 = getelementptr inbounds nuw i8, ptr %vla, i64 2
  %2 = load i16, ptr %incdec.ptr573, align 2, !tbaa !5
  store i16 %2, ptr %incdec.ptr672, align 2, !tbaa !5
  %incdec.ptr974 = getelementptr inbounds nuw i8, ptr %b, i64 4
  %incdec.ptr875 = getelementptr inbounds nuw i8, ptr %vla, i64 4
  %3 = load i16, ptr %incdec.ptr875, align 4, !tbaa !5
  store i16 %3, ptr %incdec.ptr974, align 4, !tbaa !5
  %incdec.ptr1276 = getelementptr inbounds nuw i8, ptr %b, i64 6
  %incdec.ptr1177 = getelementptr inbounds nuw i8, ptr %vla, i64 6
  %4 = load i16, ptr %incdec.ptr1177, align 2, !tbaa !5
  store i16 %4, ptr %incdec.ptr1276, align 2, !tbaa !5
  %incdec.ptr1578 = getelementptr inbounds nuw i8, ptr %b, i64 8
  %incdec.ptr1479 = getelementptr inbounds nuw i8, ptr %vla, i64 8
  %5 = load i16, ptr %incdec.ptr1479, align 8, !tbaa !5
  store i16 %5, ptr %incdec.ptr1578, align 8, !tbaa !5
  %incdec.ptr1880 = getelementptr inbounds nuw i8, ptr %b, i64 10
  %incdec.ptr1781 = getelementptr inbounds nuw i8, ptr %vla, i64 10
  %6 = load i16, ptr %incdec.ptr1781, align 2, !tbaa !5
  store i16 %6, ptr %incdec.ptr1880, align 2, !tbaa !5
  %incdec.ptr2182 = getelementptr inbounds nuw i8, ptr %b, i64 12
  %incdec.ptr2083 = getelementptr inbounds nuw i8, ptr %vla, i64 12
  %7 = load i16, ptr %incdec.ptr2083, align 4, !tbaa !5
  store i16 %7, ptr %incdec.ptr2182, align 4, !tbaa !5
  br label %do.body

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %conv = trunc i64 %indvars.iv to i16
  %arrayidx = getelementptr inbounds nuw i16, ptr %vla, i64 %indvars.iv
  store i16 %conv, ptr %arrayidx, align 2, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 39
  br i1 %exitcond.not, label %sw.bb4.preheader, label %for.body, !llvm.loop !9

do.body:                                          ; preds = %do.body, %sw.bb4.preheader
  %n.286 = phi i32 [ 5, %sw.bb4.preheader ], [ %dec, %do.body ]
  %to.185 = phi ptr [ %b, %sw.bb4.preheader ], [ %incdec.ptr3, %do.body ]
  %from.184 = phi ptr [ %vla, %sw.bb4.preheader ], [ %incdec.ptr, %do.body ]
  %dec = add nsw i32 %n.286, -1
  %incdec.ptr24 = getelementptr inbounds nuw i8, ptr %to.185, i64 14
  %incdec.ptr23 = getelementptr inbounds nuw i8, ptr %from.184, i64 14
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %from.184, i64 16
  %8 = load i16, ptr %incdec.ptr23, align 2, !tbaa !5
  %incdec.ptr3 = getelementptr inbounds nuw i8, ptr %to.185, i64 16
  store i16 %8, ptr %incdec.ptr24, align 2, !tbaa !5
  %9 = load i16, ptr %incdec.ptr, align 2, !tbaa !5
  store i16 %9, ptr %incdec.ptr3, align 2, !tbaa !5
  %incdec.ptr6 = getelementptr inbounds nuw i8, ptr %to.185, i64 18
  %incdec.ptr5 = getelementptr inbounds nuw i8, ptr %from.184, i64 18
  %10 = load i16, ptr %incdec.ptr5, align 2, !tbaa !5
  store i16 %10, ptr %incdec.ptr6, align 2, !tbaa !5
  %incdec.ptr9 = getelementptr inbounds nuw i8, ptr %to.185, i64 20
  %incdec.ptr8 = getelementptr inbounds nuw i8, ptr %from.184, i64 20
  %11 = load i16, ptr %incdec.ptr8, align 2, !tbaa !5
  store i16 %11, ptr %incdec.ptr9, align 2, !tbaa !5
  %incdec.ptr12 = getelementptr inbounds nuw i8, ptr %to.185, i64 22
  %incdec.ptr11 = getelementptr inbounds nuw i8, ptr %from.184, i64 22
  %12 = load i16, ptr %incdec.ptr11, align 2, !tbaa !5
  store i16 %12, ptr %incdec.ptr12, align 2, !tbaa !5
  %incdec.ptr15 = getelementptr inbounds nuw i8, ptr %to.185, i64 24
  %incdec.ptr14 = getelementptr inbounds nuw i8, ptr %from.184, i64 24
  %13 = load i16, ptr %incdec.ptr14, align 2, !tbaa !5
  store i16 %13, ptr %incdec.ptr15, align 2, !tbaa !5
  %incdec.ptr18 = getelementptr inbounds nuw i8, ptr %to.185, i64 26
  %incdec.ptr17 = getelementptr inbounds nuw i8, ptr %from.184, i64 26
  %14 = load i16, ptr %incdec.ptr17, align 2, !tbaa !5
  store i16 %14, ptr %incdec.ptr18, align 2, !tbaa !5
  %incdec.ptr21 = getelementptr inbounds nuw i8, ptr %to.185, i64 28
  %incdec.ptr20 = getelementptr inbounds nuw i8, ptr %from.184, i64 28
  %15 = load i16, ptr %incdec.ptr20, align 2, !tbaa !5
  store i16 %15, ptr %incdec.ptr21, align 2, !tbaa !5
  %cmp25 = icmp ugt i32 %n.286, 2
  br i1 %cmp25, label %do.body, label %for.body30, !llvm.loop !12

for.cond27:                                       ; preds = %for.body30
  %indvars.iv.next90 = add nuw nsw i64 %indvars.iv89, 1
  %exitcond92.not = icmp eq i64 %indvars.iv.next90, 39
  br i1 %exitcond92.not, label %cleanup, label %for.body30, !llvm.loop !13

for.body30:                                       ; preds = %for.cond27, %do.body
  %indvars.iv89 = phi i64 [ %indvars.iv.next90, %for.cond27 ], [ 0, %do.body ]
  %arrayidx32 = getelementptr inbounds nuw i16, ptr %vla, i64 %indvars.iv89
  %16 = load i16, ptr %arrayidx32, align 2, !tbaa !5
  %arrayidx35 = getelementptr inbounds nuw [39 x i16], ptr %b, i64 0, i64 %indvars.iv89
  %17 = load i16, ptr %arrayidx35, align 2, !tbaa !5
  %cmp37.not = icmp eq i16 %16, %17
  br i1 %cmp37.not, label %for.cond27, label %cleanup

cleanup:                                          ; preds = %for.body30, %for.cond27
  %retval.0 = phi i32 [ 1, %for.body30 ], [ 0, %for.cond27 ]
  call void @llvm.lifetime.end.p0(i64 78, ptr nonnull %b) #4
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
