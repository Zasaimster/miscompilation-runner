; 138533441653906210840339245840971298694
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/138533441653906210840339245840971298694_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/138533441653906210840339245840971298694.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@v = dso_local local_unnamed_addr global i32 0, align 4
@s = dso_local local_unnamed_addr global i32 0, align 4
@str = private unnamed_addr constant [14 x i8] c"Hello, World!\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local void @bar(i32 noundef %a, i32 noundef %b) local_unnamed_addr #0 {
entry:
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %0 = load i32, ptr @s, align 4, !tbaa !5
  %xor = xor i32 %0, 1
  store i32 %xor, ptr @s, align 4, !tbaa !5
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @foo(i32 noundef %x) local_unnamed_addr #0 {
entry:
  %puts.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %0 = load i32, ptr @s, align 4, !tbaa !5
  %xor.i = xor i32 %0, 1
  store i32 %xor.i, ptr @s, align 4, !tbaa !5
  %puts.i26 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %1 = load i32, ptr @s, align 4, !tbaa !5
  %xor.i27 = xor i32 %1, 1
  store i32 %xor.i27, ptr @s, align 4, !tbaa !5
  ret i32 0
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  store i32 -10, ptr @v, align 4, !tbaa !5
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %puts.i.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %0 = load i32, ptr @s, align 4, !tbaa !5
  %xor.i.i = xor i32 %0, 1
  store i32 %xor.i.i, ptr @s, align 4, !tbaa !5
  %puts.i26.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %1 = load i32, ptr @s, align 4, !tbaa !5
  %xor.i27.i = xor i32 %1, 1
  store i32 %xor.i27.i, ptr @s, align 4, !tbaa !5
  %2 = load i32, ptr @v, align 4, !tbaa !5
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr @v, align 4, !tbaa !5
  %cmp = icmp slt i32 %2, 265
  br i1 %cmp, label %for.body, label %for.end, !llvm.loop !9

for.end:                                          ; preds = %for.body
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #1

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind }

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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
