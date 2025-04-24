; 105821443704922725962497202772287172922
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/105821443704922725962497202772287172922_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/105821443704922725962497202772287172922.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local local_unnamed_addr global i32 2, align 4
@c = dso_local local_unnamed_addr global i64 1, align 8
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@a = dso_local local_unnamed_addr global i32 0, align 4
@e = dso_local local_unnamed_addr global i32 0, align 4
@b = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %0 = load i32, ptr @a, align 4, !tbaa !5
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %0)
  %1 = load i32, ptr @d, align 4, !tbaa !5
  store i32 %1, ptr @e, align 4, !tbaa !5
  %2 = load i32, ptr @a, align 4, !tbaa !5
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %L1

L1:                                               ; preds = %L1, %entry
  br label %L1

if.end:                                           ; preds = %entry
  %3 = load i64, ptr @c, align 8, !tbaa !9
  %not1.not = add i32 %call, -1
  %not2 = and i32 %1, %not1.not
  %sh_prom = zext nneg i32 %not2 to i64
  %shr = ashr i64 %3, %sh_prom
  %4 = load i32, ptr @b, align 4, !tbaa !5
  %conv3 = sext i32 %4 to i64
  %sext = shl i64 %shr, 32
  %conv4 = ashr exact i64 %sext, 32
  %tobool5.not = icmp eq i32 %1, 0
  %c.promoted = load i64, ptr @c, align 8, !tbaa !9
  br label %L2

L2:                                               ; preds = %L2, %if.end
  %mul9 = phi i64 [ %mul, %L2 ], [ %c.promoted, %if.end ]
  %rem = srem i64 %conv3, %mul9
  %mul = mul nsw i64 %rem, %conv4
  br i1 %tobool5.not, label %L2, label %if.end7

if.end7:                                          ; preds = %L2
  store i64 %mul, ptr @c, align 8, !tbaa !9
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #1

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!9 = !{!10, !10, i64 0}
!10 = !{!"long long", !7, i64 0}
