; 154098975464633836275858847643679597140
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/154098975464633836275858847643679597140_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/154098975464633836275858847643679597140.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local local_unnamed_addr global i32 0, align 4
@d = dso_local local_unnamed_addr global i32 1, align 4
@f = dso_local local_unnamed_addr global i32 1, align 4
@str = private unnamed_addr constant [12 x i8] c"Hello World\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @fn1() local_unnamed_addr #0 {
entry:
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  ret i32 undef
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @fn2(i32 noundef %p1, i32 noundef %p2) local_unnamed_addr #1 {
entry:
  %cmp = icmp slt i32 %p2, 2
  %shr = zext i1 %cmp to i32
  %cond = ashr i32 %p1, %shr
  ret i32 %cond
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @fn3(i32 noundef %p1) local_unnamed_addr #2 {
entry:
  %0 = load i32, ptr @d, align 4, !tbaa !5
  %xor = xor i32 %0, %p1
  ret i32 %xor
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @fn4(i32 noundef %p1, i32 noundef %p2) local_unnamed_addr #0 {
entry:
  %0 = load i32, ptr @d, align 4, !tbaa !5
  %tobool.not = icmp eq i32 %0, 0
  %puts.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %cmp.i = icmp slt i32 %p1, 2
  %cmp = and i1 %cmp.i, %tobool.not
  %conv = zext i1 %cmp to i32
  %1 = load i32, ptr @d, align 4, !tbaa !5
  %xor.i = xor i32 %1, %conv
  ret i32 %xor.i
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %0 = load i32, ptr @d, align 4, !tbaa !5
  %tobool.not.i = icmp eq i32 %0, 0
  %puts.i.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %conv.i = zext i1 %tobool.not.i to i32
  %1 = load i32, ptr @d, align 4, !tbaa !5
  %xor.i.i = xor i32 %1, %conv.i
  %cmp.not = icmp eq i32 %xor.i.i, 1
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @abort() #5
  unreachable

if.end:                                           ; preds = %entry
  ret i32 0
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #4

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { noreturn nounwind }

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
