; 154244467525678797279292068574247056107
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/154244467525678797279292068574247056107_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/154244467525678797279292068574247056107.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { i32, i16, i16, [8 x i8], ptr }

@glob_int_arr = dso_local global [100 x i32] zeroinitializer, align 16
@glob_ptr_int = dso_local local_unnamed_addr global ptr @glob_int_arr, align 8
@glob_int = dso_local local_unnamed_addr global i32 4, align 4
@str = dso_local global %struct.S zeroinitializer, align 8
@ptr_str = dso_local local_unnamed_addr global ptr @str, align 8
@stat_int_arr = internal global [100 x i32] zeroinitializer, align 16
@stat_int = internal global i32 0, align 4
@simple_static_local.gx = internal global [100 x i32] zeroinitializer, align 16
@simple_static_local.ix = internal global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none) uwtable
define dso_local void @simple_global() local_unnamed_addr #0 {
entry:
  tail call void @llvm.prefetch.p0(ptr nonnull @glob_int_arr, i32 0, i32 0, i32 1)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg, i32 immarg, i32 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none) uwtable
define dso_local void @simple_file() local_unnamed_addr #0 {
entry:
  tail call void @llvm.prefetch.p0(ptr nonnull @stat_int_arr, i32 0, i32 0, i32 1)
  tail call void @llvm.prefetch.p0(ptr nonnull @stat_int_arr, i32 0, i32 0, i32 1)
  tail call void @llvm.prefetch.p0(ptr nonnull @stat_int, i32 0, i32 0, i32 1)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none) uwtable
define dso_local void @simple_static_local() local_unnamed_addr #0 {
entry:
  tail call void @llvm.prefetch.p0(ptr nonnull @simple_static_local.gx, i32 0, i32 0, i32 1)
  tail call void @llvm.prefetch.p0(ptr nonnull @simple_static_local.gx, i32 0, i32 0, i32 1)
  tail call void @llvm.prefetch.p0(ptr nonnull @simple_static_local.ix, i32 0, i32 0, i32 1)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(inaccessiblemem: readwrite) uwtable
define dso_local void @simple_local() local_unnamed_addr #2 {
entry:
  %gx = alloca [100 x i32], align 16
  %ix = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %gx) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ix) #8
  call void @llvm.prefetch.p0(ptr nonnull %gx, i32 0, i32 0, i32 1)
  call void @llvm.prefetch.p0(ptr nonnull %gx, i32 0, i32 0, i32 1)
  call void @llvm.prefetch.p0(ptr nonnull %ix, i32 0, i32 0, i32 1)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ix) #8
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %gx) #8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @simple_arg(ptr noundef readonly captures(none) %g, ptr noundef readonly captures(none) %h, i32 noundef %i) local_unnamed_addr #4 {
entry:
  %i.addr = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4, !tbaa !5
  tail call void @llvm.prefetch.p0(ptr %g, i32 0, i32 0, i32 1)
  tail call void @llvm.prefetch.p0(ptr %h, i32 0, i32 0, i32 1)
  call void @llvm.prefetch.p0(ptr nonnull %i.addr, i32 0, i32 0, i32 1)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn uwtable
