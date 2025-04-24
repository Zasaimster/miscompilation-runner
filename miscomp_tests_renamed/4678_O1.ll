; 182666121078538635444674504229588711366
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/182666121078538635444674504229588711366.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/182666121078538635444674504229588711366.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g0 = dso_local local_unnamed_addr global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"Hello, World!\0A\00", align 1
@g1 = dso_local local_unnamed_addr global i64 0, align 8
@a = dso_local local_unnamed_addr global i32 0, align 4
@b = dso_local local_unnamed_addr global i128 0, align 16
@d = dso_local local_unnamed_addr global i32 0, align 4
@c = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: nounwind uwtable
define dso_local void @store(i64 noundef %a0, i64 noundef %a1) local_unnamed_addr #0 {
entry:
  %call = tail call i32 (...) @doNothing() #4
  %conv = sext i32 %call to i64
  store i64 %conv, ptr @g0, align 8, !tbaa !5
  %call1 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %conv2 = sext i32 %call1 to i64
  store i64 %conv2, ptr @g1, align 8, !tbaa !5
  ret void
}

declare i32 @doNothing(...) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @foo() local_unnamed_addr #0 {
entry:
  %0 = load i32, ptr @a, align 4, !tbaa !9
  %conv = sext i32 %0 to i128
  %1 = load i128, ptr @b, align 16, !tbaa !11
  %add = add i128 %1, %conv
  store i128 %add, ptr @b, align 16, !tbaa !11
  %2 = load i32, ptr @d, align 4, !tbaa !9
  %cmp = icmp ne i32 %2, 84347
  %conv1 = zext i1 %cmp to i32
  store i32 %conv1, ptr @c, align 4, !tbaa !9
  %call.i = tail call i32 (...) @doNothing() #4
  %conv.i = sext i32 %call.i to i64
  store i64 %conv.i, ptr @g0, align 8, !tbaa !5
  %call1.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %conv2.i = sext i32 %call1.i to i64
  store i64 %conv2.i, ptr @g1, align 8, !tbaa !5
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %0 = load i32, ptr @a, align 4, !tbaa !9
  %conv.i = sext i32 %0 to i128
  %1 = load i128, ptr @b, align 16, !tbaa !11
  %add.i = add i128 %1, %conv.i
  store i128 %add.i, ptr @b, align 16, !tbaa !11
  %2 = load i32, ptr @d, align 4, !tbaa !9
  %cmp.i = icmp ne i32 %2, 84347
  %conv1.i = zext i1 %cmp.i to i32
  store i32 %conv1.i, ptr @c, align 4, !tbaa !9
  %call.i.i = tail call i32 (...) @doNothing() #4
  %conv.i.i = sext i32 %call.i.i to i64
  store i64 %conv.i.i, ptr @g0, align 8, !tbaa !5
  %call1.i.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %conv2.i.i = sext i32 %call1.i.i to i64
  store i64 %conv2.i.i, ptr @g1, align 8, !tbaa !5
  %3 = load i64, ptr @g0, align 8, !tbaa !5
  %cmp = icmp ne i64 %3, 0
  %cmp1 = icmp ne i32 %call1.i.i, 0
  %or.cond = or i1 %cmp1, %cmp
  br i1 %or.cond, label %if.then, label %if.end

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
!11 = !{!12, !12, i64 0}
!12 = !{!"__int128", !7, i64 0}
