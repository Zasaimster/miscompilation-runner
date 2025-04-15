; 126433890373046432717821917757091144491
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/126433890373046432717821917757091144491.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/126433890373046432717821917757091144491.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g = dso_local local_unnamed_addr global i32 0, align 4
@d = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local signext i16 @fn2(i32 noundef %p1, i32 noundef %p2) local_unnamed_addr #0 {
entry:
  %cmp = icmp slt i32 %p2, 10
  %tobool.not = icmp ugt i32 %p2, 2
  %or.cond = and i1 %cmp, %tobool.not
  %shl = select i1 %or.cond, i32 %p2, i32 0
  %cond = shl i32 %p1, %shl
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

lbl_2582:                                         ; preds = %entry.split, %lbl_2582
  br label %lbl_2582

for.cond.cleanup:                                 ; preds = %entry
  %tobool.not.i = icmp ult i32 %0, 3
  %cmp.i = icmp sgt i32 %0, 9
  %or.cond.i.not = or i1 %cmp.i, %tobool.not.i
  br i1 %or.cond.i.not, label %if.end14, label %if.then13

if.then13:                                        ; preds = %entry.split, %for.cond.cleanup
  tail call void @abort() #3
  unreachable

if.end14:                                         ; preds = %for.cond.cleanup
  ret i32 0
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
