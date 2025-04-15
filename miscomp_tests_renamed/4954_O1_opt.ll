; 192207205496864517893960488552015781924
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/192207205496864517893960488552015781924_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/192207205496864517893960488552015781924.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@expect = dso_local global [0 x i64] zeroinitializer, align 8
@stack_base = dso_local local_unnamed_addr global ptr null, align 8
@markstack_ptr = dso_local local_unnamed_addr global ptr null, align 8
@list = dso_local global [5 x i64] zeroinitializer, align 16
@indices = dso_local global [10 x i32] zeroinitializer, align 16

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @doit() local_unnamed_addr #0 {
entry:
  %0 = load ptr, ptr @markstack_ptr, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 -4
  %1 = load i32, ptr %arrayidx, align 4, !tbaa !10
  %tobool.not11 = icmp eq i32 %1, 6
  br i1 %tobool.not11, label %while.end, label %while.body.preheader

while.body.preheader:                             ; preds = %entry
  %dec10 = sub i32 6, %1
  %2 = load ptr, ptr @stack_base, align 8, !tbaa !12
  %add.ptr = getelementptr inbounds nuw i8, ptr %2, i64 40
  %arrayidx1 = getelementptr inbounds i8, ptr %0, i64 -8
  %3 = load i32, ptr %arrayidx1, align 4, !tbaa !10
  %reass.sub = sub i32 %3, %1
  %sub2 = add i32 %reass.sub, 2
  %idx.ext = sext i32 %sub2 to i64
  %add.ptr6 = getelementptr inbounds i64, ptr %add.ptr, i64 %idx.ext
  br label %while.body

while.body:                                       ; preds = %while.body, %while.body.preheader
  %dec14 = phi i32 [ %dec, %while.body ], [ %dec10, %while.body.preheader ]
  %src.013 = phi ptr [ %incdec.ptr, %while.body ], [ %add.ptr, %while.body.preheader ]
  %dst.012 = phi ptr [ %incdec.ptr7, %while.body ], [ %add.ptr6, %while.body.preheader ]
  %incdec.ptr = getelementptr inbounds i8, ptr %src.013, i64 -8
  %4 = load i64, ptr %src.013, align 8, !tbaa !14
  %incdec.ptr7 = getelementptr inbounds i8, ptr %dst.012, i64 -8
  store i64 %4, ptr %dst.012, align 8, !tbaa !14
  %dec = add nsw i32 %dec14, -1
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.end, label %while.body, !llvm.loop !16

while.end:                                        ; preds = %while.body, %entry
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #1 {
entry:
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds nuw [5 x i64], ptr @list, i64 0, i64 %indvars.iv
  store i64 %indvars.iv, ptr %arrayidx, align 8, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 10
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !19

for.end:                                          ; preds = %for.body
  store ptr getelementptr inbounds nuw (i8, ptr @indices, i64 36), ptr @markstack_ptr, align 8, !tbaa !5
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @indices, i64 32), align 16, !tbaa !10
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @indices, i64 28), align 4, !tbaa !10
  store ptr getelementptr inbounds nuw (i8, ptr @list, i64 16), ptr @stack_base, align 8, !tbaa !12
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @list, i64 40), ptr noundef nonnull align 16 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @list, i64 32), i64 32, i1 false), !tbaa !14
  %bcmp = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(40) @expect, ptr noundef nonnull dereferenceable(40) @list, i64 40)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %for.end
  tail call void @abort() #5
  unreachable

if.end:                                           ; preds = %for.end
  ret i32 0
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #2

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #4

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind willreturn memory(argmem: read) }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"p1 int", !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !8, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"p1 long long", !7, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"long long", !8, i64 0}
!16 = distinct !{!16, !17, !18}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!"llvm.loop.unroll.disable"}
!19 = distinct !{!19, !17, !18}
