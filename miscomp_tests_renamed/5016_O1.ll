; 18648690019797487892772824222586752716
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/18648690019797487892772824222586752716.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/18648690019797487892772824222586752716.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @foo(i8 noundef signext %x) local_unnamed_addr #0 {
entry:
  %conv = sext i8 %x to i32
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %conv)
  switch i32 %call, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
    i32 2, label %sw.bb3
    i32 3, label %sw.bb4
    i32 4, label %sw.bb5
    i32 5, label %sw.bb6
    i32 6, label %sw.bb7
    i32 7, label %sw.bb8
    i32 8, label %sw.bb9
    i32 9, label %sw.bb10
    i32 10, label %sw.bb7
    i32 11, label %sw.bb12
    i32 12, label %sw.bb13
    i32 13, label %sw.bb14
    i32 14, label %sw.bb6
    i32 15, label %sw.bb16
    i32 16, label %sw.bb7
    i32 17, label %sw.bb2
    i32 18, label %sw.bb3
    i32 19, label %sw.bb4
    i32 20, label %sw.bb5
    i32 21, label %sw.bb22
    i32 22, label %sw.bb7
    i32 23, label %sw.bb8
    i32 24, label %sw.bb9
    i32 25, label %sw.bb26
    i32 26, label %sw.bb7
    i32 27, label %sw.bb28
    i32 28, label %sw.bb29
    i32 29, label %sw.bb14
    i32 30, label %sw.bb6
    i32 31, label %sw.bb16
    i32 32, label %sw.bb7
    i32 98, label %sw.bb34
    i32 -62, label %sw.bb4
  ]

sw.bb:                                            ; preds = %entry
  %call1 = tail call i32 (...) @example3() #4
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry, %entry
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry, %entry
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry, %entry, %entry
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry, %entry
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry, %entry, %entry
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry, %entry, %entry, %entry, %entry, %entry
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry, %entry
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry, %entry
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry, %entry
  br label %sw.epilog

sw.bb16:                                          ; preds = %entry, %entry
  br label %sw.epilog

sw.bb22:                                          ; preds = %entry
  br label %sw.epilog

sw.bb26:                                          ; preds = %entry
  br label %sw.epilog

sw.bb28:                                          ; preds = %entry
  br label %sw.epilog

sw.bb29:                                          ; preds = %entry
  br label %sw.epilog

sw.bb34:                                          ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb34, %sw.bb29, %sw.bb28, %sw.bb26, %sw.bb22, %sw.bb16, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb
  %y.0 = phi i32 [ 0, %entry ], [ 18, %sw.bb34 ], [ 105, %sw.bb29 ], [ 102, %sw.bb28 ], [ 106, %sw.bb26 ], [ 107, %sw.bb22 ], [ 10, %sw.bb16 ], [ 111, %sw.bb14 ], [ 15, %sw.bb13 ], [ 12, %sw.bb12 ], [ 16, %sw.bb10 ], [ 28, %sw.bb9 ], [ 8, %sw.bb8 ], [ 31, %sw.bb7 ], [ 17, %sw.bb6 ], [ 5, %sw.bb5 ], [ 19, %sw.bb4 ], [ 2, %sw.bb3 ], [ 7, %sw.bb2 ], [ %call1, %sw.bb ]
  ret i32 %y.0
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #1

declare i32 @example3(...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %call = tail call i32 @foo(i8 noundef signext 98)
  %cmp.not = icmp eq i32 %call, 18
  br i1 %cmp.not, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call i32 @foo(i8 noundef signext 97)
  %cmp2.not = icmp eq i32 %call1, 0
  br i1 %cmp2.not, label %lor.lhs.false3, label %if.then

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %call4 = tail call i32 @foo(i8 noundef signext 99)
  %cmp5.not = icmp eq i32 %call4, 0
  br i1 %cmp5.not, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false3, %lor.lhs.false, %entry
  tail call void @abort() #5
  unreachable

if.end:                                           ; preds = %lor.lhs.false3
  %call6 = tail call i32 @foo(i8 noundef signext -62)
  %cmp7.not = icmp eq i32 %call6, 19
  br i1 %cmp7.not, label %lor.lhs.false8, label %if.then14

lor.lhs.false8:                                   ; preds = %if.end
  %call9 = tail call i32 @foo(i8 noundef signext -63)
  %cmp10.not = icmp eq i32 %call9, 0
  br i1 %cmp10.not, label %lor.lhs.false11, label %if.then14

lor.lhs.false11:                                  ; preds = %lor.lhs.false8
  %call12 = tail call i32 @foo(i8 noundef signext -61)
  %cmp13.not = icmp eq i32 %call12, 0
  br i1 %cmp13.not, label %if.end15, label %if.then14

if.then14:                                        ; preds = %lor.lhs.false11, %lor.lhs.false8, %if.end
  tail call void @abort() #5
  unreachable

if.end15:                                         ; preds = %lor.lhs.false11
  %call16 = tail call i32 @foo(i8 noundef signext 28)
  %cmp17.not = icmp eq i32 %call16, 105
  br i1 %cmp17.not, label %lor.lhs.false18, label %if.then24

lor.lhs.false18:                                  ; preds = %if.end15
  %call19 = tail call i32 @foo(i8 noundef signext 27)
  %cmp20.not = icmp eq i32 %call19, 102
  br i1 %cmp20.not, label %lor.lhs.false21, label %if.then24

lor.lhs.false21:                                  ; preds = %lor.lhs.false18
  %call22 = tail call i32 @foo(i8 noundef signext 29)
  %cmp23.not = icmp eq i32 %call22, 111
  br i1 %cmp23.not, label %if.end25, label %if.then24

if.then24:                                        ; preds = %lor.lhs.false21, %lor.lhs.false18, %if.end15
  tail call void @abort() #5
  unreachable

if.end25:                                         ; preds = %lor.lhs.false21
  ret i32 0
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
