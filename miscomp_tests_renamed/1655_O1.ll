; 129507116194116340682052008676759776826
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/129507116194116340682052008676759776826.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/129507116194116340682052008676759776826.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g = internal unnamed_addr global i16 5, align 2
@p = internal unnamed_addr global i16 0, align 2
@e = dso_local local_unnamed_addr global i8 0, align 1

; Function Attrs: nounwind uwtable
define dso_local signext range(i8 0, 2) i8 @frob(i16 noundef zeroext %a, i16 noundef zeroext %b) local_unnamed_addr #0 {
entry:
  store i16 %a, ptr @g, align 2, !tbaa !5
  store i16 %b, ptr @p, align 2, !tbaa !5
  %call.i.i = tail call i32 (...) @example2() #5
  %0 = load i8, ptr @e, align 1, !tbaa !9
  %conv.i.i = zext i8 %0 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -1
  %cmp.i.i = icmp eq i32 %call.i.i, %sub.i.i
  %1 = load i16, ptr @g, align 2
  %add.i.i = add i16 %1, 1
  %conv3.i.i = select i1 %cmp.i.i, i16 0, i16 %add.i.i
  store i16 %conv3.i.i, ptr @g, align 2, !tbaa !5
  %2 = load i16, ptr @p, align 2, !tbaa !5
  %cmp.i = icmp eq i16 %2, %conv3.i.i
  %..i = zext i1 %cmp.i to i8
  ret i8 %..i
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i16 @get_n() local_unnamed_addr #0 {
entry:
  %0 = load i16, ptr @p, align 2, !tbaa !5
  %1 = load i16, ptr @g, align 2, !tbaa !5
  %cmp.i6.not = icmp eq i16 %0, %1
  br i1 %cmp.i6.not, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %while.body
  %n.07 = phi i16 [ %inc, %while.body ], [ 0, %entry ]
  %call.i.i = tail call i32 (...) @example2() #5
  %2 = load i8, ptr @e, align 1, !tbaa !9
  %conv.i.i = zext i8 %2 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -1
  %cmp.i.i = icmp eq i32 %call.i.i, %sub.i.i
  %3 = load i16, ptr @g, align 2
  %add.i.i = add i16 %3, 1
  %conv3.i.i = select i1 %cmp.i.i, i16 0, i16 %add.i.i
  store i16 %conv3.i.i, ptr @g, align 2, !tbaa !5
  %inc = add nuw nsw i16 %n.07, 1
  %4 = load i16, ptr @p, align 2, !tbaa !5
  %cmp.i = icmp ne i16 %4, %conv3.i.i
  %cmp = icmp samesign ult i16 %n.07, 4
  %5 = select i1 %cmp.i, i1 %cmp, i1 false
  br i1 %5, label %while.body, label %while.end, !llvm.loop !10

while.end:                                        ; preds = %while.body, %entry
  %n.0.lcssa = phi i16 [ 0, %entry ], [ %inc, %while.body ]
  ret i16 %n.0.lcssa
}

; Function Attrs: noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #1 {
entry:
  store i8 3, ptr @e, align 1, !tbaa !9
  store i16 0, ptr @g, align 2, !tbaa !5
  store i16 2, ptr @p, align 2, !tbaa !5
  %call.i.i.i = tail call i32 (...) @example2() #5
  %0 = load i8, ptr @e, align 1, !tbaa !9
  %conv.i.i.i = zext i8 %0 to i32
  %sub.i.i.i = add nsw i32 %conv.i.i.i, -1
  %cmp.i.i.i = icmp eq i32 %call.i.i.i, %sub.i.i.i
  %1 = load i16, ptr @g, align 2
  %add.i.i.i = add i16 %1, 1
  %conv3.i.i.i = select i1 %cmp.i.i.i, i16 0, i16 %add.i.i.i
  store i16 %conv3.i.i.i, ptr @g, align 2, !tbaa !5
  %2 = load i16, ptr @p, align 2, !tbaa !5
  %cmp3 = icmp ne i16 %conv3.i.i.i, 1
  %cmp7 = icmp ne i16 %2, 2
  %or.cond26 = or i1 %cmp7, %cmp3
  %cmp11 = icmp ne i8 %0, 3
  %or.cond27 = or i1 %cmp11, %or.cond26
  br i1 %or.cond27, label %if.then, label %while.body.i

while.body.i:                                     ; preds = %entry, %while.body.i
  %n.07.i = phi i16 [ %inc.i, %while.body.i ], [ 0, %entry ]
  %call.i.i.i30 = tail call i32 (...) @example2() #5
  %3 = load i8, ptr @e, align 1, !tbaa !9
  %conv.i.i.i31 = zext i8 %3 to i32
  %sub.i.i.i32 = add nsw i32 %conv.i.i.i31, -1
  %cmp.i.i.i33 = icmp eq i32 %call.i.i.i30, %sub.i.i.i32
  %4 = load i16, ptr @g, align 2
  %add.i.i.i34 = add i16 %4, 1
  %conv3.i.i.i35 = select i1 %cmp.i.i.i33, i16 0, i16 %add.i.i.i34
  store i16 %conv3.i.i.i35, ptr @g, align 2, !tbaa !5
  %inc.i = add nuw nsw i16 %n.07.i, 1
  %5 = load i16, ptr @p, align 2, !tbaa !5
  %cmp.i.i36 = icmp ne i16 %5, %conv3.i.i.i35
  %cmp.i = icmp samesign ult i16 %n.07.i, 4
  %6 = select i1 %cmp.i.i36, i1 %cmp.i, i1 false
  br i1 %6, label %while.body.i, label %get_n.exit, !llvm.loop !10

get_n.exit:                                       ; preds = %while.body.i
  %cmp16 = icmp ne i16 %n.07.i, 0
  %7 = load i16, ptr @g, align 2
  %cmp20 = icmp ne i16 %7, 2
  %or.cond28 = select i1 %cmp16, i1 true, i1 %cmp20
  %8 = load i16, ptr @p, align 2
  %cmp24 = icmp ne i16 %8, 2
  %or.cond29 = select i1 %or.cond28, i1 true, i1 %cmp24
  br i1 %or.cond29, label %if.then, label %if.end

if.then:                                          ; preds = %get_n.exit, %entry
  tail call void @abort() #6
  unreachable

if.end:                                           ; preds = %get_n.exit
  tail call void @exit(i32 noundef 0) #6
  unreachable
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #2

; Function Attrs: nofree noreturn
declare void @exit(i32 noundef) local_unnamed_addr #3

declare i32 @example2(...) local_unnamed_addr #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!6 = !{!"short", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!7, !7, i64 0}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