define dso_local void @expr_global() local_unnamed_addr #5 {
entry:
  tail call void @llvm.prefetch.p0(ptr nonnull @str, i32 0, i32 0, i32 1)
  %0 = load ptr, ptr @ptr_str, align 8, !tbaa !9
  tail call void @llvm.prefetch.p0(ptr %0, i32 0, i32 0, i32 1)
  tail call void @llvm.prefetch.p0(ptr nonnull getelementptr inbounds nuw (i8, ptr @str, i64 4), i32 0, i32 0, i32 1)
  %b = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void @llvm.prefetch.p0(ptr nonnull %b, i32 0, i32 0, i32 1)
  tail call void @llvm.prefetch.p0(ptr nonnull getelementptr inbounds nuw (i8, ptr @str, i64 8), i32 0, i32 0, i32 1)
  %d = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.prefetch.p0(ptr nonnull %d, i32 0, i32 0, i32 1)
  %1 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @str, i64 16), align 8, !tbaa !12
  tail call void @llvm.prefetch.p0(ptr %1, i32 0, i32 0, i32 1)
  %next = getelementptr inbounds nuw i8, ptr %0, i64 16
  %2 = load ptr, ptr %next, align 8, !tbaa !12
  tail call void @llvm.prefetch.p0(ptr %2, i32 0, i32 0, i32 1)
  %d1 = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.prefetch.p0(ptr nonnull %d1, i32 0, i32 0, i32 1)
  %d3 = getelementptr inbounds nuw i8, ptr %2, i64 8
  tail call void @llvm.prefetch.p0(ptr nonnull %d3, i32 0, i32 0, i32 1)
  tail call void @llvm.prefetch.p0(ptr nonnull @glob_int_arr, i32 0, i32 0, i32 1)
  %3 = load ptr, ptr @glob_ptr_int, align 8, !tbaa !15
  tail call void @llvm.prefetch.p0(ptr %3, i32 0, i32 0, i32 1)
  tail call void @llvm.prefetch.p0(ptr nonnull getelementptr inbounds nuw (i8, ptr @glob_int_arr, i64 8), i32 0, i32 0, i32 1)
  %arrayidx = getelementptr inbounds nuw i8, ptr %3, i64 12
  tail call void @llvm.prefetch.p0(ptr nonnull %arrayidx, i32 0, i32 0, i32 1)
  tail call void @llvm.prefetch.p0(ptr nonnull getelementptr inbounds nuw (i8, ptr @glob_int_arr, i64 12), i32 0, i32 0, i32 1)
  %4 = load i32, ptr @glob_int, align 4, !tbaa !5
  %idx.ext = sext i32 %4 to i64
  %add.ptr = getelementptr inbounds i32, ptr @glob_int_arr, i64 %idx.ext
  tail call void @llvm.prefetch.p0(ptr nonnull %add.ptr, i32 0, i32 0, i32 1)
  %add.ptr5 = getelementptr inbounds nuw i8, ptr %3, i64 20
  tail call void @llvm.prefetch.p0(ptr nonnull %add.ptr5, i32 0, i32 0, i32 1)
  %add.ptr7 = getelementptr inbounds i32, ptr %3, i64 %idx.ext
  tail call void @llvm.prefetch.p0(ptr %add.ptr7, i32 0, i32 0, i32 1)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn uwtable
define dso_local void @expr_local() local_unnamed_addr #5 {
entry:
  %b = alloca [10 x i32], align 16
  %t = alloca %struct.S, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %b) #8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %t) #8
  call void @llvm.prefetch.p0(ptr nonnull %t, i32 0, i32 0, i32 1)
  call void @llvm.prefetch.p0(ptr nonnull %t, i32 0, i32 0, i32 1)
  %b1 = getelementptr inbounds nuw i8, ptr %t, i64 4
  call void @llvm.prefetch.p0(ptr nonnull %b1, i32 0, i32 0, i32 1)
  call void @llvm.prefetch.p0(ptr nonnull %b1, i32 0, i32 0, i32 1)
  %d = getelementptr inbounds nuw i8, ptr %t, i64 8
  call void @llvm.prefetch.p0(ptr nonnull %d, i32 0, i32 0, i32 1)
  call void @llvm.prefetch.p0(ptr nonnull %d, i32 0, i32 0, i32 1)
  %next = getelementptr inbounds nuw i8, ptr %t, i64 16
  %0 = load ptr, ptr %next, align 8, !tbaa !12
  tail call void @llvm.prefetch.p0(ptr %0, i32 0, i32 0, i32 1)
  tail call void @llvm.prefetch.p0(ptr %0, i32 0, i32 0, i32 1)
  %d6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.prefetch.p0(ptr nonnull %d6, i32 0, i32 0, i32 1)
  tail call void @llvm.prefetch.p0(ptr nonnull %d6, i32 0, i32 0, i32 1)
  call void @llvm.prefetch.p0(ptr nonnull %b, i32 0, i32 0, i32 1)
  call void @llvm.prefetch.p0(ptr nonnull %b, i32 0, i32 0, i32 1)
  %arrayidx = getelementptr inbounds nuw i8, ptr %b, i64 8
  call void @llvm.prefetch.p0(ptr nonnull %arrayidx, i32 0, i32 0, i32 1)
  %arrayidx11 = getelementptr inbounds nuw i8, ptr %b, i64 12
  call void @llvm.prefetch.p0(ptr nonnull %arrayidx11, i32 0, i32 0, i32 1)
  call void @llvm.prefetch.p0(ptr nonnull %arrayidx11, i32 0, i32 0, i32 1)
  %add.ptr14 = getelementptr inbounds nuw i8, ptr %b, i64 16
  call void @llvm.prefetch.p0(ptr nonnull %add.ptr14, i32 0, i32 0, i32 1)
  %add.ptr15 = getelementptr inbounds nuw i8, ptr %b, i64 20
  call void @llvm.prefetch.p0(ptr nonnull %add.ptr15, i32 0, i32 0, i32 1)
  call void @llvm.prefetch.p0(ptr nonnull %add.ptr14, i32 0, i32 0, i32 1)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %t) #8
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %b) #8
  ret void
}

