; 141756370351460270146981315235412797496
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/141756370351460270146981315235412797496_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/141756370351460270146981315235412797496.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 16) i32 @line_hints(ptr noundef readonly captures(none) %fh, ptr noundef readonly captures(none) %p0, ptr noundef readonly captures(none) %p1) local_unnamed_addr #0 {
entry:
  %call = tail call i32 (...) @example7() #6
  %conv = sext i32 %call to i64
  %0 = load i64, ptr %p0, align 8, !tbaa !5
  %sub = sub nsw i64 %conv, %0
  %y = getelementptr inbounds nuw i8, ptr %p1, i64 8
  %1 = load i64, ptr %y, align 8, !tbaa !10
  %y1 = getelementptr inbounds nuw i8, ptr %p0, i64 8
  %2 = load i64, ptr %y1, align 8, !tbaa !10
  %sub2 = sub nsw i64 %1, %2
  %x_inverted = getelementptr inbounds nuw i8, ptr %fh, i64 4
  %3 = load i32, ptr %x_inverted, align 4, !tbaa !11
  %y_inverted = getelementptr inbounds nuw i8, ptr %fh, i64 8
  %4 = load i32, ptr %y_inverted, align 4, !tbaa !14
  %tobool.not = icmp eq i32 %3, 0
  %sub3 = sub nsw i64 0, %sub
  %spec.select = select i1 %tobool.not, i64 %sub, i64 %sub3
  %tobool4.not = icmp eq i32 %4, 0
  %sub6 = sub nsw i64 0, %sub2
  %dy.0 = select i1 %tobool4.not, i64 %sub2, i64 %sub6
  %5 = load i32, ptr %fh, align 4, !tbaa !15
  %tobool8.not = icmp eq i32 %5, 0
  br i1 %tobool8.not, label %if.end10, label %if.then9

if.then9:                                         ; preds = %entry
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %entry
  %xi.0 = phi i32 [ %4, %if.then9 ], [ %3, %entry ]
  %yi.0 = phi i32 [ %3, %if.then9 ], [ %4, %entry ]
  %dy.1 = phi i64 [ %spec.select, %if.then9 ], [ %dy.0, %entry ]
  %dx.1 = phi i64 [ %dy.0, %if.then9 ], [ %spec.select, %entry ]
  %cmp = icmp slt i64 %dx.1, 0
  %cond = tail call i64 @llvm.abs.i64(i64 %dx.1, i1 true)
  %cond19 = tail call i64 @llvm.abs.i64(i64 %dy.1, i1 true)
  %cmp20.not = icmp eq i64 %dy.1, 0
  %shr = lshr i64 %cond19, 4
  %cmp22.not = icmp samesign ugt i64 %cond, %shr
  %or.cond = select i1 %cmp20.not, i1 true, i1 %cmp22.not
  br i1 %or.cond, label %if.else, label %if.then24

if.then24:                                        ; preds = %if.end10
  %cmp25 = icmp sgt i64 %dy.1, 0
  %cond27 = select i1 %cmp25, i32 2, i32 1
  %tobool28.not = icmp eq i32 %xi.0, 0
  %xor = xor i32 %cond27, 3
  %spec.select71 = select i1 %tobool28.not, i32 %cond27, i32 %xor
  br label %if.end47

if.else:                                          ; preds = %if.end10
  %cmp31.not = icmp eq i64 %dx.1, 0
  %shr34 = lshr i64 %cond, 4
  %cmp35.not = icmp samesign ugt i64 %cond19, %shr34
  %or.cond72 = select i1 %cmp31.not, i1 true, i1 %cmp35.not
  br i1 %or.cond72, label %if.end47, label %if.then37

if.then37:                                        ; preds = %if.else
  %cond40 = select i1 %cmp, i32 8, i32 4
  %tobool41.not = icmp eq i32 %yi.0, 0
  %xor43 = xor i32 %cond40, 12
  %spec.select73 = select i1 %tobool41.not, i32 %cond40, i32 %xor43
  br label %if.end47

if.end47:                                         ; preds = %if.then37, %if.else, %if.then24
  %hints.0 = phi i32 [ %spec.select71, %if.then24 ], [ %spec.select73, %if.then37 ], [ 0, %if.else ]
  ret i32 %hints.0
}

declare i32 @example7(...) local_unnamed_addr #1

; Function Attrs: noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  %call.i = tail call i32 (...) @example7() #6
  %conv.i = sext i32 %call.i to i64
  %sub3.i = sub nsw i64 196608, %conv.i
  %cond.i = tail call i64 @llvm.abs.i64(i64 %sub3.i, i1 true)
  %cmp22.not.i = icmp samesign ugt i64 %cond.i, 1155
  br i1 %cmp22.not.i, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call.i6 = tail call i32 (...) @example7() #6
  %or.cond = icmp sgt i32 %call.i6, 80216
  br i1 %or.cond, label %lor.lhs.false3, label %if.then

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %call.i48 = tail call i32 (...) @example7() #6
  %brmerge = icmp slt i32 %call.i48, 80217
  br i1 %brmerge, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false3, %lor.lhs.false, %entry
  tail call void @abort() #7
  unreachable

if.end:                                           ; preds = %lor.lhs.false3
  tail call void @exit(i32 noundef 0) #7
  unreachable
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #3

; Function Attrs: nofree noreturn
declare void @exit(i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"gs_fixed_point_s", !7, i64 0, !7, i64 8}
!7 = !{!"long", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!6, !7, i64 8}
!11 = !{!12, !13, i64 4}
!12 = !{!"font_hints_s", !13, i64 0, !13, i64 4, !13, i64 8}
!13 = !{!"int", !8, i64 0}
!14 = !{!12, !13, i64 8}
!15 = !{!12, !13, i64 0}
