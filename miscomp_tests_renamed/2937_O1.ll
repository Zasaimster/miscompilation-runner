; 134267218659706920211949488324628286134
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/134267218659706920211949488324628286134.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/134267218659706920211949488324628286134.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"Hello World\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 8) i32 @main() local_unnamed_addr #0 {
entry:
  %call = tail call i32 (...) @uselessFunction() #3
  %conv = sext i32 %call to i64
  %0 = inttoptr i64 %conv to ptr
  %call1 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %cmp.not = icmp eq i32 %call1, 97
  br i1 %cmp.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr inbounds nuw i8, ptr %0, i64 1
  %1 = load i8, ptr %arrayidx, align 1, !tbaa !5
  %cmp4.not = icmp eq i8 %1, 98
  br i1 %cmp4.not, label %if.end7, label %cleanup

if.end7:                                          ; preds = %if.end
  %arrayidx8 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %2 = load i8, ptr %arrayidx8, align 1, !tbaa !5
  %cmp10.not = icmp eq i8 %2, 99
  br i1 %cmp10.not, label %if.end13, label %cleanup

if.end13:                                         ; preds = %if.end7
  %arrayidx14 = getelementptr inbounds nuw i8, ptr %0, i64 3
  %3 = load i8, ptr %arrayidx14, align 1, !tbaa !5
  %cmp16.not = icmp eq i8 %3, 100
  br i1 %cmp16.not, label %if.end19, label %cleanup

if.end19:                                         ; preds = %if.end13
  %arrayidx20 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %4 = load i8, ptr %arrayidx20, align 1, !tbaa !5
  %cmp22.not = icmp eq i8 %4, 101
  br i1 %cmp22.not, label %if.end25, label %cleanup

if.end25:                                         ; preds = %if.end19
  %arrayidx26 = getelementptr inbounds nuw i8, ptr %0, i64 5
  %5 = load i8, ptr %arrayidx26, align 1, !tbaa !5
  %cmp28.not = icmp eq i8 %5, 102
  br i1 %cmp28.not, label %if.end31, label %cleanup

if.end31:                                         ; preds = %if.end25
  %arrayidx32 = getelementptr inbounds nuw i8, ptr %0, i64 6
  %6 = load i8, ptr %arrayidx32, align 1, !tbaa !5
  %cmp34.not = icmp eq i8 %6, 0
  %. = select i1 %cmp34.not, i32 0, i32 7
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %if.end25, %if.end19, %if.end13, %if.end7, %if.end, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ 2, %if.end ], [ 3, %if.end7 ], [ 4, %if.end13 ], [ 5, %if.end19 ], [ 6, %if.end25 ], [ %., %if.end31 ]
  ret i32 %retval.0
}

declare i32 @uselessFunction(...) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
