; 136921842392282477407609572193768085451
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/136921842392282477407609572193768085451.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/136921842392282477407609572193768085451.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @dd(i32 noundef %x, i32 noundef %d) local_unnamed_addr #0 {
entry:
  %div = sdiv i32 %x, %d
  ret i32 %div
}

; Function Attrs: nofree noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #1 {
entry:
  br label %if.end59

for.cond37:                                       ; preds = %if.end69
  %inc81 = add nuw nsw i32 %i.1130, 1
  %div.i121 = udiv i32 %inc81, 3
  %div51 = udiv i32 %inc81, 3
  %cmp52.not = icmp eq i32 %div.i121, %div51
  br i1 %cmp52.not, label %if.end59, label %if.then53, !llvm.loop !5

if.then53:                                        ; preds = %for.cond37
  tail call void @abort() #3
  unreachable

if.end59:                                         ; preds = %entry, %for.cond37
  %i.1130 = phi i32 [ 2147483644, %entry ], [ %inc81, %for.cond37 ]
  %div.i123 = udiv i32 %i.1130, 5
  %div61 = udiv i32 %i.1130, 5
  %cmp62.not = icmp eq i32 %div.i123, %div61
  br i1 %cmp62.not, label %if.end64, label %if.then63

if.then63:                                        ; preds = %if.end59
  tail call void @abort() #3
  unreachable

if.end64:                                         ; preds = %if.end59
  %div.i124 = udiv i32 %i.1130, 6
  %div66 = udiv i32 %i.1130, 6
  %cmp67.not = icmp eq i32 %div.i124, %div66
  br i1 %cmp67.not, label %if.end69, label %if.then68

if.then68:                                        ; preds = %if.end64
  tail call void @abort() #3
  unreachable

if.end69:                                         ; preds = %if.end64
  %div.i125 = udiv i32 %i.1130, 7
  %div71 = udiv i32 %i.1130, 7
  %cmp72.not = icmp eq i32 %div.i125, %div71
  br i1 %cmp72.not, label %for.cond37, label %if.then73

if.then73:                                        ; preds = %if.end69
  tail call void @abort() #3
  unreachable
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
