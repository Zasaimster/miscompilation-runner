; 107058312720027115603657221090216725190
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/107058312720027115603657221090216725190_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/107058312720027115603657221090216725190.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@v = dso_local local_unnamed_addr global i32 0, align 4
@s = dso_local local_unnamed_addr global i32 0, align 4
@str = private unnamed_addr constant [20 x i8] c"A is greater than 5\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local void @bar(i32 noundef %a, i32 noundef %b) local_unnamed_addr #0 {
entry:
  %0 = load i32, ptr @v, align 4, !tbaa !5
  %1 = load i32, ptr @s, align 4, !tbaa !5
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %conv1 = and i32 %0, 255
  %cmp.not = icmp eq i32 %a, %conv1
  br i1 %cmp.not, label %lor.lhs.false, label %if.then8

lor.lhs.false:                                    ; preds = %if.then
  %conv4 = add i32 %0, 1
  %conv5 = and i32 %conv4, 255
  %cmp6.not = icmp eq i32 %b, %conv5
  br i1 %cmp6.not, label %if.end, label %if.then8

if.then8:                                         ; preds = %lor.lhs.false, %if.then
  tail call void @abort() #3
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %if.end21

if.else:                                          ; preds = %entry
  %conv11 = add i32 %0, 1
  %conv12 = and i32 %conv11, 255
  %cmp13.not = icmp eq i32 %a, %conv12
  %conv9 = and i32 %0, 255
  %cmp17.not = icmp eq i32 %b, %conv9
  %or.cond = select i1 %cmp13.not, i1 %cmp17.not, i1 false
  br i1 %or.cond, label %if.end21, label %if.then19

if.then19:                                        ; preds = %if.else
  tail call void @abort() #3
  unreachable

if.end21:                                         ; preds = %if.else, %if.end
  %2 = load i32, ptr @s, align 4, !tbaa !5
  %xor = xor i32 %2, 1
  store i32 %xor, ptr @s, align 4, !tbaa !5
  ret void
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #1

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @foo(i32 noundef %x) local_unnamed_addr #0 {
entry:
  %conv1 = add i32 %x, 1
  %conv2 = and i32 %x, 255
  %conv3 = and i32 %conv1, 255
  %0 = load i32, ptr @v, align 4, !tbaa !5
  %1 = load i32, ptr @s, align 4, !tbaa !5
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  %conv1.i = and i32 %0, 255
  %cmp.not.i = icmp eq i32 %conv2, %conv1.i
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.then8.i

lor.lhs.false.i:                                  ; preds = %if.then.i
  %conv4.i = add i32 %0, 1
  %conv5.i = and i32 %conv4.i, 255
  %cmp6.not.i = icmp eq i32 %conv3, %conv5.i
  br i1 %cmp6.not.i, label %if.end.i, label %if.then8.i

if.then8.i:                                       ; preds = %lor.lhs.false.i, %if.then.i
  tail call void @abort() #3
  unreachable

if.end.i:                                         ; preds = %lor.lhs.false.i
  %puts.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %bar.exit

if.else.i:                                        ; preds = %entry
  %conv11.i = add i32 %0, 1
  %conv12.i = and i32 %conv11.i, 255
  %cmp13.not.i = icmp eq i32 %conv2, %conv12.i
  %conv9.i = and i32 %0, 255
  %cmp17.not.i = icmp eq i32 %conv3, %conv9.i
  %or.cond.i = select i1 %cmp13.not.i, i1 %cmp17.not.i, i1 false
  br i1 %or.cond.i, label %bar.exit, label %if.then19.i

if.then19.i:                                      ; preds = %if.else.i
  tail call void @abort() #3
  unreachable

bar.exit:                                         ; preds = %if.else.i, %if.end.i
  %2 = load i32, ptr @s, align 4, !tbaa !5
  %xor.i = xor i32 %2, 1
  store i32 %xor.i, ptr @s, align 4, !tbaa !5
  %3 = load i32, ptr @v, align 4, !tbaa !5
  %tobool.not.i26 = icmp eq i32 %2, 1
  br i1 %tobool.not.i26, label %if.then.i36, label %if.else.i27

if.then.i36:                                      ; preds = %bar.exit
  %conv1.i37 = and i32 %3, 255
  %cmp.not.i38 = icmp eq i32 %conv3, %conv1.i37
  br i1 %cmp.not.i38, label %lor.lhs.false.i40, label %if.then8.i39

lor.lhs.false.i40:                                ; preds = %if.then.i36
  %conv4.i41 = add i32 %3, 1
  %conv5.i42 = and i32 %conv4.i41, 255
  %cmp6.not.i43 = icmp eq i32 %conv2, %conv5.i42
  br i1 %cmp6.not.i43, label %if.end.i44, label %if.then8.i39

if.then8.i39:                                     ; preds = %lor.lhs.false.i40, %if.then.i36
  tail call void @abort() #3
  unreachable

if.end.i44:                                       ; preds = %lor.lhs.false.i40
  %puts.i45 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %bar.exit46

if.else.i27:                                      ; preds = %bar.exit
  %conv11.i28 = add i32 %3, 1
  %conv12.i29 = and i32 %conv11.i28, 255
  %cmp13.not.i30 = icmp eq i32 %conv3, %conv12.i29
  %conv9.i31 = and i32 %3, 255
  %cmp17.not.i32 = icmp eq i32 %conv2, %conv9.i31
  %or.cond.i33 = select i1 %cmp13.not.i30, i1 %cmp17.not.i32, i1 false
  br i1 %or.cond.i33, label %bar.exit46, label %if.then19.i34

if.then19.i34:                                    ; preds = %if.else.i27
  tail call void @abort() #3
  unreachable

bar.exit46:                                       ; preds = %if.else.i27, %if.end.i44
  %4 = load i32, ptr @s, align 4, !tbaa !5
  %xor.i35 = xor i32 %4, 1
  store i32 %xor.i35, ptr @s, align 4, !tbaa !5
  ret i32 0
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  store i32 -10, ptr @v, align 4, !tbaa !5
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %storemerge1 = phi i32 [ -10, %entry ], [ %inc, %for.body ]
  %call = tail call i32 @foo(i32 noundef %storemerge1)
  %0 = load i32, ptr @v, align 4, !tbaa !5
  %inc = add nsw i32 %0, 1
  store i32 %inc, ptr @v, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, 265
  br i1 %cmp, label %for.body, label %for.end, !llvm.loop !9

for.end:                                          ; preds = %for.body
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #2

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { noreturn nounwind }

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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
