; 19516067622546726385075841807515003856
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/19516067622546726385075841807515003856.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/19516067622546726385075841807515003856.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RenderBox = type { [6 x i32], i16, i16, ptr }
%struct.RenderStyle = type { %struct.NonInheritedFlags }
%struct.NonInheritedFlags = type { %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { i32 }

@false = dso_local local_unnamed_addr constant i8 0, align 1
@true = dso_local local_unnamed_addr constant i8 1, align 1
@g_this = dso_local global %struct.RenderBox zeroinitializer, align 8
@g__style = dso_local local_unnamed_addr global %struct.RenderStyle zeroinitializer, align 4

; Function Attrs: nounwind uwtable
define dso_local void @RenderBox_setStyle(ptr noundef %thisin, ptr noundef readonly captures(none) %_style) local_unnamed_addr #0 {
entry:
  %call = tail call i32 (...) @uselessFunction() #6
  %bf.load = load i32, ptr %_style, align 4
  %0 = and i32 %bf.load, 262144
  %switch.not = icmp eq i32 %0, 0
  %m_positioned16 = getelementptr inbounds nuw i8, ptr %thisin, i64 26
  %bf.load17 = load i16, ptr %m_positioned16, align 2
  br i1 %switch.not, label %if.end, label %sw.bb

sw.bb:                                            ; preds = %entry
  %bf.set = or i16 %bf.load17, 16
  br label %sw.epilog.sink.split

if.end:                                           ; preds = %entry
  %bf.clear19 = and i16 %bf.load17, -17
  store i16 %bf.clear19, ptr %m_positioned16, align 2
  %bf.load24 = load i32, ptr %_style, align 4
  %isTableCell = getelementptr inbounds nuw i8, ptr %thisin, i64 32
  %1 = load ptr, ptr %isTableCell, align 8, !tbaa !5
  %call27 = tail call zeroext i1 %1(ptr noundef %thisin) #6
  %2 = and i32 %bf.load24, 1572864
  %cmp = icmp eq i32 %2, 0
  %or.cond = select i1 %call27, i1 true, i1 %cmp
  br i1 %or.cond, label %if.else, label %if.then28

if.then28:                                        ; preds = %if.end
  %bf.load31 = load i16, ptr %m_positioned16, align 2
  %bf.set34 = or i16 %bf.load31, 8
  br label %sw.epilog.sink.split

if.else:                                          ; preds = %if.end
  %bf.load38 = load i32, ptr %_style, align 4
  %3 = and i32 %bf.load38, 393216
  %cmp41 = icmp eq i32 %3, 131072
  br i1 %cmp41, label %if.then42, label %sw.epilog

if.then42:                                        ; preds = %if.else
  %bf.load45 = load i16, ptr %m_positioned16, align 2
  %bf.set48 = or i16 %bf.load45, 64
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb, %if.then42, %if.then28
  %bf.set34.sink = phi i16 [ %bf.set34, %if.then28 ], [ %bf.set48, %if.then42 ], [ %bf.set, %sw.bb ]
  store i16 %bf.set34.sink, ptr %m_positioned16, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.else
  ret void
}

declare i32 @uselessFunction(...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @RenderObject_setStyle(ptr noundef readnone captures(none) %this, ptr noundef readnone captures(none) %_style) local_unnamed_addr #2 {
entry:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @removeFromSpecialObjects(ptr noundef readnone captures(none) %this) local_unnamed_addr #2 {
entry:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @RenderBox_isTableCell(ptr readnone captures(none) %this) #2 {
entry:
  ret i1 false
}

; Function Attrs: noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #3 {
entry:
  %bf.load = load i16, ptr getelementptr inbounds nuw (i8, ptr @g_this, i64 26), align 2
  %bf.clear5 = and i16 %bf.load, -89
  store i16 %bf.clear5, ptr getelementptr inbounds nuw (i8, ptr @g_this, i64 26), align 2
  store ptr @RenderBox_isTableCell, ptr getelementptr inbounds nuw (i8, ptr @g_this, i64 32), align 8, !tbaa !5
  %bf.load7 = load i32, ptr @g__style, align 4
  %bf.set9 = and i32 %bf.load7, -1966081
  %bf.clear11 = or disjoint i32 %bf.set9, 393216
  store i32 %bf.clear11, ptr @g__style, align 4
  %call.i = tail call i32 (...) @uselessFunction() #6
  %bf.load.i = load i32, ptr @g__style, align 4
  %0 = and i32 %bf.load.i, 262144
  %switch.not.i = icmp eq i32 %0, 0
  %bf.load17.i = load i16, ptr getelementptr inbounds nuw (i8, ptr @g_this, i64 26), align 2
  br i1 %switch.not.i, label %if.end.i, label %sw.bb.i

