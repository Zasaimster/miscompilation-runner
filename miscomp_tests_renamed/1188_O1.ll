; 168651946725263788852945604594752658359
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/168651946725263788852945604594752658359.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/168651946725263788852945604594752658359.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca [39 x i16], align 16
  %b = alloca [39 x i16], align 16
  call void @llvm.lifetime.start.p0(i64 78, ptr nonnull %a) #4
  call void @llvm.lifetime.start.p0(i64 78, ptr nonnull %b) #4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(78) %b, i8 0, i64 78, i1 false), !tbaa !5
  br label %for.body

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %conv = trunc i64 %indvars.iv to i16
  %arrayidx = getelementptr inbounds nuw [39 x i16], ptr %a, i64 0, i64 %indvars.iv
  store i16 %conv, ptr %arrayidx, align 2, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 39
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !9

for.end:                                          ; preds = %for.body
  %call = tail call i32 (i32, i32, ...) @show(i32 noundef 10, i32 noundef 20) #4
  %0 = load i16, ptr %a, align 16, !tbaa !5
  store i16 %0, ptr %b, align 16, !tbaa !5
  %incdec.ptr773 = getelementptr inbounds nuw i8, ptr %b, i64 2
  %incdec.ptr674 = getelementptr inbounds nuw i8, ptr %a, i64 2
  %1 = load i16, ptr %incdec.ptr674, align 2, !tbaa !5
  store i16 %1, ptr %incdec.ptr773, align 2, !tbaa !5
  %incdec.ptr1075 = getelementptr inbounds nuw i8, ptr %b, i64 4
  %incdec.ptr976 = getelementptr inbounds nuw i8, ptr %a, i64 4
  %2 = load i16, ptr %incdec.ptr976, align 4, !tbaa !5
  store i16 %2, ptr %incdec.ptr1075, align 4, !tbaa !5
  %incdec.ptr1377 = getelementptr inbounds nuw i8, ptr %b, i64 6
  %incdec.ptr1278 = getelementptr inbounds nuw i8, ptr %a, i64 6
  %3 = load i16, ptr %incdec.ptr1278, align 2, !tbaa !5
  store i16 %3, ptr %incdec.ptr1377, align 2, !tbaa !5
  %incdec.ptr1679 = getelementptr inbounds nuw i8, ptr %b, i64 8
  %incdec.ptr1580 = getelementptr inbounds nuw i8, ptr %a, i64 8
  %4 = load i16, ptr %incdec.ptr1580, align 8, !tbaa !5
  store i16 %4, ptr %incdec.ptr1679, align 8, !tbaa !5
  %incdec.ptr1981 = getelementptr inbounds nuw i8, ptr %b, i64 10
  %incdec.ptr1882 = getelementptr inbounds nuw i8, ptr %a, i64 10
  %5 = load i16, ptr %incdec.ptr1882, align 2, !tbaa !5
  store i16 %5, ptr %incdec.ptr1981, align 2, !tbaa !5
  %incdec.ptr2283 = getelementptr inbounds nuw i8, ptr %b, i64 12
  %incdec.ptr2184 = getelementptr inbounds nuw i8, ptr %a, i64 12
  %6 = load i16, ptr %incdec.ptr2184, align 4, !tbaa !5
  store i16 %6, ptr %incdec.ptr2283, align 4, !tbaa !5
  br label %do.body

