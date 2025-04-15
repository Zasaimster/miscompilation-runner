; 145704210454492126852620122262489271194
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/145704210454492126852620122262489271194.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/145704210454492126852620122262489271194.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g0 = dso_local local_unnamed_addr global i64 0, align 8
@g1 = dso_local local_unnamed_addr global i64 0, align 8
@a = dso_local local_unnamed_addr global i32 0, align 4
@b = dso_local local_unnamed_addr global i128 0, align 16
@d = dso_local local_unnamed_addr global i32 0, align 4
@c = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @store(i64 noundef %a0, i64 noundef %a1) local_unnamed_addr #0 {
entry:
  store i64 %a0, ptr @g0, align 8, !tbaa !5
  store i64 %a1, ptr @g1, align 8, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @calculateSquare(i32 noundef %x) local_unnamed_addr #1 {
entry:
  %mul = mul nsw i32 %x, %x
  ret i32 %mul
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @foo() local_unnamed_addr #2 {
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
  %conv3 = trunc i128 %add to i64
  %shr4 = lshr i128 %add, 64
  %conv5 = trunc nuw i128 %shr4 to i64
  store i64 %conv3, ptr @g0, align 8, !tbaa !5
  store i64 %conv5, ptr @g1, align 8, !tbaa !5
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #3 {
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
  %conv3.i = trunc i128 %add.i to i64
  %shr4.i = lshr i128 %add.i, 64
  %conv5.i = trunc nuw i128 %shr4.i to i64
  store i64 %conv3.i, ptr @g0, align 8, !tbaa !5
  store i64 %conv5.i, ptr @g1, align 8, !tbaa !5
  %cmp = icmp ne i64 %conv3.i, 0
  %cmp1 = icmp ne i64 %conv5.i, 0
  %or.cond = select i1 %cmp, i1 true, i1 %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @abort() #5
  unreachable

if.end:                                           ; preds = %entry
  ret i32 0
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
