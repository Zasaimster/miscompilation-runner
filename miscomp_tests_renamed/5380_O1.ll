; 19515769556317035718719633632549886037
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/19515769556317035718719633632549886037.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/19515769556317035718719633632549886037.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.A = type { i32, i32, i32 }

@e = dso_local local_unnamed_addr global %struct.A zeroinitializer, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local { i64, i32 } @foo() local_unnamed_addr #0 {
entry:
  %h = alloca [0 x %struct.A], align 4
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %h) #3
  %arrayidx = getelementptr inbounds nuw i8, ptr %h, i64 348
  %retval.sroa.0.0.copyload = load i64, ptr %arrayidx, align 4
  %retval.sroa.2.0.arrayidx.sroa_idx = getelementptr inbounds nuw i8, ptr %h, i64 356
  %retval.sroa.2.0.copyload = load i32, ptr %retval.sroa.2.0.arrayidx.sroa_idx, align 4, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %h) #3
  %.fca.0.insert = insertvalue { i64, i32 } poison, i64 %retval.sroa.0.0.copyload, 0
  %.fca.1.insert = insertvalue { i64, i32 } %.fca.0.insert, i32 %retval.sroa.2.0.copyload, 1
  ret { i64, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @main() local_unnamed_addr #2 {
entry:
  %h.i = alloca [0 x %struct.A], align 4
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %h.i) #3
  %arrayidx.i = getelementptr inbounds nuw i8, ptr %h.i, i64 348
  %retval.sroa.0.0.copyload.i = load i64, ptr %arrayidx.i, align 4
  %retval.sroa.2.0.arrayidx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %h.i, i64 356
  %retval.sroa.2.0.copyload.i = load i32, ptr %retval.sroa.2.0.arrayidx.sroa_idx.i, align 4, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %h.i) #3
  store i64 %retval.sroa.0.0.copyload.i, ptr @e, align 8
  store i32 %retval.sroa.2.0.copyload.i, ptr getelementptr inbounds nuw (i8, ptr @e, i64 8), align 8, !tbaa !5
  %0 = load i32, ptr @e, align 8, !tbaa !9
  ret i32 %0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
!9 = !{!10, !6, i64 0}
!10 = !{!"A", !6, i64 0, !6, i64 4, !6, i64 8}
