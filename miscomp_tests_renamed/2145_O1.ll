; 137834638491511568630698027034178448528
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/137834638491511568630698027034178448528.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/137834638491511568630698027034178448528.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [30 x i8] c"This function is never used.\0A\00", align 1
@s = dso_local local_unnamed_addr global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"Hello, World!\0A\00", align 1
@v = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: nofree nounwind uwtable
define dso_local void @bar(i32 noundef %a, i32 noundef %b) local_unnamed_addr #0 {
entry:
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %0 = load i32, ptr @s, align 4, !tbaa !5
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call1 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1)
  %conv2 = and i32 %call, 255
  %cmp.not = icmp eq i32 %call1, %conv2
  br i1 %cmp.not, label %lor.lhs.false, label %if.then9

lor.lhs.false:                                    ; preds = %if.then
  %conv5 = add i32 %call, 1
  %conv6 = and i32 %conv5, 255
  %cmp7.not = icmp eq i32 %b, %conv6
  br i1 %cmp7.not, label %if.end22, label %if.then9

if.then9:                                         ; preds = %lor.lhs.false, %if.then
  tail call void @abort() #3
  unreachable

if.else:                                          ; preds = %entry
  %conv12 = add i32 %call, 1
  %conv13 = and i32 %conv12, 255
  %cmp14.not = icmp eq i32 %a, %conv13
  %conv10 = and i32 %call, 255
  %cmp18.not = icmp eq i32 %b, %conv10
  %or.cond = and i1 %cmp18.not, %cmp14.not
  br i1 %or.cond, label %if.end22, label %if.then20

if.then20:                                        ; preds = %if.else
  tail call void @abort() #3
  unreachable

if.end22:                                         ; preds = %if.else, %lor.lhs.false
  %1 = load i32, ptr @s, align 4, !tbaa !5
  %xor = xor i32 %1, 1
  store i32 %xor, ptr @s, align 4, !tbaa !5
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #1

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @foo(i32 noundef %x) local_unnamed_addr #0 {
entry:
  %conv1 = add i32 %x, 1
  %conv2 = and i32 %x, 255
  %conv3 = and i32 %conv1, 255
  %call.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %0 = load i32, ptr @s, align 4, !tbaa !5
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  %call1.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1)
  %conv2.i = and i32 %call.i, 255
  %cmp.not.i = icmp eq i32 %call1.i, %conv2.i
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.then9.i

lor.lhs.false.i:                                  ; preds = %if.then.i
  %conv5.i = add i32 %call.i, 1
  %conv6.i = and i32 %conv5.i, 255
  %cmp7.not.i = icmp eq i32 %conv3, %conv6.i
  br i1 %cmp7.not.i, label %bar.exit, label %if.then9.i

if.then9.i:                                       ; preds = %lor.lhs.false.i, %if.then.i
  tail call void @abort() #3
  unreachable

if.else.i:                                        ; preds = %entry
  %conv12.i = add i32 %call.i, 1
  %conv13.i = and i32 %conv12.i, 255
  %cmp14.not.i = icmp eq i32 %conv2, %conv13.i
  %conv10.i = and i32 %call.i, 255
  %cmp18.not.i = icmp eq i32 %conv3, %conv10.i
  %or.cond.i = and i1 %cmp18.not.i, %cmp14.not.i
  br i1 %or.cond.i, label %bar.exit, label %if.then20.i

if.then20.i:                                      ; preds = %if.else.i
  tail call void @abort() #3
  unreachable

bar.exit:                                         ; preds = %lor.lhs.false.i, %if.else.i
  %1 = load i32, ptr @s, align 4, !tbaa !5
  %xor.i = xor i32 %1, 1
  store i32 %xor.i, ptr @s, align 4, !tbaa !5
  %call.i26 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %2 = load i32, ptr @s, align 4, !tbaa !5
  %tobool.not.i27 = icmp eq i32 %2, 0
  br i1 %tobool.not.i27, label %if.then.i37, label %if.else.i28

if.then.i37:                                      ; preds = %bar.exit
  %call1.i38 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1)
  %conv2.i39 = and i32 %call.i26, 255
  %cmp.not.i40 = icmp eq i32 %call1.i38, %conv2.i39
  br i1 %cmp.not.i40, label %lor.lhs.false.i42, label %if.then9.i41

lor.lhs.false.i42:                                ; preds = %if.then.i37
  %conv5.i43 = add i32 %call.i26, 1
  %conv6.i44 = and i32 %conv5.i43, 255
  %cmp7.not.i45 = icmp eq i32 %conv2, %conv6.i44
  br i1 %cmp7.not.i45, label %bar.exit46, label %if.then9.i41

if.then9.i41:                                     ; preds = %lor.lhs.false.i42, %if.then.i37
  tail call void @abort() #3
  unreachable

if.else.i28:                                      ; preds = %bar.exit
  %conv12.i29 = add i32 %call.i26, 1
  %conv13.i30 = and i32 %conv12.i29, 255
  %cmp14.not.i31 = icmp eq i32 %conv3, %conv13.i30
  %conv10.i32 = and i32 %call.i26, 255
  %cmp18.not.i33 = icmp eq i32 %conv2, %conv10.i32
  %or.cond.i34 = and i1 %cmp18.not.i33, %cmp14.not.i31
  br i1 %or.cond.i34, label %bar.exit46, label %if.then20.i35

if.then20.i35:                                    ; preds = %if.else.i28
  tail call void @abort() #3
  unreachable

bar.exit46:                                       ; preds = %lor.lhs.false.i42, %if.else.i28
  %3 = load i32, ptr @s, align 4, !tbaa !5
  %xor.i36 = xor i32 %3, 1
  store i32 %xor.i36, ptr @s, align 4, !tbaa !5
  ret i32 0
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  store i32 -10, ptr @v, align 4, !tbaa !5
  br label %for.body

for.body:                                         ; preds = %entry, %for.body
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

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
