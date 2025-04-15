; 174729664441142575506971337927679572231
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/174729664441142575506971337927679572231_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/174729664441142575506971337927679572231.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i32 0, 112) i32 @foo(i8 noundef signext %x) local_unnamed_addr #0 {
entry:
  switch i8 %x, label %sw.epilog [
    i8 62, label %sw.bb
    i8 63, label %sw.bb1
    i8 64, label %sw.bb2
    i8 65, label %sw.bb3
    i8 66, label %sw.bb4
    i8 67, label %sw.bb5
    i8 68, label %sw.bb6
    i8 69, label %sw.bb7
    i8 70, label %sw.bb8
    i8 71, label %sw.bb9
    i8 72, label %sw.bb6
    i8 73, label %sw.bb11
    i8 74, label %sw.bb12
    i8 75, label %sw.bb13
    i8 76, label %sw.bb5
    i8 77, label %sw.bb15
    i8 78, label %sw.bb6
    i8 79, label %sw.bb1
    i8 80, label %sw.bb2
    i8 81, label %sw.bb3
    i8 82, label %sw.bb4
    i8 83, label %sw.bb21
    i8 84, label %sw.bb6
    i8 85, label %sw.bb7
    i8 86, label %sw.bb8
    i8 87, label %sw.bb25
    i8 88, label %sw.bb6
    i8 89, label %sw.bb27
    i8 90, label %sw.bb28
    i8 91, label %sw.bb13
    i8 92, label %sw.bb5
    i8 93, label %sw.bb15
    i8 94, label %sw.bb6
    i8 0, label %sw.bb3
  ]

sw.bb:                                            ; preds = %entry
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry, %entry
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry, %entry
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry, %entry, %entry
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry, %entry
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry, %entry, %entry
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry, %entry, %entry, %entry, %entry, %entry
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry, %entry
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry, %entry
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry, %entry
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry, %entry
  br label %sw.epilog

sw.bb21:                                          ; preds = %entry
  br label %sw.epilog

sw.bb25:                                          ; preds = %entry
  br label %sw.epilog

sw.bb27:                                          ; preds = %entry
  br label %sw.epilog

sw.bb28:                                          ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb28, %sw.bb27, %sw.bb25, %sw.bb21, %sw.bb15, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb, %entry
  %y.0 = phi i32 [ 0, %entry ], [ 105, %sw.bb28 ], [ 102, %sw.bb27 ], [ 106, %sw.bb25 ], [ 107, %sw.bb21 ], [ 10, %sw.bb15 ], [ 111, %sw.bb13 ], [ 15, %sw.bb12 ], [ 12, %sw.bb11 ], [ 16, %sw.bb9 ], [ 28, %sw.bb8 ], [ 8, %sw.bb7 ], [ 31, %sw.bb6 ], [ 17, %sw.bb5 ], [ 5, %sw.bb4 ], [ 19, %sw.bb3 ], [ 2, %sw.bb2 ], [ 7, %sw.bb1 ], [ 1, %sw.bb ]
  ret i32 %y.0
}

; Function Attrs: cold nofree noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #1 {
entry:
  tail call void @abort() #3
  unreachable
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
