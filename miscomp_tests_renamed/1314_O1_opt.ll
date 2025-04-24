; 123456059977195217785184942201705423747
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/123456059977195217785184942201705423747_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/123456059977195217785184942201705423747.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"Loop done\0A\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local range(i32 0, 112) i32 @foo(i8 signext %x) local_unnamed_addr #0 {
entry:
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  switch i32 %call, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
    i32 3, label %sw.bb3
    i32 4, label %sw.bb4
    i32 5, label %sw.bb5
    i32 6, label %sw.bb6
    i32 7, label %sw.bb7
    i32 8, label %sw.bb8
    i32 9, label %sw.bb9
    i32 10, label %sw.bb6
    i32 11, label %sw.bb11
    i32 12, label %sw.bb12
    i32 13, label %sw.bb13
    i32 14, label %sw.bb5
    i32 15, label %sw.bb15
    i32 16, label %sw.bb6
    i32 17, label %sw.bb1
    i32 18, label %sw.bb2
    i32 19, label %sw.bb3
    i32 20, label %sw.bb4
    i32 21, label %sw.bb21
    i32 22, label %sw.bb6
    i32 23, label %sw.bb7
    i32 24, label %sw.bb8
    i32 25, label %sw.bb25
    i32 26, label %sw.bb6
    i32 27, label %sw.bb27
    i32 28, label %sw.bb28
    i32 29, label %sw.bb13
    i32 30, label %sw.bb5
    i32 31, label %sw.bb15
    i32 32, label %sw.bb6
    i32 98, label %sw.bb33
    i32 -62, label %sw.bb3
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

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %call = tail call i32 @foo(i8 signext poison)
  %cmp.not = icmp eq i32 %call, 18
  br i1 %cmp.not, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call i32 @foo(i8 signext poison)
  %cmp2.not = icmp eq i32 %call1, 0
  br i1 %cmp2.not, label %lor.lhs.false3, label %if.then

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %call4 = tail call i32 @foo(i8 signext poison)
  %cmp5.not = icmp eq i32 %call4, 0
  br i1 %cmp5.not, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false3, %lor.lhs.false, %entry
  tail call void @abort() #3
  unreachable

if.end:                                           ; preds = %lor.lhs.false3
  %call6 = tail call i32 @foo(i8 signext poison)
  %cmp7.not = icmp eq i32 %call6, 19
  br i1 %cmp7.not, label %lor.lhs.false8, label %if.then14

lor.lhs.false8:                                   ; preds = %if.end
  %call9 = tail call i32 @foo(i8 signext poison)
  %cmp10.not = icmp eq i32 %call9, 0
  br i1 %cmp10.not, label %lor.lhs.false11, label %if.then14

lor.lhs.false11:                                  ; preds = %lor.lhs.false8
  %call12 = tail call i32 @foo(i8 signext poison)
  %cmp13.not = icmp eq i32 %call12, 0
  br i1 %cmp13.not, label %if.end15, label %if.then14

if.then14:                                        ; preds = %lor.lhs.false11, %lor.lhs.false8, %if.end
  tail call void @abort() #3
  unreachable

if.end15:                                         ; preds = %lor.lhs.false11
  %call16 = tail call i32 @foo(i8 signext poison)
  %cmp17.not = icmp eq i32 %call16, 105
  br i1 %cmp17.not, label %lor.lhs.false18, label %if.then24

lor.lhs.false18:                                  ; preds = %if.end15
  %call19 = tail call i32 @foo(i8 signext poison)
  %cmp20.not = icmp eq i32 %call19, 102
  br i1 %cmp20.not, label %lor.lhs.false21, label %if.then24

lor.lhs.false21:                                  ; preds = %lor.lhs.false18
  %call22 = tail call i32 @foo(i8 signext poison)
  %cmp23.not = icmp eq i32 %call22, 111
  br i1 %cmp23.not, label %if.end25, label %if.then24

if.then24:                                        ; preds = %lor.lhs.false21, %lor.lhs.false18, %if.end15
  tail call void @abort() #3
  unreachable

if.end25:                                         ; preds = %lor.lhs.false21
  ret i32 0
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #2

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
