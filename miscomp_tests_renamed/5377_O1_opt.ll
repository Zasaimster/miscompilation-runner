; 195094921485012840097396408608947446905
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/195094921485012840097396408608947446905_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/195094921485012840097396408608947446905.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"Hello World\0A\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local range(i32 0, 8) i32 @main() local_unnamed_addr #0 {
entry:
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %conv = sext i32 %call to i64
  %0 = inttoptr i64 %conv to ptr
  %1 = load i8, ptr %0, align 1, !tbaa !5
  %cmp.not = icmp eq i8 %1, 97
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %2 = load i8, ptr %arrayidx3, align 1, !tbaa !5
  %cmp5.not = icmp eq i8 %2, 98
  br i1 %cmp5.not, label %if.end8, label %cleanup

if.end8:                                          ; preds = %if.end
  %arrayidx9 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %3 = load i8, ptr %arrayidx9, align 1, !tbaa !5
  %cmp11.not = icmp eq i8 %3, 99
  br i1 %cmp11.not, label %if.end14, label %cleanup

if.end14:                                         ; preds = %if.end8
  %arrayidx15 = getelementptr inbounds nuw i8, ptr %0, i64 3
  %4 = load i8, ptr %arrayidx15, align 1, !tbaa !5
  %cmp17.not = icmp eq i8 %4, 100
  br i1 %cmp17.not, label %if.end20, label %cleanup

if.end20:                                         ; preds = %if.end14
  %arrayidx21 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %5 = load i8, ptr %arrayidx21, align 1, !tbaa !5
  %cmp23.not = icmp eq i8 %5, 101
  br i1 %cmp23.not, label %if.end26, label %cleanup

if.end26:                                         ; preds = %if.end20
  %arrayidx27 = getelementptr inbounds nuw i8, ptr %0, i64 5
  %6 = load i8, ptr %arrayidx27, align 1, !tbaa !5
  %cmp29.not = icmp eq i8 %6, 102
  br i1 %cmp29.not, label %if.end32, label %cleanup

if.end32:                                         ; preds = %if.end26
  %arrayidx33 = getelementptr inbounds nuw i8, ptr %0, i64 6
  %7 = load i8, ptr %arrayidx33, align 1, !tbaa !5
  %cmp35.not = icmp eq i8 %7, 0
  %. = select i1 %cmp35.not, i32 0, i32 7
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %if.end26, %if.end20, %if.end14, %if.end8, %if.end, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ 2, %if.end ], [ 3, %if.end8 ], [ 4, %if.end14 ], [ 5, %if.end20 ], [ 6, %if.end26 ], [ %., %if.end32 ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #1

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
