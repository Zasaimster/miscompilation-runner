; 188080400897071464447957009771030476332
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/188080400897071464447957009771030476332.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/188080400897071464447957009771030476332.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s = type { i16, i64, i16 }

@.str = private unnamed_addr constant [11 x i8] c"Value: %d\0A\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local void @foo(ptr dead_on_unwind noalias writable writeonly sret(%struct.s) align 8 captures(none) initializes((0, 24)) %agg.result, ptr noundef readonly byval(%struct.s) align 8 captures(none) %s) local_unnamed_addr #0 {
entry:
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull byval(%struct.s) align 8 %s)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %agg.result, ptr noundef nonnull align 8 dereferenceable(24) %s, i64 24, i1 false), !tbaa.struct !5
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: cold nofree noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #3 {
entry:
  %.compoundliteral12 = alloca %struct.s, align 8
  %.compoundliteral.sroa.2.0..compoundliteral12.sroa_idx = getelementptr inbounds nuw i8, ptr %.compoundliteral12, i64 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %.compoundliteral12)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.compoundliteral.sroa.2.0..compoundliteral12.sroa_idx, i8 0, i64 6, i1 false)
  %.compoundliteral.sroa.5.0..compoundliteral12.sroa_idx = getelementptr inbounds nuw i8, ptr %.compoundliteral12, i64 18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.compoundliteral.sroa.5.0..compoundliteral12.sroa_idx, i8 0, i64 6, i1 false)
  store i16 1000, ptr %.compoundliteral12, align 8
  %.compoundliteral.sroa.3.0..compoundliteral12.sroa_idx = getelementptr inbounds nuw i8, ptr %.compoundliteral12, i64 8
  store i64 2000, ptr %.compoundliteral.sroa.3.0..compoundliteral12.sroa_idx, align 8
  %.compoundliteral.sroa.4.0..compoundliteral12.sroa_idx = getelementptr inbounds nuw i8, ptr %.compoundliteral12, i64 16
  store i16 3000, ptr %.compoundliteral.sroa.4.0..compoundliteral12.sroa_idx, align 8
  %call.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull byval(%struct.s) align 8 %.compoundliteral12), !noalias !12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %.compoundliteral12)
  tail call void @abort() #8
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #7

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { cold nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
!5 = !{i64 0, i64 2, !6, i64 8, i64 8, !10, i64 16, i64 2, !6}
!6 = !{!7, !7, i64 0}
!7 = !{!"short", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"long", !8, i64 0}
!12 = !{!13}
!13 = distinct !{!13, !14, !"foo: %agg.result"}
!14 = distinct !{!14, !"foo"}
