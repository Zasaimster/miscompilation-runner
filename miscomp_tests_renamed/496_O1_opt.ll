; 147415225274459923738207029154220488245
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/147415225274459923738207029154220488245_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/147415225274459923738207029154220488245.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"I exist!\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"I'm not used\0A\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local range(i32 0, 16) i32 @line_hints(ptr noundef readonly captures(none) %fh, ptr noundef readonly captures(none) %p0, ptr noundef readnone captures(none) %p1) local_unnamed_addr #0 {
entry:
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %conv = sext i32 %call to i64
  %0 = load i64, ptr %p0, align 8, !tbaa !5
  %sub = sub nsw i64 %conv, %0
  %call1 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1)
  %conv2 = sext i32 %call1 to i64
  %y = getelementptr inbounds nuw i8, ptr %p0, i64 8
  %1 = load i64, ptr %y, align 8, !tbaa !10
  %sub3 = sub nsw i64 %conv2, %1
  %x_inverted = getelementptr inbounds nuw i8, ptr %fh, i64 4
  %2 = load i32, ptr %x_inverted, align 4, !tbaa !11
  %y_inverted = getelementptr inbounds nuw i8, ptr %fh, i64 8
  %3 = load i32, ptr %y_inverted, align 4, !tbaa !14
  %tobool.not = icmp eq i32 %2, 0
  %sub4 = sub nsw i64 0, %sub
  %spec.select = select i1 %tobool.not, i64 %sub, i64 %sub4
  %tobool5.not = icmp eq i32 %3, 0
  %sub7 = sub nsw i64 0, %sub3
  %dy.0 = select i1 %tobool5.not, i64 %sub3, i64 %sub7
  %4 = load i32, ptr %fh, align 4, !tbaa !15
  %tobool9.not = icmp eq i32 %4, 0
  br i1 %tobool9.not, label %if.end11, label %if.then10

if.then10:                                        ; preds = %entry
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %entry
  %xi.0 = phi i32 [ %3, %if.then10 ], [ %2, %entry ]
  %yi.0 = phi i32 [ %2, %if.then10 ], [ %3, %entry ]
  %dy.1 = phi i64 [ %spec.select, %if.then10 ], [ %dy.0, %entry ]
  %dx.1 = phi i64 [ %dy.0, %if.then10 ], [ %spec.select, %entry ]
  %cmp = icmp slt i64 %dx.1, 0
  %cond = tail call i64 @llvm.abs.i64(i64 %dx.1, i1 true)
  %cond20 = tail call i64 @llvm.abs.i64(i64 %dy.1, i1 true)
  %cmp21.not = icmp eq i64 %dy.1, 0
  %shr = lshr i64 %cond20, 4
  %cmp23.not = icmp samesign ugt i64 %cond, %shr
  %or.cond = select i1 %cmp21.not, i1 true, i1 %cmp23.not
  br i1 %or.cond, label %if.else, label %if.then25

if.then25:                                        ; preds = %if.end11
  %cmp26 = icmp sgt i64 %dy.1, 0
  %cond28 = select i1 %cmp26, i32 2, i32 1
  %tobool29.not = icmp eq i32 %xi.0, 0
  %xor = xor i32 %cond28, 3
  %spec.select72 = select i1 %tobool29.not, i32 %cond28, i32 %xor
  br label %if.end48

if.else:                                          ; preds = %if.end11
  %cmp32.not = icmp eq i64 %dx.1, 0
  %shr35 = lshr i64 %cond, 4
  %cmp36.not = icmp samesign ugt i64 %cond20, %shr35
  %or.cond73 = select i1 %cmp32.not, i1 true, i1 %cmp36.not
  br i1 %or.cond73, label %if.end48, label %if.then38

if.then38:                                        ; preds = %if.else
  %cond41 = select i1 %cmp, i32 8, i32 4
  %tobool42.not = icmp eq i32 %yi.0, 0
  %xor44 = xor i32 %cond41, 12
  %spec.select74 = select i1 %tobool42.not, i32 %cond41, i32 %xor44
  br label %if.end48

if.end48:                                         ; preds = %if.then38, %if.else, %if.then25
  %hints.0 = phi i32 [ %spec.select72, %if.then25 ], [ %spec.select74, %if.then38 ], [ 0, %if.else ]
  ret i32 %hints.0
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #1

