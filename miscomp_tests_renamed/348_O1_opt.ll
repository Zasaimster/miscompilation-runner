; 166429151764779486116754705199963025853
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/166429151764779486116754705199963025853_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/166429151764779486116754705199963025853.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.epic_private = type { ptr, [0 x i32] }
%struct.epic_rx_desc = type { i32 }

@check_rx_ring = internal unnamed_addr constant [5 x i32] [i32 12, i32 14, i32 16, i32 18, i32 10], align 16

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %ep = alloca %struct.epic_private, align 8
  %rx_ring = alloca [5 x %struct.epic_rx_desc], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ep) #4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %rx_ring) #4
  %rx_skbuff = getelementptr inbounds nuw i8, ptr %ep, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %rx_ring, i8 0, i64 20, i1 false), !tbaa !5
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %arrayidx2 = getelementptr inbounds nuw [0 x i32], ptr %rx_skbuff, i64 0, i64 %indvars.iv
  store i32 5, ptr %arrayidx2, align 4, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 5
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !11

for.end:                                          ; preds = %for.body
  store ptr %rx_ring, ptr %ep, align 8, !tbaa !14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %rx_skbuff, i8 0, i64 20, i1 false), !tbaa !10
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %for.end
  %indvars.iv.i = phi i64 [ 0, %for.end ], [ %indvars.iv.next.i, %for.body.i ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %arrayidx.i = getelementptr inbounds nuw %struct.epic_rx_desc, ptr %rx_ring, i64 %indvars.iv.i
  %indvars.iv.next.tr.i = trunc i64 %indvars.iv.next.i to i32
  %0 = shl i32 %indvars.iv.next.tr.i, 1
  %1 = add i32 %0, 10
  store i32 %1, ptr %arrayidx.i, align 4, !tbaa !5
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 5
  br i1 %exitcond.not.i, label %epic_init_ring.exit, label %for.body.i, !llvm.loop !18

epic_init_ring.exit:                              ; preds = %for.body.i
  %rx_skbuff.i = getelementptr inbounds nuw i8, ptr %ep, i64 8
  %arrayidx6.i = getelementptr inbounds nuw i8, ptr %rx_ring, i64 16
  store i32 10, ptr %arrayidx6.i, align 16, !tbaa !5
  br label %for.body6

for.cond4:                                        ; preds = %if.end
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1
  %exitcond36.not = icmp eq i64 %indvars.iv.next34, 5
  br i1 %exitcond36.not, label %for.end21, label %for.body6, !llvm.loop !19

for.body6:                                        ; preds = %for.cond4, %epic_init_ring.exit
  %indvars.iv33 = phi i64 [ 0, %epic_init_ring.exit ], [ %indvars.iv.next34, %for.cond4 ]
  %arrayidx8 = getelementptr inbounds nuw [5 x %struct.epic_rx_desc], ptr %rx_ring, i64 0, i64 %indvars.iv33
  %2 = load i32, ptr %arrayidx8, align 4, !tbaa !5
  %arrayidx11 = getelementptr inbounds nuw [5 x i32], ptr @check_rx_ring, i64 0, i64 %indvars.iv33
  %3 = load i32, ptr %arrayidx11, align 4, !tbaa !10
  %cmp12.not = icmp eq i32 %2, %3
  br i1 %cmp12.not, label %if.end, label %if.then

if.then:                                          ; preds = %for.body6
  call void @abort() #5
  unreachable

if.end:                                           ; preds = %for.body6
  %arrayidx15 = getelementptr inbounds nuw [0 x i32], ptr %rx_skbuff.i, i64 0, i64 %indvars.iv33
  %4 = load i32, ptr %arrayidx15, align 4, !tbaa !10
  %cmp16.not = icmp eq i32 %4, 0
  br i1 %cmp16.not, label %for.cond4, label %if.then17

if.then17:                                        ; preds = %if.end
  call void @abort() #5
  unreachable

for.end21:                                        ; preds = %for.cond4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %rx_ring) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ep) #4
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"epic_rx_desc", !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!7, !7, i64 0}
!11 = distinct !{!11, !12, !13}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = !{!15, !16, i64 0}
!15 = !{!"epic_private", !16, i64 0, !8, i64 8}
!16 = !{!"p1 _ZTS12epic_rx_desc", !17, i64 0}
!17 = !{!"any pointer", !8, i64 0}
!18 = distinct !{!18, !12, !13}
!19 = distinct !{!19, !12, !13}
