; 173796227304217836350122916456281191180
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/173796227304217836350122916456281191180_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/173796227304217836350122916456281191180.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g = internal unnamed_addr global i16 0, align 2
@p = internal unnamed_addr global i16 0, align 2
@e = dso_local local_unnamed_addr global i8 0, align 1
@str = private unnamed_addr constant [13 x i8] c"I'm not used\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local void @notUsed() local_unnamed_addr #0 {
entry:
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local signext range(i8 0, 2) i8 @frob(i16 noundef zeroext %a, i16 noundef zeroext %b) local_unnamed_addr #1 {
entry:
  store i16 %a, ptr @g, align 2, !tbaa !5
  store i16 %b, ptr @p, align 2, !tbaa !5
  %call.i = tail call i32 (...) @next_g() #7
  %conv.i = trunc i32 %call.i to i16
  store i16 %conv.i, ptr @g, align 2, !tbaa !5
  %0 = load i16, ptr @p, align 2, !tbaa !5
  %cmp.i = icmp eq i16 %0, %conv.i
  %..i = zext i1 %cmp.i to i8
  ret i8 %..i
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i16 @get_n() local_unnamed_addr #1 {
entry:
  %0 = load i16, ptr @p, align 2, !tbaa !5
  %1 = load i16, ptr @g, align 2, !tbaa !5
  %cmp.i6.not = icmp eq i16 %0, %1
  br i1 %cmp.i6.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.body, %entry
  %n.07 = phi i16 [ %inc, %while.body ], [ 0, %entry ]
  %call.i = tail call i32 (...) @next_g() #7
  %conv.i = trunc i32 %call.i to i16
  store i16 %conv.i, ptr @g, align 2, !tbaa !5
  %inc = add nuw nsw i16 %n.07, 1
  %2 = load i16, ptr @p, align 2, !tbaa !5
  %cmp.i = icmp ne i16 %2, %conv.i
  %cmp = icmp samesign ult i16 %n.07, 4
  %3 = select i1 %cmp.i, i1 %cmp, i1 false
  br i1 %3, label %while.body, label %while.end, !llvm.loop !9

while.end:                                        ; preds = %while.body, %entry
  %n.0.lcssa = phi i16 [ 0, %entry ], [ %inc, %while.body ]
  ret i16 %n.0.lcssa
}

; Function Attrs: noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  store i8 3, ptr @e, align 1, !tbaa !12
  store i16 0, ptr @g, align 2, !tbaa !5
  store i16 2, ptr @p, align 2, !tbaa !5
  %call.i.i = tail call i32 (...) @next_g() #7
  %conv.i.i = trunc i32 %call.i.i to i16
  store i16 %conv.i.i, ptr @g, align 2, !tbaa !5
  %0 = load i16, ptr @p, align 2, !tbaa !5
  %cmp3 = icmp ne i16 %conv.i.i, 1
  %cmp7 = icmp ne i16 %0, 2
  %or.cond26 = or i1 %cmp3, %cmp7
  %1 = load i8, ptr @e, align 1
  %cmp11 = icmp ne i8 %1, 3
  %or.cond27 = select i1 %or.cond26, i1 true, i1 %cmp11
  br i1 %or.cond27, label %if.then, label %while.body.i

while.body.i:                                     ; preds = %while.body.i, %entry
  %n.07.i = phi i16 [ %inc.i, %while.body.i ], [ 0, %entry ]
  %call.i.i30 = tail call i32 (...) @next_g() #7
  %conv.i.i31 = trunc i32 %call.i.i30 to i16
  store i16 %conv.i.i31, ptr @g, align 2, !tbaa !5
  %inc.i = add nuw nsw i16 %n.07.i, 1
  %2 = load i16, ptr @p, align 2, !tbaa !5
  %cmp.i.i32 = icmp ne i16 %2, %conv.i.i31
  %cmp.i = icmp samesign ult i16 %n.07.i, 4
  %3 = select i1 %cmp.i.i32, i1 %cmp.i, i1 false
  br i1 %3, label %while.body.i, label %get_n.exit, !llvm.loop !9

get_n.exit:                                       ; preds = %while.body.i
  %cmp16 = icmp ne i16 %n.07.i, 0
  %4 = load i16, ptr @g, align 2
  %cmp20 = icmp ne i16 %4, 2
  %or.cond28 = select i1 %cmp16, i1 true, i1 %cmp20
  %5 = load i16, ptr @p, align 2
  %cmp24 = icmp ne i16 %5, 2
  %or.cond29 = select i1 %or.cond28, i1 true, i1 %cmp24
  br i1 %or.cond29, label %if.then, label %if.end

if.then:                                          ; preds = %get_n.exit, %entry
  tail call void @abort() #8
  unreachable

if.end:                                           ; preds = %get_n.exit
  tail call void @exit(i32 noundef 0) #8
  unreachable
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #3

; Function Attrs: nofree noreturn
declare void @exit(i32 noundef) local_unnamed_addr #4

declare i32 @next_g(...) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #6

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"short", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = !{!7, !7, i64 0}
