; 104419325259526287207838527861857175216
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/104419325259526287207838527861857175216_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/104419325259526287207838527861857175216.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i32 0, 112) i32 @foo(i8 noundef signext %x) local_unnamed_addr #0 {
entry:
  switch i8 %x, label %sw.epilog [
    i8 0, label %sw.bb
    i8 1, label %sw.bb1
    i8 2, label %sw.bb2
    i8 3, label %sw.bb3
    i8 4, label %sw.bb4
    i8 5, label %sw.bb5
    i8 6, label %sw.bb6
    i8 7, label %sw.bb7
    i8 8, label %sw.bb8
    i8 9, label %sw.bb9
    i8 10, label %sw.bb6
    i8 11, label %sw.bb11
    i8 12, label %sw.bb12
    i8 13, label %sw.bb13
    i8 14, label %sw.bb5
    i8 15, label %sw.bb15
    i8 16, label %sw.bb6
    i8 17, label %sw.bb1
    i8 18, label %sw.bb2
    i8 19, label %sw.bb3
    i8 20, label %sw.bb4
    i8 21, label %sw.bb21
    i8 22, label %sw.bb6
    i8 23, label %sw.bb7
    i8 24, label %sw.bb8
    i8 25, label %sw.bb25
    i8 26, label %sw.bb6
    i8 27, label %sw.bb27
    i8 28, label %sw.bb28
    i8 29, label %sw.bb13
    i8 30, label %sw.bb5
    i8 31, label %sw.bb15
    i8 32, label %sw.bb6
    i8 98, label %sw.bb33
    i8 -62, label %sw.bb3
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

sw.bb33:                                          ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb33, %sw.bb28, %sw.bb27, %sw.bb25, %sw.bb21, %sw.bb15, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb, %entry
  %y.0 = phi i32 [ 0, %entry ], [ 18, %sw.bb33 ], [ 105, %sw.bb28 ], [ 102, %sw.bb27 ], [ 106, %sw.bb25 ], [ 107, %sw.bb21 ], [ 10, %sw.bb15 ], [ 111, %sw.bb13 ], [ 15, %sw.bb12 ], [ 12, %sw.bb11 ], [ 16, %sw.bb9 ], [ 28, %sw.bb8 ], [ 8, %sw.bb7 ], [ 31, %sw.bb6 ], [ 17, %sw.bb5 ], [ 5, %sw.bb4 ], [ 19, %sw.bb3 ], [ 2, %sw.bb2 ], [ 7, %sw.bb1 ], [ 1, %sw.bb ]
  ret i32 %y.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @printHello() local_unnamed_addr #0 {
entry:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  ret i32 0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
