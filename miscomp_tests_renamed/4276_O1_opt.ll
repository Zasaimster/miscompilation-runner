; 175244388150454975865626815610298298654
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/175244388150454975865626815610298298654_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/175244388150454975865626815610298298654.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@b = dso_local global i32 0, align 4
@d = dso_local local_unnamed_addr global ptr @b, align 8
@c = dso_local local_unnamed_addr global i32 0, align 4
@h = dso_local local_unnamed_addr global i32 0, align 4
@g = dso_local local_unnamed_addr global i32 0, align 4
@f = dso_local local_unnamed_addr global i8 0, align 1
@e = dso_local local_unnamed_addr global i8 0, align 1
@a = dso_local local_unnamed_addr global i32 0, align 4
@i = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %0 = load i32, ptr @c, align 4, !tbaa !5
  %sext = shl i32 %0, 24
  %conv1 = ashr exact i32 %sext, 24
  %1 = load i32, ptr @h, align 4, !tbaa !5
  %shr = ashr i32 %conv1, %1
  store i32 %shr, ptr @g, align 4, !tbaa !5
  %cmp = icmp eq i32 %shr, 0
  br i1 %cmp, label %cond.end, label %cond.false

cond.false:                                       ; preds = %entry
  %rem = srem i32 -1, %shr
  %2 = trunc nsw i32 %rem to i8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry
  %cond = phi i8 [ %2, %cond.false ], [ -1, %entry ]
  store i8 %cond, ptr @f, align 1, !tbaa !9
  store i8 %cond, ptr @e, align 1, !tbaa !9
  %conv11 = zext i8 %cond to i32
  %3 = load ptr, ptr @d, align 8, !tbaa !10
  store i32 %conv11, ptr %3, align 4, !tbaa !5
  %4 = load i32, ptr @b, align 4, !tbaa !5
  %cmp12.not = icmp eq i32 %4, 255
  br i1 %cmp12.not, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end
  tail call void @abort() #2
  unreachable

if.end:                                           ; preds = %cond.end
  ret i32 0
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #1

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!7, !7, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"p1 int", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
