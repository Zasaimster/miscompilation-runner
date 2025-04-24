; 110945059464515898590375390688919479305
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/110945059464515898590375390688919479305.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/110945059464515898590375390688919479305.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@str = private unnamed_addr constant [18 x i8] c"Hello, optimizer!\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local range(i32 0, 2) i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca [39 x i16], align 16
  %b = alloca [39 x i16], align 16
  call void @llvm.lifetime.start.p0(i64 78, ptr nonnull %a) #3
  call void @llvm.lifetime.start.p0(i64 78, ptr nonnull %b) #3
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %0 = load i16, ptr %a, align 16, !tbaa !5
  store i16 %0, ptr %b, align 16, !tbaa !5
  %incdec.ptr554 = getelementptr inbounds nuw i8, ptr %b, i64 2
  %incdec.ptr455 = getelementptr inbounds nuw i8, ptr %a, i64 2
  %1 = load i16, ptr %incdec.ptr455, align 2, !tbaa !5
  store i16 %1, ptr %incdec.ptr554, align 2, !tbaa !5
  %incdec.ptr856 = getelementptr inbounds nuw i8, ptr %b, i64 4
  %incdec.ptr757 = getelementptr inbounds nuw i8, ptr %a, i64 4
  %2 = load i16, ptr %incdec.ptr757, align 4, !tbaa !5
  store i16 %2, ptr %incdec.ptr856, align 4, !tbaa !5
  %incdec.ptr1158 = getelementptr inbounds nuw i8, ptr %b, i64 6
  %incdec.ptr1059 = getelementptr inbounds nuw i8, ptr %a, i64 6
  %3 = load i16, ptr %incdec.ptr1059, align 2, !tbaa !5
  store i16 %3, ptr %incdec.ptr1158, align 2, !tbaa !5
  %incdec.ptr1460 = getelementptr inbounds nuw i8, ptr %b, i64 8
  %incdec.ptr1361 = getelementptr inbounds nuw i8, ptr %a, i64 8
  %4 = load i16, ptr %incdec.ptr1361, align 8, !tbaa !5
  store i16 %4, ptr %incdec.ptr1460, align 8, !tbaa !5
  %incdec.ptr1762 = getelementptr inbounds nuw i8, ptr %b, i64 10
  %incdec.ptr1663 = getelementptr inbounds nuw i8, ptr %a, i64 10
  %5 = load i16, ptr %incdec.ptr1663, align 2, !tbaa !5
  store i16 %5, ptr %incdec.ptr1762, align 2, !tbaa !5
  %incdec.ptr2064 = getelementptr inbounds nuw i8, ptr %b, i64 12
  %incdec.ptr1965 = getelementptr inbounds nuw i8, ptr %a, i64 12
  %6 = load i16, ptr %incdec.ptr1965, align 4, !tbaa !5
  store i16 %6, ptr %incdec.ptr2064, align 4, !tbaa !5
  br label %do.body

do.body:                                          ; preds = %entry, %do.body
  %to.168 = phi ptr [ %b, %entry ], [ %incdec.ptr2, %do.body ]
  %from.167 = phi ptr [ %a, %entry ], [ %incdec.ptr, %do.body ]
  %n.166 = phi i32 [ 5, %entry ], [ %dec, %do.body ]
  %dec = add nsw i32 %n.166, -1
  %incdec.ptr23 = getelementptr inbounds nuw i8, ptr %to.168, i64 14
  %incdec.ptr22 = getelementptr inbounds nuw i8, ptr %from.167, i64 14
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %from.167, i64 16
  %7 = load i16, ptr %incdec.ptr22, align 2, !tbaa !5
  %incdec.ptr2 = getelementptr inbounds nuw i8, ptr %to.168, i64 16
  store i16 %7, ptr %incdec.ptr23, align 2, !tbaa !5
  %8 = load i16, ptr %incdec.ptr, align 2, !tbaa !5
  store i16 %8, ptr %incdec.ptr2, align 2, !tbaa !5
  %incdec.ptr5 = getelementptr inbounds nuw i8, ptr %to.168, i64 18
  %incdec.ptr4 = getelementptr inbounds nuw i8, ptr %from.167, i64 18
  %9 = load i16, ptr %incdec.ptr4, align 2, !tbaa !5
  store i16 %9, ptr %incdec.ptr5, align 2, !tbaa !5
  %incdec.ptr8 = getelementptr inbounds nuw i8, ptr %to.168, i64 20
  %incdec.ptr7 = getelementptr inbounds nuw i8, ptr %from.167, i64 20
  %10 = load i16, ptr %incdec.ptr7, align 2, !tbaa !5
  store i16 %10, ptr %incdec.ptr8, align 2, !tbaa !5
  %incdec.ptr11 = getelementptr inbounds nuw i8, ptr %to.168, i64 22
  %incdec.ptr10 = getelementptr inbounds nuw i8, ptr %from.167, i64 22
  %11 = load i16, ptr %incdec.ptr10, align 2, !tbaa !5
  store i16 %11, ptr %incdec.ptr11, align 2, !tbaa !5
  %incdec.ptr14 = getelementptr inbounds nuw i8, ptr %to.168, i64 24
  %incdec.ptr13 = getelementptr inbounds nuw i8, ptr %from.167, i64 24
  %12 = load i16, ptr %incdec.ptr13, align 2, !tbaa !5
  store i16 %12, ptr %incdec.ptr14, align 2, !tbaa !5
  %incdec.ptr17 = getelementptr inbounds nuw i8, ptr %to.168, i64 26
  %incdec.ptr16 = getelementptr inbounds nuw i8, ptr %from.167, i64 26
  %13 = load i16, ptr %incdec.ptr16, align 2, !tbaa !5
  store i16 %13, ptr %incdec.ptr17, align 2, !tbaa !5
  %incdec.ptr20 = getelementptr inbounds nuw i8, ptr %to.168, i64 28
  %incdec.ptr19 = getelementptr inbounds nuw i8, ptr %from.167, i64 28
  %14 = load i16, ptr %incdec.ptr19, align 2, !tbaa !5
  store i16 %14, ptr %incdec.ptr20, align 2, !tbaa !5
  %cmp = icmp ugt i32 %n.166, 2
  br i1 %cmp, label %do.body, label %for.body, !llvm.loop !9

for.cond:                                         ; preds = %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 39
  br i1 %exitcond.not, label %cleanup, label %for.body, !llvm.loop !12

for.body:                                         ; preds = %do.body, %for.cond
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond ], [ 0, %do.body ]
  %arrayidx = getelementptr inbounds nuw [39 x i16], ptr %a, i64 0, i64 %indvars.iv
  %15 = load i16, ptr %arrayidx, align 2, !tbaa !5
  %arrayidx26 = getelementptr inbounds nuw [39 x i16], ptr %b, i64 0, i64 %indvars.iv
  %16 = load i16, ptr %arrayidx26, align 2, !tbaa !5
  %cmp28.not = icmp eq i16 %15, %16
  br i1 %cmp28.not, label %for.cond, label %cleanup

cleanup:                                          ; preds = %for.cond, %for.body
  %retval.0 = phi i32 [ 1, %for.body ], [ 0, %for.cond ]
  call void @llvm.lifetime.end.p0(i64 78, ptr nonnull %b) #3
  call void @llvm.lifetime.end.p0(i64 78, ptr nonnull %a) #3
  ret i32 %retval.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #2

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind }
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