; Function Attrs: nofree noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  %call.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %conv.i = sext i32 %call.i to i64
  %call1.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1)
  %conv2.i = sext i32 %call1.i to i64
  %sub3.i = add nsw i64 %conv2.i, -80216
  %sub4.i = sub nsw i64 196608, %conv.i
  %cond.i = tail call i64 @llvm.abs.i64(i64 %sub4.i, i1 true)
  %cond20.i = tail call i64 @llvm.abs.i64(i64 %sub3.i, i1 true)
  %cmp21.not.i = icmp ne i64 %sub3.i, 0
  %shr.i = lshr i64 %cond20.i, 4
  %cmp23.not.i = icmp samesign ule i64 %cond.i, %shr.i
  %or.cond.i.not97 = select i1 %cmp21.not.i, i1 %cmp23.not.i, i1 false
  %cmp26.i = icmp sgt i32 %call1.i, 80216
  %or.cond96 = and i1 %or.cond.i.not97, %cmp26.i
  br i1 %or.cond96, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %call.i6 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %conv.i7 = sext i32 %call.i6 to i64
  %sub.i8 = add nsw i64 %conv.i7, -80216
  %call1.i9 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1)
  %conv2.i10 = sext i32 %call1.i9 to i64
  %sub7.i16 = sub nsw i64 196608, %conv2.i10
  %cond.i26 = tail call i64 @llvm.abs.i64(i64 %sub.i8, i1 true)
  %cond20.i27 = tail call i64 @llvm.abs.i64(i64 %sub7.i16, i1 true)
  %cmp21.not.i28 = icmp eq i32 %call1.i9, 196608
  %shr.i29 = lshr i64 %cond20.i27, 4
  %cmp23.not.i30 = icmp samesign ugt i64 %cond.i26, %shr.i29
  %or.cond.i31 = select i1 %cmp21.not.i28, i1 true, i1 %cmp23.not.i30
  br i1 %or.cond.i31, label %if.else.i39, label %if.then

if.else.i39:                                      ; preds = %lor.lhs.false
  %cmp.i25 = icmp sgt i32 %call.i6, 80215
  %cmp32.not.i40 = icmp ne i64 %sub.i8, 0
  %shr35.i41 = lshr i64 %cond.i26, 4
  %cmp36.not.i42 = icmp samesign ule i64 %cond20.i27, %shr35.i41
  %or.cond73.i43.not95 = select i1 %cmp32.not.i40, i1 %cmp36.not.i42, i1 false
  %or.cond = and i1 %or.cond73.i43.not95, %cmp.i25
  br i1 %or.cond, label %lor.lhs.false3, label %if.then

lor.lhs.false3:                                   ; preds = %if.else.i39
  %call.i50 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %conv.i51 = sext i32 %call.i50 to i64
  %sub.i52 = add nsw i64 %conv.i51, -80216
  %call1.i53 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1)
  %conv2.i54 = sext i32 %call1.i53 to i64
  %sub3.i55 = add nsw i64 %conv2.i54, -196608
  %cond.i70 = tail call i64 @llvm.abs.i64(i64 %sub.i52, i1 true)
  %cond20.i71 = tail call i64 @llvm.abs.i64(i64 %sub3.i55, i1 true)
  %cmp21.not.i72 = icmp eq i64 %sub3.i55, 0
  %shr.i73 = lshr i64 %cond20.i71, 4
  %cmp23.not.i74 = icmp samesign ugt i64 %cond.i70, %shr.i73
  %or.cond.i75 = select i1 %cmp21.not.i72, i1 true, i1 %cmp23.not.i74
  br i1 %or.cond.i75, label %if.else.i83, label %if.then

if.else.i83:                                      ; preds = %lor.lhs.false3
  %cmp.i69 = icmp slt i32 %call.i50, 80216
  %cmp32.not.i84 = icmp eq i64 %sub.i52, 0
  %shr35.i85 = lshr i64 %cond.i70, 4
  %cmp36.not.i86 = icmp samesign ugt i64 %cond20.i71, %shr35.i85
  %or.cond73.i87 = select i1 %cmp32.not.i84, i1 true, i1 %cmp36.not.i86
  %brmerge = or i1 %or.cond73.i87, %cmp.i69
  br i1 %brmerge, label %if.then, label %if.end

if.then:                                          ; preds = %if.else.i83, %lor.lhs.false3, %if.else.i39, %lor.lhs.false, %entry
  tail call void @abort() #6
  unreachable

if.end:                                           ; preds = %if.else.i83
  tail call void @exit(i32 noundef 0) #6
  unreachable
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #3

; Function Attrs: nofree noreturn
declare void @exit(i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #5

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { noreturn nounwind }

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
