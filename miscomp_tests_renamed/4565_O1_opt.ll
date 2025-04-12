; 136919527366043248386154144473876376537
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/136919527366043248386154144473876376537_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/136919527366043248386154144473876376537.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local local_unnamed_addr global i32 1, align 4
@b = dso_local local_unnamed_addr global i32 1, align 4
@c = dso_local local_unnamed_addr global i32 1, align 4
@v = dso_local local_unnamed_addr global i8 0, align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @foo(ptr noundef readnone captures(none) %s) local_unnamed_addr #0 {
entry:
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #1 {
entry:
  %d = alloca i32, align 4
  %e = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %d)
  store volatile i32 1, ptr %d, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %e)
  store volatile i32 1, ptr %e, align 4, !tbaa !5
  %0 = load i32, ptr @a, align 4, !tbaa !5
  %.fr = freeze i32 %0
  %cmp = icmp ne i32 %.fr, -1
  %e.0.e.0.e.0.e.0. = load volatile i32, ptr %e, align 4, !tbaa !5
  %tobool = icmp ne i32 %e.0.e.0.e.0.e.0., 0
  %1 = load i32, ptr @b, align 4
  %tobool1 = icmp ne i32 %1, 0
  %2 = select i1 %tobool, i1 %tobool1, i1 false
  %3 = load i32, ptr @c, align 4, !tbaa !5
  %cmp2 = icmp eq i32 %3, 1
  %d.0.d.0.d.0.d.0. = load volatile i32, ptr %d, align 4, !tbaa !5
  %cmp4 = icmp ne i32 %d.0.d.0.d.0.d.0., 0
  %4 = and i1 %cmp2, %cmp4
  %5 = and i1 %2, %4
  %mulbool = and i1 %cmp, %5
  br i1 %mulbool, label %if.end18, label %if.then17

if.then17:                                        ; preds = %entry
  tail call void @abort() #4
  unreachable

if.end18:                                         ; preds = %entry
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

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
