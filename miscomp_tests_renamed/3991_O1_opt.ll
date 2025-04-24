; 169680347564326370349601639623734178554
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/169680347564326370349601639623734178554_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/169680347564326370349601639623734178554.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.U1 = type { i32 }

@d = dso_local global i32 0, align 4
@e = dso_local local_unnamed_addr global ptr @d, align 8
@u = dso_local global %union.U1 { i32 67305985 }, align 4
@c = dso_local local_unnamed_addr global i32 0, align 4
@b = dso_local global i32 0, align 4
@a = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %0 = load ptr, ptr @e, align 8, !tbaa !5
  store i32 0, ptr @c, align 4, !tbaa !10
  br label %for.body

for.body:                                         ; preds = %if.end, %entry
  %storemerge8 = phi i32 [ 0, %entry ], [ %inc, %if.end ]
  %cmp1 = icmp eq i32 %storemerge8, 1
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %1 = load volatile i32, ptr @b, align 4, !tbaa !10
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  store i32 513, ptr %0, align 4, !tbaa !10
  %2 = load i32, ptr @c, align 4, !tbaa !10
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr @c, align 4, !tbaa !10
  %cmp = icmp slt i32 %2, 1
  br i1 %cmp, label %for.body, label %for.end, !llvm.loop !12

for.end:                                          ; preds = %if.end
  %3 = load i32, ptr @d, align 4, !tbaa !10
  %bf.load2 = load volatile i16, ptr @u, align 4
  %bf.clear3 = and i16 %bf.load2, 32767
  %bf.cast4 = zext nneg i16 %bf.clear3 to i32
  %cmp5.not = icmp eq i32 %3, %bf.cast4
  br i1 %cmp5.not, label %if.end7, label %if.then6

if.then6:                                         ; preds = %for.end
  tail call void @abort() #2
  unreachable

if.end7:                                          ; preds = %for.end
  ret i32 0
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #1

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

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
!12 = distinct !{!12, !13, !14}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!"llvm.loop.unroll.disable"}
