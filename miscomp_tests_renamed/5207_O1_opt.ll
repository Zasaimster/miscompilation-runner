; 191976046720421012004293067786126796101
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/191976046720421012004293067786126796101_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/191976046720421012004293067786126796101.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local local_unnamed_addr global i32 0, align 4
@d = dso_local local_unnamed_addr global i8 0, align 1
@e = dso_local local_unnamed_addr global i8 0, align 1
@f = dso_local local_unnamed_addr global i64 0, align 8
@g = dso_local local_unnamed_addr global i64 0, align 8
@h = dso_local local_unnamed_addr global i64 0, align 8
@i = dso_local local_unnamed_addr global i64 0, align 8
@j = dso_local local_unnamed_addr global i16 0, align 2
@k = dso_local local_unnamed_addr global i16 0, align 2
@b = dso_local local_unnamed_addr global i32 0, align 4
@c = dso_local local_unnamed_addr global i8 0, align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  store i32 0, ptr @a, align 4, !tbaa !5
  %0 = load i8, ptr @d, align 1, !tbaa !9
  %conv = sext i8 %0 to i32
  store i32 %conv, ptr @a, align 4, !tbaa !5
  %1 = load i8, ptr @e, align 1, !tbaa !9
  %conv1 = zext i8 %1 to i32
  store i32 %conv1, ptr @a, align 4, !tbaa !5
  %2 = load i64, ptr @f, align 8, !tbaa !10
  %conv2 = trunc i64 %2 to i32
  store i32 %conv2, ptr @a, align 4, !tbaa !5
  %3 = load i64, ptr @g, align 8, !tbaa !10
  %conv3 = trunc i64 %3 to i32
  store i32 %conv3, ptr @a, align 4, !tbaa !5
  %4 = load i64, ptr @h, align 8, !tbaa !12
  %conv4 = trunc i64 %4 to i32
  store i32 %conv4, ptr @a, align 4, !tbaa !5
  %5 = load i64, ptr @i, align 8, !tbaa !12
  %conv5 = trunc i64 %5 to i32
  store i32 %conv5, ptr @a, align 4, !tbaa !5
  %6 = load i16, ptr @j, align 2, !tbaa !14
  %conv6 = sext i16 %6 to i32
  store i32 %conv6, ptr @a, align 4, !tbaa !5
  %7 = load i16, ptr @k, align 2, !tbaa !14
  %conv7 = zext i16 %7 to i32
  store i32 %conv7, ptr @a, align 4, !tbaa !5
  store i32 %conv7, ptr @b, align 4, !tbaa !5
  %conv18 = trunc i16 %7 to i8
  store i8 %conv18, ptr @c, align 1, !tbaa !9
  store i8 %conv18, ptr @d, align 1, !tbaa !9
  store i8 %conv18, ptr @e, align 1, !tbaa !9
  %conv47 = zext i16 %7 to i64
  store i64 %conv47, ptr @f, align 8, !tbaa !10
  store i64 %conv47, ptr @g, align 8, !tbaa !10
  store i64 %conv47, ptr @h, align 8, !tbaa !12
  store i64 %conv47, ptr @i, align 8, !tbaa !12
  store i16 %7, ptr @j, align 2, !tbaa !14
  store i16 %7, ptr @k, align 2, !tbaa !14
  ret i32 0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!11 = !{!"long", !7, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"long long", !7, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"short", !7, i64 0}
