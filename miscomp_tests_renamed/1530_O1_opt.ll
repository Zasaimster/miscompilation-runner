; 109879806929140450613545331207603628328
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/109879806929140450613545331207603628328_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/109879806929140450613545331207603628328.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g = dso_local local_unnamed_addr global i32 10, align 4
@d = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local signext i16 @fn2(i32 noundef %p1, i32 noundef %p2) local_unnamed_addr #0 {
entry:
  %shl = tail call i32 @llvm.smin.i32(i32 %p2, i32 0)
  %cond = shl nuw nsw i32 %p1, %shl
  %conv = trunc i32 %cond to i16
  ret i16 %conv
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #1 {
entry:
  %0 = load i32, ptr @g, align 4, !tbaa !5
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.split, label %for.cond.cleanup

entry.split:                                      ; preds = %entry
  %1 = load i32, ptr @d, align 4
  %tobool6.not = icmp eq i32 %1, 0
  br i1 %tobool6.not, label %if.then13, label %lbl_2582

lbl_2582:                                         ; preds = %lbl_2582, %entry.split
  br label %lbl_2582

for.cond.cleanup:                                 ; preds = %entry
  %shl.i = tail call i32 @llvm.smin.i32(i32 %0, i32 0)
  %2 = icmp eq i32 %shl.i, 0
  br i1 %2, label %if.end14, label %if.then13

if.then13:                                        ; preds = %for.cond.cleanup, %entry.split
  tail call void @abort() #4
  unreachable

if.end14:                                         ; preds = %for.cond.cleanup
  ret i32 0
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
