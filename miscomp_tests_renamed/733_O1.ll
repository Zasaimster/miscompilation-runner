; 178572535793390395087965455246267152391
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/178572535793390395087965455246267152391.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/178572535793390395087965455246267152391.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %s = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %s)
  store ptr null, ptr %s, align 8, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.cond, %entry
  %p.0 = phi ptr [ %s, %entry ], [ %0, %for.cond ]
  %0 = load ptr, ptr %p.0, align 8, !tbaa !5
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %for.end, label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  %1 = alloca [4 x i8], align 16
  store ptr null, ptr %1, align 16, !tbaa !13
  %b = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 1, ptr %b, align 8, !tbaa !16
  store ptr %1, ptr %p.0, align 8, !tbaa !5
  %s.0.s.0.s.0.s.0. = load ptr, ptr %s, align 8, !tbaa !5
  %tobool2.not = icmp eq ptr %s.0.s.0.s.0.s.0., null
  br i1 %tobool2.not, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  call void @abort() #3
  unreachable

if.end:                                           ; preds = %for.end
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %s)
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"p1 _ZTS1S", !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = !{!14, !6, i64 0}
!14 = !{!"S", !6, i64 0, !15, i64 8}
!15 = !{!"int", !8, i64 0}
!16 = !{!14, !15, i64 8}
