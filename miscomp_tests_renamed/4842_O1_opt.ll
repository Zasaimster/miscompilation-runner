; 139195003535785667603891206909328449866
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/139195003535785667603891206909328449866_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/139195003535785667603891206909328449866.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32, i8, i32 }
%struct.inode = type { i64, ptr }
%struct.file = type { i64 }

@s = dso_local global %struct.super_block zeroinitializer, align 4
@i = dso_local local_unnamed_addr global %struct.inode zeroinitializer, align 8
@f = dso_local local_unnamed_addr global %struct.file zeroinitializer, align 8

; Function Attrs: cold nofree noreturn nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %argc, ptr noundef readnone captures(none) %argv) local_unnamed_addr #0 {
entry:
  store i32 512, ptr @s, align 4, !tbaa !5
  store i8 9, ptr getelementptr inbounds nuw (i8, ptr @s, i64 4), align 4, !tbaa !10
  store i64 2048, ptr @i, align 8, !tbaa !11
  store ptr @s, ptr getelementptr inbounds nuw (i8, ptr @i, i64 8), align 8, !tbaa !16
  store i64 0, ptr @f, align 8, !tbaa !17
  tail call fastcc void @do_isofs_readdir()
  tail call void @abort() #3
  unreachable
}

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @do_isofs_readdir() unnamed_addr #1 {
entry:
  %0 = load i64, ptr @f, align 8, !tbaa !17
  %1 = load i64, ptr @i, align 8, !tbaa !11
  %cmp.not = icmp slt i64 %0, %1
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  tail call void @abort() #3
  unreachable

cleanup:                                          ; preds = %entry
  ret void
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #2

attributes #0 = { cold nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"super_block", !7, i64 0, !8, i64 4, !7, i64 8}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!6, !8, i64 4}
!11 = !{!12, !13, i64 0}
!12 = !{!"inode", !13, i64 0, !14, i64 8}
!13 = !{!"long long", !8, i64 0}
!14 = !{!"p1 _ZTS11super_block", !15, i64 0}
!15 = !{!"any pointer", !8, i64 0}
!16 = !{!12, !14, i64 8}
!17 = !{!18, !13, i64 0}
!18 = !{!"file", !13, i64 0}
