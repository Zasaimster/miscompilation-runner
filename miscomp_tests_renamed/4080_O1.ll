; 188049962966081388808567394043304062129
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/188049962966081388808567394043304062129.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/188049962966081388808567394043304062129.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.descriptor_dimension = type { i32, i32, i32 }

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @msum_i4(ptr noundef readonly captures(none) %retarray, ptr noundef readonly captures(none) %array, ptr noundef readonly captures(none) %pdim) local_unnamed_addr #0 {
entry:
  %count = alloca [7 x i32], align 16
  %extent = alloca [7 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %count)
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %extent) #4
  %0 = load i32, ptr %pdim, align 4, !tbaa !5
  %sub = add nsw i32 %0, -1
  %dim1 = getelementptr inbounds nuw i8, ptr %array, i64 12
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds [0 x %struct.descriptor_dimension], ptr %dim1, i64 0, i64 %idxprom
  %ubound = getelementptr inbounds nuw i8, ptr %arrayidx, i64 8
  %1 = load i32, ptr %ubound, align 4, !tbaa !9
  %add = add i32 %1, 1
  %lbound = getelementptr inbounds nuw i8, ptr %arrayidx, i64 4
  %2 = load i32, ptr %lbound, align 4, !tbaa !11
  %sub5 = sub i32 %add, %2
  %cmp50 = icmp sgt i32 %0, 1
  br i1 %cmp50, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %entry
  %3 = zext i32 %sub to i64
  %4 = shl nuw nsw i64 %3, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %count, i8 0, i64 %4, i1 false), !tbaa !5
  %wide.trip.count = zext i32 %sub to i64
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.body ]
  %arrayidx8 = getelementptr inbounds nuw [0 x %struct.descriptor_dimension], ptr %dim1, i64 0, i64 %indvars.iv
  %ubound9 = getelementptr inbounds nuw i8, ptr %arrayidx8, i64 8
  %5 = load i32, ptr %ubound9, align 4, !tbaa !9
  %add10 = add nsw i32 %5, 1
  %lbound14 = getelementptr inbounds nuw i8, ptr %arrayidx8, i64 4
  %6 = load i32, ptr %lbound14, align 4, !tbaa !11
  %sub15 = sub i32 %add10, %6
  %arrayidx17 = getelementptr inbounds nuw [7 x i32], ptr %extent, i64 0, i64 %indvars.iv
  store i32 %sub15, ptr %arrayidx17, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !12

for.end:                                          ; preds = %for.body, %entry
  %7 = load ptr, ptr %retarray, align 8, !tbaa !15
  %8 = load ptr, ptr %array, align 8, !tbaa !15
  %cmp2252 = icmp sgt i32 %sub5, 0
  %9 = load i32, ptr %extent, align 16, !tbaa !5
  %count.0.count.0.count.promoted = load i32, ptr %count, align 16, !tbaa !5
  br label %do.body

do.body:                                          ; preds = %for.end27, %for.end
  %10 = phi i32 [ %count.0.count.0.count.promoted, %for.end ], [ %inc29, %for.end27 ]
  %base.0 = phi ptr [ %8, %for.end ], [ %base.1.lcssa, %for.end27 ]
  %dest.0 = phi ptr [ %7, %for.end ], [ %add.ptr, %for.end27 ]
  br i1 %cmp2252, label %for.body23, label %for.end27

for.body23:                                       ; preds = %do.body, %for.body23
  %result.055 = phi i32 [ %add24, %for.body23 ], [ 0, %do.body ]
  %n.154 = phi i32 [ %inc26, %for.body23 ], [ 0, %do.body ]
  %base.153 = phi ptr [ %incdec.ptr, %for.body23 ], [ %base.0, %do.body ]
  %11 = load i32, ptr %base.153, align 4, !tbaa !5
  %add24 = add nsw i32 %11, %result.055
  %inc26 = add nuw nsw i32 %n.154, 1
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %base.153, i64 4
  %exitcond58.not = icmp eq i32 %inc26, %sub5
  br i1 %exitcond58.not, label %for.end27, label %for.body23, !llvm.loop !19

for.end27:                                        ; preds = %for.body23, %do.body
  %base.1.lcssa = phi ptr [ %base.0, %do.body ], [ %incdec.ptr, %for.body23 ]
  %result.0.lcssa = phi i32 [ 0, %do.body ], [ %add24, %for.body23 ]
  store i32 %result.0.lcssa, ptr %dest.0, align 4, !tbaa !5
  %inc29 = add nsw i32 %10, 1
  store i32 %inc29, ptr %count, align 16, !tbaa !5
  %add.ptr = getelementptr inbounds nuw i8, ptr %dest.0, i64 4
  %cmp32.not = icmp eq i32 %inc29, %9
  br i1 %cmp32.not, label %do.end, label %do.body, !llvm.loop !20

do.end:                                           ; preds = %for.end27
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %extent) #4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %count)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree norecurse nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !6, i64 8}
!10 = !{!"descriptor_dimension", !6, i64 0, !6, i64 4, !6, i64 8}
!11 = !{!10, !6, i64 4}
!12 = distinct !{!12, !13, !14}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!"llvm.loop.unroll.disable"}
!15 = !{!16, !17, i64 0}
!16 = !{!"", !17, i64 0, !6, i64 8, !7, i64 12}
!17 = !{!"p1 int", !18, i64 0}
!18 = !{!"any pointer", !7, i64 0}
!19 = distinct !{!19, !13, !14}
!20 = distinct !{!20, !13, !14}
