; 17151359173231021503744325339692162004
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/17151359173231021503744325339692162004_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/17151359173231021503744325339692162004.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local local_unnamed_addr global i32 10, align 4
@b = dso_local local_unnamed_addr global i32 0, align 4
@c = dso_local local_unnamed_addr global i32 1, align 4
@v = dso_local global i8 0, align 1
@.str = private unnamed_addr constant [3 x i8] c"AB\00", align 1

; Function Attrs: nofree norecurse nounwind memory(readwrite, argmem: read) uwtable
define dso_local void @foo(ptr noundef readonly captures(none) %s) local_unnamed_addr #0 {
entry:
  %0 = load i8, ptr %s, align 1, !tbaa !5
  %tobool.not2 = icmp eq i8 %0, 0
  br i1 %tobool.not2, label %while.end, label %while.body

while.body:                                       ; preds = %while.body, %entry
  %s.addr.03 = phi ptr [ %incdec.ptr, %while.body ], [ %s, %entry ]
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %s.addr.03, i64 1
  %1 = load i8, ptr %incdec.ptr, align 1, !tbaa !5
  store volatile i8 %1, ptr @v, align 1, !tbaa !5
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %while.end, label %while.body, !llvm.loop !8

while.end:                                        ; preds = %while.body, %entry
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #1 {
entry:
  %d = alloca i32, align 4
  %e = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %d)
  store volatile i32 1, ptr %d, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %e)
  store volatile i32 1, ptr %e, align 4, !tbaa !11
  %0 = load i32, ptr @a, align 4, !tbaa !11
  %.fr = freeze i32 %0
  %cmp = icmp ne i32 %.fr, -1
  %e.0.e.0.e.0.e.0. = load volatile i32, ptr %e, align 4, !tbaa !11
  %tobool = icmp ne i32 %e.0.e.0.e.0.e.0., 0
  %1 = load i32, ptr @b, align 4
  %tobool1 = icmp ne i32 %1, 0
  %2 = select i1 %tobool, i1 %tobool1, i1 false
  %3 = load i32, ptr @c, align 4, !tbaa !11
  %cmp2 = icmp eq i32 %3, 1
  %d.0.d.0.d.0.d.0. = load volatile i32, ptr %d, align 4, !tbaa !11
  %cmp4 = icmp ne i32 %d.0.d.0.d.0.d.0., 0
  %4 = and i1 %cmp2, %cmp4
  %5 = and i1 %2, %4
  %mulbool = and i1 %cmp, %5
  br i1 %cmp, label %while.body.i, label %if.end

while.body.i:                                     ; preds = %while.body.i, %entry
  %s.addr.03.i.idx = phi i64 [ %s.addr.03.i.add, %while.body.i ], [ 0, %entry ]
  %s.addr.03.i.add = add nuw nsw i64 %s.addr.03.i.idx, 1
  %incdec.ptr.i.ptr = getelementptr inbounds nuw i8, ptr @.str, i64 %s.addr.03.i.add
  %6 = load i8, ptr %incdec.ptr.i.ptr, align 1, !tbaa !5
  store volatile i8 %6, ptr @v, align 1, !tbaa !5
  %exitcond = icmp eq i64 %s.addr.03.i.add, 2
  br i1 %exitcond, label %if.end, label %while.body.i, !llvm.loop !8

if.end:                                           ; preds = %while.body.i, %entry
  br i1 %mulbool, label %if.end18, label %if.then17

if.then17:                                        ; preds = %if.end
  tail call void @abort() #4
  unreachable

if.end18:                                         ; preds = %if.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %e)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %d)
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #2

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #2

attributes #0 = { nofree norecurse nounwind memory(readwrite, argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = distinct !{!8, !9, !10}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = !{!12, !12, i64 0}
!12 = !{!"int", !6, i64 0}
