; 164239389920235788541896777894222683073
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/164239389920235788541896777894222683073.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/164239389920235788541896777894222683073.c"
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

; Function Attrs: nounwind uwtable
define dso_local void @RenderBox_setStyle(ptr noundef %thisin, ptr noundef readonly captures(none) %_style) local_unnamed_addr #0 {
entry:
  %m_positioned = getelementptr inbounds nuw i8, ptr %thisin, i64 26
  %bf.load = load i16, ptr %m_positioned, align 2
  %bf.load2 = load i32, ptr %_style, align 4
  %0 = and i32 %bf.load2, 262144
  %switch.not = icmp eq i32 %0, 0
  br i1 %switch.not, label %sw.default, label %sw.bb

sw.bb:                                            ; preds = %entry
  %bf.set = or i16 %bf.load, 16
  br label %sw.epilog.sink.split

sw.default:                                       ; preds = %entry
  %1 = and i16 %bf.load, 16
  %bf.cast.not = icmp eq i16 %1, 0
  br i1 %bf.cast.not, label %if.end, label %if.then

if.then:                                          ; preds = %sw.default
  store i16 %bf.load, ptr %m_positioned, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.default
  %bf.load22 = load i16, ptr %m_positioned, align 2
  %bf.clear24 = and i16 %bf.load22, -17
  store i16 %bf.clear24, ptr %m_positioned, align 2
  %bf.load29 = load i32, ptr %_style, align 4
  %isTableCell = getelementptr inbounds nuw i8, ptr %thisin, i64 32
  %2 = load ptr, ptr %isTableCell, align 8, !tbaa !5
  %call = tail call zeroext i1 %2(ptr noundef %thisin) #4
  %3 = and i32 %bf.load29, 1572864
  %cmp = icmp eq i32 %3, 0
  %or.cond = select i1 %call, i1 true, i1 %cmp
  br i1 %or.cond, label %if.else, label %if.then32

if.then32:                                        ; preds = %if.end
  %bf.load35 = load i16, ptr %m_positioned, align 2
  %bf.set38 = or i16 %bf.load35, 8
  br label %sw.epilog.sink.split

if.else:                                          ; preds = %if.end
  %bf.load42 = load i32, ptr %_style, align 4
  %4 = and i32 %bf.load42, 393216
  %cmp45 = icmp eq i32 %4, 131072
  br i1 %cmp45, label %if.then46, label %sw.epilog

if.then46:                                        ; preds = %if.else
  %bf.load49 = load i16, ptr %m_positioned, align 2
  %bf.set52 = or i16 %bf.load49, 64
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb, %if.then46, %if.then32
  %bf.set38.sink = phi i16 [ %bf.set38, %if.then32 ], [ %bf.set52, %if.then46 ], [ %bf.set, %sw.bb ]
  store i16 %bf.set38.sink, ptr %m_positioned, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.else
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @RenderObject_setStyle(ptr noundef readnone captures(none) %this, ptr noundef readnone captures(none) %_style) local_unnamed_addr #1 {
entry:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @removeFromSpecialObjects(ptr noundef readnone captures(none) %this) local_unnamed_addr #1 {
entry:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @RenderBox_isTableCell(ptr readnone captures(none) %this) #1 {
entry:
  ret i1 false
}

; Function Attrs: nofree noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  %bf.load = load i16, ptr getelementptr inbounds nuw (i8, ptr @g_this, i64 26), align 2
  %bf.clear5 = and i16 %bf.load, -89
  store i16 %bf.clear5, ptr getelementptr inbounds nuw (i8, ptr @g_this, i64 26), align 2
  store ptr @RenderBox_isTableCell, ptr getelementptr inbounds nuw (i8, ptr @g_this, i64 32), align 8, !tbaa !5
  %bf.load7 = load i32, ptr @g__style, align 4
  %bf.set9 = and i32 %bf.load7, -1966081
  %bf.clear11 = or disjoint i32 %bf.set9, 393216
  store i32 %bf.clear11, ptr @g__style, align 4
  %bf.set.i = or disjoint i16 %bf.clear5, 16
  store i16 %bf.set.i, ptr getelementptr inbounds nuw (i8, ptr @g_this, i64 26), align 2
  tail call void @exit(i32 noundef 0) #5
  unreachable
}

; Function Attrs: nofree noreturn
declare void @exit(i32 noundef) local_unnamed_addr #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

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
