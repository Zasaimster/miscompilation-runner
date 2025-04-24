; 139191518695875933087724113993604734810
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/139191518695875933087724113993604734810_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/139191518695875933087724113993604734810.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RenderBox = type { [6 x i32], i16, i16, ptr }
%struct.RenderStyle = type { %struct.NonInheritedFlags }
%struct.NonInheritedFlags = type { %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { i32 }

@false = dso_local local_unnamed_addr constant i8 0, align 1
@true = dso_local local_unnamed_addr constant i8 1, align 1
@g_this = dso_local local_unnamed_addr global %struct.RenderBox zeroinitializer, align 8
@g__style = dso_local local_unnamed_addr global %struct.RenderStyle zeroinitializer, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @RenderBox_setStyle(ptr noundef readnone captures(none) %thisin, ptr noundef readnone captures(none) %_style) local_unnamed_addr #0 {
entry:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @RenderObject_setStyle(ptr noundef readnone captures(none) %this, ptr noundef readnone captures(none) %_style) local_unnamed_addr #0 {
entry:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @removeFromSpecialObjects(ptr noundef readnone captures(none) %this) local_unnamed_addr #0 {
entry:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @RenderBox_isTableCell(ptr readnone captures(none) %this) #0 {
entry:
  ret i1 false
}

; Function Attrs: cold nofree noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #1 {
entry:
  %bf.load = load i16, ptr getelementptr inbounds nuw (i8, ptr @g_this, i64 26), align 2
  %bf.clear5 = and i16 %bf.load, -89
  store i16 %bf.clear5, ptr getelementptr inbounds nuw (i8, ptr @g_this, i64 26), align 2
  store ptr @RenderBox_isTableCell, ptr getelementptr inbounds nuw (i8, ptr @g_this, i64 32), align 8, !tbaa !5
  %bf.load7 = load i32, ptr @g__style, align 4
  %bf.set9 = and i32 %bf.load7, -1966081
  %bf.clear11 = or disjoint i32 %bf.set9, 393216
  store i32 %bf.clear11, ptr @g__style, align 4
  tail call void @abort() #3
  unreachable
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
!5 = !{!6, !11, i64 32}
!6 = !{!"RenderBox", !7, i64 0, !9, i64 24, !10, i64 26, !10, i64 26, !10, i64 26, !10, i64 26, !10, i64 26, !10, i64 26, !10, i64 26, !10, i64 26, !10, i64 27, !10, i64 27, !10, i64 27, !10, i64 27, !10, i64 27, !10, i64 27, !10, i64 27, !10, i64 27, !11, i64 32}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"short", !7, i64 0}
!10 = !{!"_Bool", !7, i64 0}
!11 = !{!"any pointer", !7, i64 0}
