; 195091932196540899180040372870232360501
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/195091932196540899180040372870232360501.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/195091932196540899180040372870232360501.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local local_unnamed_addr global i32 0, align 4
@b = dso_local local_unnamed_addr global i32 0, align 4
@m = dso_local local_unnamed_addr global i32 0, align 4
@n = dso_local local_unnamed_addr global i32 0, align 4
@o = dso_local local_unnamed_addr global i32 0, align 4
@p = dso_local local_unnamed_addr global i32 0, align 4
@s = dso_local local_unnamed_addr global i32 0, align 4
@u = dso_local local_unnamed_addr global i32 0, align 4
@i = dso_local local_unnamed_addr global i32 0, align 4
@c = dso_local local_unnamed_addr global i8 0, align 1
@q = dso_local local_unnamed_addr global i8 0, align 1
@y = dso_local local_unnamed_addr global i8 0, align 1
@d = dso_local local_unnamed_addr global i16 0, align 2
@e = dso_local local_unnamed_addr global i8 0, align 1
@t = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: nounwind uwtable
define dso_local i32 @fn1(i32 noundef %p1) local_unnamed_addr #0 {
entry:
  %call = tail call i32 (...) @func2() #4
  ret i32 undef
}

declare i32 @func2(...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext i8 @fn2(i8 noundef zeroext %p1, i32 noundef %p2) local_unnamed_addr #2 {
entry:
  %cmp = icmp sgt i32 %p2, 1
  %conv = zext i8 %p1 to i32
  %shr = select i1 %cmp, i32 0, i32 %p2
  %cond = lshr i32 %conv, %shr
  %conv2 = trunc nuw i32 %cond to i8
  ret i8 %conv2
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %0 = load i32, ptr @p, align 4, !tbaa !5
  %cmp.i = icmp slt i32 %0, 31
  br i1 %cmp.i, label %for.body.i, label %fn3.exit

for.body.i:                                       ; preds = %entry
  %call.i.i = tail call i32 (...) @func2() #4
  store i32 0, ptr @t, align 4, !tbaa !5
  store i16 0, ptr @d, align 2, !tbaa !9
  store i32 0, ptr @m, align 4, !tbaa !5
  %1 = load i32, ptr @p, align 4, !tbaa !5
  %cmp11.i = icmp eq i32 %1, 0
  %conv12.i = zext i1 %cmp11.i to i32
  store i32 %conv12.i, ptr @o, align 4, !tbaa !5
  store i8 0, ptr @c, align 1, !tbaa !11
  store i8 0, ptr @e, align 1, !tbaa !11
  store i8 0, ptr @y, align 1, !tbaa !11
  store i16 0, ptr @d, align 2, !tbaa !9
  tail call void @abort() #5
  unreachable

fn3.exit:                                         ; preds = %entry
  ret i32 0
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"short", !7, i64 0}
!11 = !{!7, !7, i64 0}