do.body:                                          ; preds = %for.end, %do.body
  %to.187 = phi ptr [ %b, %for.end ], [ %incdec.ptr4, %do.body ]
  %from.186 = phi ptr [ %a, %for.end ], [ %incdec.ptr, %do.body ]
  %n.285 = phi i32 [ 5, %for.end ], [ %dec, %do.body ]
  %dec = add nsw i32 %n.285, -1
  %incdec.ptr25 = getelementptr inbounds nuw i8, ptr %to.187, i64 14
  %incdec.ptr24 = getelementptr inbounds nuw i8, ptr %from.186, i64 14
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %from.186, i64 16
  %7 = load i16, ptr %incdec.ptr24, align 2, !tbaa !5
  %incdec.ptr4 = getelementptr inbounds nuw i8, ptr %to.187, i64 16
  store i16 %7, ptr %incdec.ptr25, align 2, !tbaa !5
  %8 = load i16, ptr %incdec.ptr, align 2, !tbaa !5
  store i16 %8, ptr %incdec.ptr4, align 2, !tbaa !5
  %incdec.ptr7 = getelementptr inbounds nuw i8, ptr %to.187, i64 18
  %incdec.ptr6 = getelementptr inbounds nuw i8, ptr %from.186, i64 18
  %9 = load i16, ptr %incdec.ptr6, align 2, !tbaa !5
  store i16 %9, ptr %incdec.ptr7, align 2, !tbaa !5
  %incdec.ptr10 = getelementptr inbounds nuw i8, ptr %to.187, i64 20
  %incdec.ptr9 = getelementptr inbounds nuw i8, ptr %from.186, i64 20
  %10 = load i16, ptr %incdec.ptr9, align 2, !tbaa !5
  store i16 %10, ptr %incdec.ptr10, align 2, !tbaa !5
  %incdec.ptr13 = getelementptr inbounds nuw i8, ptr %to.187, i64 22
  %incdec.ptr12 = getelementptr inbounds nuw i8, ptr %from.186, i64 22
  %11 = load i16, ptr %incdec.ptr12, align 2, !tbaa !5
  store i16 %11, ptr %incdec.ptr13, align 2, !tbaa !5
  %incdec.ptr16 = getelementptr inbounds nuw i8, ptr %to.187, i64 24
  %incdec.ptr15 = getelementptr inbounds nuw i8, ptr %from.186, i64 24
  %12 = load i16, ptr %incdec.ptr15, align 2, !tbaa !5
  store i16 %12, ptr %incdec.ptr16, align 2, !tbaa !5
  %incdec.ptr19 = getelementptr inbounds nuw i8, ptr %to.187, i64 26
  %incdec.ptr18 = getelementptr inbounds nuw i8, ptr %from.186, i64 26
  %13 = load i16, ptr %incdec.ptr18, align 2, !tbaa !5
  store i16 %13, ptr %incdec.ptr19, align 2, !tbaa !5
  %incdec.ptr22 = getelementptr inbounds nuw i8, ptr %to.187, i64 28
  %incdec.ptr21 = getelementptr inbounds nuw i8, ptr %from.186, i64 28
  %14 = load i16, ptr %incdec.ptr21, align 2, !tbaa !5
  store i16 %14, ptr %incdec.ptr22, align 2, !tbaa !5
  %cmp26 = icmp ugt i32 %n.285, 2
  br i1 %cmp26, label %do.body, label %for.body31, !llvm.loop !12

for.cond28:                                       ; preds = %for.body31
  %indvars.iv.next91 = add nuw nsw i64 %indvars.iv90, 1
  %exitcond93.not = icmp eq i64 %indvars.iv.next91, 39
  br i1 %exitcond93.not, label %cleanup, label %for.body31, !llvm.loop !13

for.body31:                                       ; preds = %do.body, %for.cond28
  %indvars.iv90 = phi i64 [ %indvars.iv.next91, %for.cond28 ], [ 0, %do.body ]
  %arrayidx33 = getelementptr inbounds nuw [39 x i16], ptr %a, i64 0, i64 %indvars.iv90
  %15 = load i16, ptr %arrayidx33, align 2, !tbaa !5
  %arrayidx36 = getelementptr inbounds nuw [39 x i16], ptr %b, i64 0, i64 %indvars.iv90
  %16 = load i16, ptr %arrayidx36, align 2, !tbaa !5
  %cmp38.not = icmp eq i16 %15, %16
  br i1 %cmp38.not, label %for.cond28, label %cleanup

cleanup:                                          ; preds = %for.cond28, %for.body31
  %retval.0 = phi i32 [ 1, %for.body31 ], [ 0, %for.cond28 ]
  call void @llvm.lifetime.end.p0(i64 78, ptr nonnull %b) #4
  call void @llvm.lifetime.end.p0(i64 78, ptr nonnull %a) #4
  ret i32 %retval.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @show(...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
