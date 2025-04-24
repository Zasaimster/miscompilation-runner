; 174053549564951852816602547859535813026
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/174053549564951852816602547859535813026.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/174053549564951852816602547859535813026.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@b = dso_local local_unnamed_addr global { i32, i8, i8, i8, i8, i16, [2 x i8] } { i32 8355840, i8 6, i8 -128, i8 2, i8 0, i16 0, [2 x i8] zeroinitializer }, align 4
@g = dso_local local_unnamed_addr global { i32, i8, i8, i8, i8, i16, [2 x i8] } { i32 8, i8 0, i8 -128, i8 2, i8 0, i16 0, [2 x i8] zeroinitializer }, align 4
@h = dso_local local_unnamed_addr global i32 8, align 4
@e = dso_local global <{ i8, [236 x i8] }> <{ i8 4, [236 x i8] zeroinitializer }>, align 16
@d = dso_local global i16 0, align 2
@f = dso_local local_unnamed_addr global ptr @d, align 8
@i = dso_local local_unnamed_addr global [5 x i16] [i16 3, i16 0, i16 0, i16 0, i16 0], align 2
@c = dso_local global i32 0, align 4
@k = dso_local local_unnamed_addr global ptr @c, align 8
@a = dso_local local_unnamed_addr global i32 0, align 4
@j = dso_local local_unnamed_addr global i8 0, align 1
@l = dso_local local_unnamed_addr global i16 0, align 2

; Function Attrs: nounwind uwtable
define dso_local i32 @fn1(i32 noundef %p1) local_unnamed_addr #0 {
entry:
  %call = tail call i32 (...) @example2() #5
  ret i32 undef
}

declare i32 @example2(...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(readwrite, argmem: none) uwtable
define dso_local void @fn2(i8 noundef signext %p1) local_unnamed_addr #2 {
entry:
  %conv = sext i8 %p1 to i32
  store i32 %conv, ptr @a, align 4, !tbaa !5
  %0 = load volatile i8, ptr @e, align 16, !tbaa !9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local signext i16 @fn3() local_unnamed_addr #3 {
entry:
  %0 = load ptr, ptr @k, align 8, !tbaa !10
  store i32 4, ptr %0, align 4, !tbaa !5
  %1 = load ptr, ptr @f, align 8, !tbaa !13
  %2 = load i16, ptr %1, align 2, !tbaa !15
  ret i16 %2
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %call.i = tail call i32 (...) @example2() #5
  store i16 0, ptr @l, align 2, !tbaa !15
  store i16 3, ptr getelementptr inbounds nuw (i8, ptr @i, i64 8), align 2, !tbaa !15
  %0 = load i32, ptr @b, align 4, !tbaa !17
  %1 = shl i32 %0, 9
  %conv.i = ashr i32 %1, 24
  store i32 %conv.i, ptr @a, align 4, !tbaa !5
  %2 = load volatile i8, ptr @e, align 16, !tbaa !9
  %3 = and i32 %0, 8355840
  %cmp9.not = icmp eq i32 %3, 8355840
  br i1 %cmp9.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @abort() #6
  unreachable

if.end:                                           ; preds = %entry
  ret i32 0
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nounwind willreturn memory(readwrite, argmem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

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
!13 = !{!14, !14, i64 0}
!14 = !{!"p1 short", !12, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"short", !7, i64 0}
!17 = !{!18, !6, i64 0}
!18 = !{!"", !6, i64 0, !6, i64 4, !6, i64 5, !16, i64 8}
