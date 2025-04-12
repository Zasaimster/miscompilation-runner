; 196352129853432418680317877388728704215
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/196352129853432418680317877388728704215.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/196352129853432418680317877388728704215.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i32 0, 2) i32 @main() local_unnamed_addr #0 {
entry:
  %arr = alloca [1 x [0 x i8]], align 1
  call void @llvm.lifetime.start.p0(i64 0, ptr nonnull %arr) #2
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %arr, i64 3
  store i8 2, ptr %arrayidx1, align 1, !tbaa !5
  %arrayidx9 = getelementptr inbounds nuw i8, ptr %arr, i64 7
  %0 = load i8, ptr %arrayidx9, align 1, !tbaa !5
  %cmp11.not = icmp ne i8 %0, 2
  %retval.0 = zext i1 %cmp11.not to i32
  call void @llvm.lifetime.end.p0(i64 0, ptr nonnull %arr) #2
  ret i32 %retval.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind }

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
