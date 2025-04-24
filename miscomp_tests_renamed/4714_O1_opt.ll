; 183169603382073675422009439001055196020
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/183169603382073675422009439001055196020_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/183169603382073675422009439001055196020.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S0 = type { i32, i32, i32, i16 }

@a = dso_local local_unnamed_addr global i16 1, align 2
@b = dso_local local_unnamed_addr global { i32, i32, i32, i16, [2 x i8] } { i32 1, i32 0, i32 0, i16 0, [2 x i8] zeroinitializer }, align 8
@c = dso_local local_unnamed_addr global %struct.S0 zeroinitializer, align 8
@d = dso_local local_unnamed_addr global %struct.S0 zeroinitializer, align 4
@e = dso_local local_unnamed_addr global %struct.S0 zeroinitializer, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local { i64, i64 } @fn1() local_unnamed_addr #0 {
entry:
  %retval.sroa.0.0.copyload = load i64, ptr @c, align 8
  %retval.sroa.2.0.copyload = load i64, ptr getelementptr inbounds nuw (i8, ptr @c, i64 8), align 8
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %retval.sroa.0.0.copyload, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %retval.sroa.2.0.copyload, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @fn2() local_unnamed_addr #2 {
entry:
  %retval.sroa.0.0.copyload.i = load i64, ptr @c, align 8
  %retval.sroa.2.0.copyload.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @c, i64 8), align 8
  store i64 %retval.sroa.0.0.copyload.i, ptr @b, align 8
  store i64 %retval.sroa.2.0.copyload.i, ptr getelementptr inbounds nuw (i8, ptr @b, i64 8), align 8
  store i16 0, ptr @a, align 2, !tbaa !5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) @d, ptr noundef nonnull align 4 dereferenceable(16) @e, i64 16, i1 false), !tbaa.struct !9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  %retval.sroa.0.0.copyload.i.i = load i64, ptr @c, align 8
  %retval.sroa.2.0.copyload.i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @c, i64 8), align 8
  store i64 %retval.sroa.0.0.copyload.i.i, ptr @b, align 8
  store i64 %retval.sroa.2.0.copyload.i.i, ptr getelementptr inbounds nuw (i8, ptr @b, i64 8), align 8
  store i16 0, ptr @a, align 2, !tbaa !5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) @d, ptr noundef nonnull align 4 dereferenceable(16) @e, i64 16, i1 false), !tbaa.struct !9
  ret i32 0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!9 = !{i64 0, i64 4, !10, i64 4, i64 4, !10, i64 8, i64 4, !10, i64 12, i64 2, !5}
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !7, i64 0}