sw.bb.i:                                          ; preds = %entry
  %bf.set.i = or i16 %bf.load17.i, 16
  br label %RenderBox_setStyle.exit.sink.split

if.end.i:                                         ; preds = %entry
  %bf.clear19.i = and i16 %bf.load17.i, -17
  store i16 %bf.clear19.i, ptr getelementptr inbounds nuw (i8, ptr @g_this, i64 26), align 2
  %1 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @g_this, i64 32), align 8, !tbaa !5
  %call27.i = tail call zeroext i1 %1(ptr noundef nonnull @g_this) #6
  %2 = and i32 %bf.load.i, 1572864
  %cmp.i = icmp eq i32 %2, 0
  %or.cond.i = or i1 %cmp.i, %call27.i
  br i1 %or.cond.i, label %if.else.i, label %if.then28.i

if.then28.i:                                      ; preds = %if.end.i
  %bf.load31.i = load i16, ptr getelementptr inbounds nuw (i8, ptr @g_this, i64 26), align 2
  %bf.set34.i = or i16 %bf.load31.i, 8
  br label %RenderBox_setStyle.exit.sink.split

if.else.i:                                        ; preds = %if.end.i
  %bf.load38.i = load i32, ptr @g__style, align 4
  %3 = and i32 %bf.load38.i, 393216
  %cmp41.i = icmp eq i32 %3, 131072
  br i1 %cmp41.i, label %if.then42.i, label %RenderBox_setStyle.exit

if.then42.i:                                      ; preds = %if.else.i
  %bf.load45.i = load i16, ptr getelementptr inbounds nuw (i8, ptr @g_this, i64 26), align 2
  %bf.set48.i = or i16 %bf.load45.i, 64
  br label %RenderBox_setStyle.exit.sink.split

RenderBox_setStyle.exit.sink.split:               ; preds = %if.then42.i, %if.then28.i, %sw.bb.i
  %bf.set.i.sink = phi i16 [ %bf.set.i, %sw.bb.i ], [ %bf.set34.i, %if.then28.i ], [ %bf.set48.i, %if.then42.i ]
  store i16 %bf.set.i.sink, ptr getelementptr inbounds nuw (i8, ptr @g_this, i64 26), align 2
  br label %RenderBox_setStyle.exit

RenderBox_setStyle.exit:                          ; preds = %RenderBox_setStyle.exit.sink.split, %if.else.i
  %bf.load13 = load i16, ptr getelementptr inbounds nuw (i8, ptr @g_this, i64 26), align 2
  %4 = and i16 %bf.load13, 16
  %cmp.not.not = icmp eq i16 %4, 0
  br i1 %cmp.not.not, label %if.then, label %if.end

if.then:                                          ; preds = %RenderBox_setStyle.exit
  tail call void @abort() #7
  unreachable

if.end:                                           ; preds = %RenderBox_setStyle.exit
  %5 = and i16 %bf.load13, 64
  %bf.cast19.not = icmp eq i16 %5, 0
  br i1 %bf.cast19.not, label %if.end24, label %if.then23

if.then23:                                        ; preds = %if.end
  tail call void @abort() #7
  unreachable

if.end24:                                         ; preds = %if.end
  %6 = and i16 %bf.load13, 8
  %bf.cast28.not = icmp eq i16 %6, 0
  br i1 %bf.cast28.not, label %if.end33, label %if.then32

if.then32:                                        ; preds = %if.end24
  tail call void @abort() #7
  unreachable

if.end33:                                         ; preds = %if.end24
  tail call void @exit(i32 noundef 0) #7
  unreachable
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #4

; Function Attrs: nofree noreturn
declare void @exit(i32 noundef) local_unnamed_addr #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }

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