; Function Attrs: nofree noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #6 {
entry:
  %i.addr.i = alloca i32, align 4
  %gx.i = alloca [100 x i32], align 16
  %ix.i = alloca i32, align 4
  tail call void @llvm.prefetch.p0(ptr nonnull @glob_int_arr, i32 0, i32 0, i32 1)
  tail call void @llvm.prefetch.p0(ptr nonnull @stat_int_arr, i32 0, i32 0, i32 1)
  tail call void @llvm.prefetch.p0(ptr nonnull @stat_int_arr, i32 0, i32 0, i32 1)
  tail call void @llvm.prefetch.p0(ptr nonnull @stat_int, i32 0, i32 0, i32 1)
  tail call void @llvm.prefetch.p0(ptr nonnull @simple_static_local.gx, i32 0, i32 0, i32 1)
  tail call void @llvm.prefetch.p0(ptr nonnull @simple_static_local.gx, i32 0, i32 0, i32 1)
  tail call void @llvm.prefetch.p0(ptr nonnull @simple_static_local.ix, i32 0, i32 0, i32 1)
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %gx.i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ix.i) #8
  call void @llvm.prefetch.p0(ptr nonnull %gx.i, i32 0, i32 0, i32 1)
  call void @llvm.prefetch.p0(ptr nonnull %gx.i, i32 0, i32 0, i32 1)
  call void @llvm.prefetch.p0(ptr nonnull %ix.i, i32 0, i32 0, i32 1)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ix.i) #8
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %gx.i) #8
  %0 = load ptr, ptr @glob_ptr_int, align 8, !tbaa !15
  %1 = load i32, ptr @glob_int, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i.addr.i)
  store i32 %1, ptr %i.addr.i, align 4, !tbaa !5
  tail call void @llvm.prefetch.p0(ptr nonnull @glob_int_arr, i32 0, i32 0, i32 1)
  tail call void @llvm.prefetch.p0(ptr readonly %0, i32 0, i32 0, i32 1)
  call void @llvm.prefetch.p0(ptr nonnull %i.addr.i, i32 0, i32 0, i32 1)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i.addr.i)
  store ptr @str, ptr getelementptr inbounds nuw (i8, ptr @str, i64 16), align 8, !tbaa !12
  tail call void @expr_global()
  tail call void @expr_local()
  tail call void @exit(i32 noundef 0) #9
  unreachable
}

; Function Attrs: nofree noreturn
declare void @exit(i32 noundef) local_unnamed_addr #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { noreturn nounwind }

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
!9 = !{!10, !10, i64 0}
!10 = !{!"p1 _ZTS1S", !11, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!13, !10, i64 16}
!13 = !{!"S", !6, i64 0, !14, i64 4, !14, i64 6, !7, i64 8, !10, i64 16}
!14 = !{!"short", !7, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"p1 int", !11, i64 0}
