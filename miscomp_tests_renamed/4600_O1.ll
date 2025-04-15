; 193347769638493929236746690943122732618
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/193347769638493929236746690943122732618.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/193347769638493929236746690943122732618.c"
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
  br label %if.end15

for.cond:                                         ; preds = %if.end25
  %inc = add nuw nsw i32 %i.0110, 1
  %div.i101 = udiv i32 %inc, 3
  %div7 = udiv i32 %inc, 3
  %cmp8.not = icmp eq i32 %div.i101, %div7
  br i1 %cmp8.not, label %if.end15, label %if.then9, !llvm.loop !5

if.then9:                                         ; preds = %for.cond
  tail call void @abort() #3
  unreachable

if.end15:                                         ; preds = %entry, %for.cond
  %i.0110 = phi i32 [ 1, %entry ], [ %inc, %for.cond ]
  %div.i103 = udiv i32 %i.0110, 5
  %div17 = udiv i32 %i.0110, 5
  %cmp18.not = icmp eq i32 %div.i103, %div17
  br i1 %cmp18.not, label %if.end20, label %if.then19

if.then19:                                        ; preds = %if.end15
  tail call void @abort() #3
  unreachable

if.end20:                                         ; preds = %if.end15
  %div.i104 = udiv i32 %i.0110, 6
  %div22 = udiv i32 %i.0110, 6
  %cmp23.not = icmp eq i32 %div.i104, %div22
  br i1 %cmp23.not, label %if.end25, label %if.then24

if.then24:                                        ; preds = %if.end20
  tail call void @abort() #3
  unreachable

if.end25:                                         ; preds = %if.end20
  %div.i105 = udiv i32 %i.0110, 7
  %div27 = udiv i32 %i.0110, 7
  %cmp28.not = icmp eq i32 %div.i105, %div27
  br i1 %cmp28.not, label %for.cond, label %if.then29

if.then29:                                        ; preds = %if.end25
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
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.unroll.disable"}
