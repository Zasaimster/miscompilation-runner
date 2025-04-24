; 160262882968155943004636466137509238812
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/160262882968155943004636466137509238812_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/160262882968155943004636466137509238812.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str.2 = private unnamed_addr constant [15 x i8] c"X is negative\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"X is positive\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"timeout=%ld\0A\00", align 1
@str = private unnamed_addr constant [6 x i8] c"begin\00", align 1
@str.6 = private unnamed_addr constant [4 x i8] c"end\00", align 1
@str.7 = private unnamed_addr constant [6 x i8] c"error\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %call.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2)
  %conv.i = sext i32 %call.i to i64
  br label %do.body.i

do.body.i:                                        ; preds = %if.then.i, %entry
  %timeout.0.i = phi i64 [ %conv.i, %entry ], [ %dec.i, %if.then.i ]
  %call1.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %while.cond.i, label %if.then.i

if.then.i:                                        ; preds = %do.body.i
  %call2.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i64 noundef %timeout.0.i)
  %dec.i = add i64 %timeout.0.i, -1
  %tobool4.not.i = icmp eq i64 %dec.i, 0
  br i1 %tobool4.not.i, label %do.body.i3, label %do.body.i, !llvm.loop !5

while.cond.i:                                     ; preds = %while.cond.i, %do.body.i
  %puts.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.7)
  br label %while.cond.i, !llvm.loop !8

do.body.i3:                                       ; preds = %do.body.i3, %if.then.i
  %timeout.0.i4 = phi i64 [ %dec.i6, %do.body.i3 ], [ 2, %if.then.i ]
  %call.i5 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i64 noundef %timeout.0.i4)
  %dec.i6 = add nsw i64 %timeout.0.i4, -1
  %tobool.not.i7 = icmp eq i64 %dec.i6, 0
  br i1 %tobool.not.i7, label %do.body.i8, label %do.body.i3, !llvm.loop !9

do.body.i8:                                       ; preds = %do.body.i8, %do.body.i3
  %timeout.0.i9 = phi i64 [ %dec.i11, %do.body.i8 ], [ 2, %do.body.i3 ]
  %call.i10 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i64 noundef %timeout.0.i9)
  %dec.i11 = add nsw i64 %timeout.0.i9, -1
  %tobool.not.i12 = icmp eq i64 %dec.i11, 0
  br i1 %tobool.not.i12, label %do.body.i13, label %do.body.i8, !llvm.loop !10

do.body.i13:                                      ; preds = %do.body.i13, %do.body.i8
  %timeout.0.i14 = phi i64 [ %dec.i16, %do.body.i13 ], [ 2, %do.body.i8 ]
  %call.i15 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i64 noundef %timeout.0.i14)
  %dec.i16 = add nsw i64 %timeout.0.i14, -1
  %tobool.not.i17 = icmp eq i64 %dec.i16, 0
  br i1 %tobool.not.i17, label %do.body.i18, label %do.body.i13, !llvm.loop !11

do.body.i18:                                      ; preds = %do.body.i18, %do.body.i13
  %timeout.0.i19 = phi i64 [ %dec.i21, %do.body.i18 ], [ 2, %do.body.i13 ]
  %call.i20 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i64 noundef %timeout.0.i19)
  %dec.i21 = add nsw i64 %timeout.0.i19, -1
  %tobool.not.i22 = icmp eq i64 %dec.i21, 0
  br i1 %tobool.not.i22, label %do.body.i23, label %do.body.i18, !llvm.loop !12

do.body.i23:                                      ; preds = %do.body.i23, %do.body.i18
  %timeout.0.i24 = phi i64 [ %dec.i26, %do.body.i23 ], [ 2, %do.body.i18 ]
  %call.i25 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i64 noundef %timeout.0.i24)
  %dec.i26 = add nsw i64 %timeout.0.i24, -1
  %tobool.not.i27 = icmp eq i64 %dec.i26, 0
  br i1 %tobool.not.i27, label %kb_wait_4.exit, label %do.body.i23, !llvm.loop !13

kb_wait_4.exit:                                   ; preds = %do.body.i23
  %puts2 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.6)
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #2

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }

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
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !6, !7}
!10 = distinct !{!10, !6, !7}
!11 = distinct !{!11, !6, !7}
!12 = distinct !{!12, !6, !7}
!13 = distinct !{!13, !6, !7}
