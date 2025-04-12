; 144567931460341360352774412978745316313
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/144567931460341360352774412978745316313_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/144567931460341360352774412978745316313.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local local_unnamed_addr global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@b = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: nounwind uwtable
define dso_local range(i64 0, 4294967296) i64 @foo(i32 noundef %d) local_unnamed_addr #0 {
entry:
  %call = tail call i32 (...) @example9() #4
  %tobool.not = icmp eq i32 %call, 0
  %0 = load i64, ptr @a, align 8
  %not.neg = add i64 %0, 1
  %cond.neg = select i1 %tobool.not, i64 %not.neg, i64 0
  %sub = add i64 %cond.neg, %0
  store i64 %sub, ptr @a, align 8, !tbaa !5
  %call1 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i64 noundef %sub)
  %1 = load i32, ptr @b, align 4, !tbaa !9
  %add = add i32 %1, %call1
  %conv = zext i32 %add to i64
  ret i64 %conv
}

declare i32 @example9(...) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %call.i = tail call i32 (...) @example9() #4
  %tobool.not.i = icmp eq i32 %call.i, 0
  %0 = load i64, ptr @a, align 8
  %not.neg.i = add i64 %0, 1
  %cond.neg.i = select i1 %tobool.not.i, i64 %not.neg.i, i64 0
  %sub.i = add i64 %cond.neg.i, %0
  store i64 %sub.i, ptr @a, align 8, !tbaa !5
  %call1.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i64 noundef %sub.i)
  %1 = load i32, ptr @b, align 4, !tbaa !9
  %add.i = sub i32 0, %call1.i
  %cmp.not = icmp eq i32 %1, %add.i
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @abort() #5
  unreachable

if.end:                                           ; preds = %entry
  ret i32 0
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!5 = !{!6, !6, i64 0}
!6 = !{!"long long", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !7, i64 0}
