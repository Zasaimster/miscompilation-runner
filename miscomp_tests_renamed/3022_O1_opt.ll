; 114018134283714570791789334593302710899
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/114018134283714570791789334593302710899_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/114018134283714570791789334593302710899.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cx = dso_local local_unnamed_addr global i8 7, align 1
@sx = dso_local local_unnamed_addr global i16 14, align 2
@ix = dso_local local_unnamed_addr global i32 21, align 4
@lx = dso_local local_unnamed_addr global i64 28, align 8
@Lx = dso_local local_unnamed_addr global i64 35, align 8
@.str = private unnamed_addr constant [10 x i8] c"a is: %d\0A\00", align 1

; Function Attrs: nofree noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %0 = load i8, ptr @cx, align 1, !tbaa !5
  %1 = udiv i8 %0, 6
  %conv2 = zext nneg i8 %1 to i32
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %conv2)
  %.off = add i8 %0, -6
  %cmp.not = icmp ult i8 %.off, 6
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @abort() #4
  unreachable

if.end:                                           ; preds = %entry
  %2 = load i8, ptr @cx, align 1, !tbaa !5
  %3 = urem i8 %2, 6
  %cmp8.not = icmp eq i8 %3, 1
  br i1 %cmp8.not, label %if.end11, label %if.then10

if.then10:                                        ; preds = %if.end
  tail call void @abort() #4
  unreachable

if.end11:                                         ; preds = %if.end
  %4 = load i16, ptr @sx, align 2, !tbaa !8
  %.off64 = add i16 %4, -12
  %cmp16.not = icmp ult i16 %.off64, 6
  br i1 %cmp16.not, label %if.end19, label %if.then18

if.then18:                                        ; preds = %if.end11
  tail call void @abort() #4
  unreachable

if.end19:                                         ; preds = %if.end11
  %5 = urem i16 %4, 6
  %cmp24.not = icmp eq i16 %5, 2
  br i1 %cmp24.not, label %if.end27, label %if.then26

if.then26:                                        ; preds = %if.end19
  tail call void @abort() #4
  unreachable

if.end27:                                         ; preds = %if.end19
  %6 = load i32, ptr @ix, align 4, !tbaa !10
  %.off65 = add i32 %6, -18
  %cmp29.not = icmp ult i32 %.off65, 6
  br i1 %cmp29.not, label %if.end32, label %if.then31

if.then31:                                        ; preds = %if.end27
  tail call void @abort() #4
  unreachable

if.end32:                                         ; preds = %if.end27
  %rem33 = urem i32 %6, 6
  %cmp34.not = icmp eq i32 %rem33, 3
  br i1 %cmp34.not, label %if.end37, label %if.then36

if.then36:                                        ; preds = %if.end32
  tail call void @abort() #4
  unreachable

if.end37:                                         ; preds = %if.end32
  %7 = load i64, ptr @lx, align 8, !tbaa !12
  %.off66 = add i64 %7, -24
  %cmp39.not = icmp ult i64 %.off66, 6
  br i1 %cmp39.not, label %if.end42, label %if.then41

if.then41:                                        ; preds = %if.end37
  tail call void @abort() #4
  unreachable

if.end42:                                         ; preds = %if.end37
  %rem43 = urem i64 %7, 6
  %cmp44.not = icmp eq i64 %rem43, 4
  br i1 %cmp44.not, label %if.end47, label %if.then46

if.then46:                                        ; preds = %if.end42
  tail call void @abort() #4
  unreachable

if.end47:                                         ; preds = %if.end42
  %8 = load i64, ptr @Lx, align 8, !tbaa !14
  %.off67 = add i64 %8, -30
  %cmp49.not = icmp ult i64 %.off67, 6
  br i1 %cmp49.not, label %if.end52, label %if.then51

if.then51:                                        ; preds = %if.end47
  tail call void @abort() #4
  unreachable

if.end52:                                         ; preds = %if.end47
  %rem53 = urem i64 %8, 6
  %cmp54.not = icmp eq i64 %rem53, 5
  br i1 %cmp54.not, label %if.end57, label %if.then56

if.then56:                                        ; preds = %if.end52
  tail call void @abort() #4
  unreachable

if.end57:                                         ; preds = %if.end52
  tail call void @exit(i32 noundef 0) #4
  unreachable
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #1

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #2

; Function Attrs: nofree noreturn
declare void @exit(i32 noundef) local_unnamed_addr #3

attributes #0 = { nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }

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
!8 = !{!9, !9, i64 0}
!9 = !{!"short", !6, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !6, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"long", !6, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"long long", !6, i64 0}
