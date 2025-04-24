; 120972130559040376909154025505258431411
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/120972130559040376909154025505258431411_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/120972130559040376909154025505258431411.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@c = dso_local local_unnamed_addr global i32 5, align 4
@b = dso_local local_unnamed_addr global i16 0, align 2

; Function Attrs: nofree noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %0 = load i32, ptr @c, align 4
  %tobool.not = icmp eq i32 %0, 0
  br label %for.cond

for.cond:                                         ; preds = %for.cond, %entry
  %storemerge = phi i16 [ 0, %entry ], [ %inc, %for.cond ]
  %cmp = icmp samesign ugt i16 %storemerge, 3
  %or.cond = select i1 %cmp, i1 true, i1 %tobool.not
  %inc = add nuw nsw i16 %storemerge, 1
  br i1 %or.cond, label %for.end, label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  store i16 %storemerge, ptr @b, align 2, !tbaa !8
  %cmp5.not = icmp eq i16 %storemerge, 4
  br i1 %cmp5.not, label %if.end8, label %if.then7

if.then7:                                         ; preds = %for.end
  tail call void @abort() #3
  unreachable

if.end8:                                          ; preds = %for.end
  tail call void @exit(i32 noundef 0) #3
  unreachable
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #1

; Function Attrs: nofree noreturn
declare void @exit(i32 noundef) local_unnamed_addr #2

attributes #0 = { nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
!5 = distinct !{!5, !6, !7}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!"llvm.loop.unroll.disable"}
!8 = !{!9, !9, i64 0}
!9 = !{!"short", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
