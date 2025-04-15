; 19576455083400298095349345487108964449
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/19576455083400298095349345487108964449_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/19576455083400298095349345487108964449.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"Hello World\0A\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @foo(i32 noundef %i, i32 noundef %j) local_unnamed_addr #0 {
entry:
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %add = add nsw i32 %call, 1
  %tobool.not = icmp eq i32 %j, 0
  br i1 %tobool.not, label %if.end5, label %if.then

if.then:                                          ; preds = %entry
  %cmp = icmp sgt i32 %call, -1
  br i1 %cmp, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.then
  %inc = add nuw nsw i32 %call, 2
  br label %if.end5

if.else:                                          ; preds = %if.then
  %cmp2.not = icmp eq i32 %call, -1
  %spec.select = select i1 %cmp2.not, i32 0, i32 %call
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then1, %entry
  %k.0 = phi i32 [ %inc, %if.then1 ], [ %add, %entry ], [ %spec.select, %if.else ]
  ret i32 %k.0
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %call.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %cmp.not = icmp eq i32 %call.i, -2
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @abort() #3
  unreachable

if.end:                                           ; preds = %entry
  %call.i29 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %cmp2.not = icmp eq i32 %call.i29, -1
  br i1 %cmp2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  tail call void @abort() #3
  unreachable

if.end4:                                          ; preds = %if.end
  %call.i31 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %cmp6.not = icmp eq i32 %call.i31, 0
  br i1 %cmp6.not, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end4
  tail call void @abort() #3
  unreachable

if.end8:                                          ; preds = %if.end4
  %call.i33 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %cmp10.not = icmp eq i32 %call.i33, 1
  br i1 %cmp10.not, label %if.end12, label %if.then11

if.then11:                                        ; preds = %if.end8
  tail call void @abort() #3
  unreachable

if.end12:                                         ; preds = %if.end8
  %call.i35 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %inc.i = add nuw nsw i32 %call.i35, 2
  %cmp2.not.i = icmp eq i32 %call.i35, -1
  %spec.select.i = select i1 %cmp2.not.i, i32 0, i32 %call.i35
  %cmp.i67 = icmp slt i32 %call.i35, 0
  %k.0.i = select i1 %cmp.i67, i32 %spec.select.i, i32 %inc.i
  %cmp14.not = icmp eq i32 %k.0.i, -2
  br i1 %cmp14.not, label %if.end16, label %if.then15

if.then15:                                        ; preds = %if.end12
  tail call void @abort() #3
  unreachable

if.end16:                                         ; preds = %if.end12
  %call.i37 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %cmp18.not = icmp eq i32 %call.i37, -1
  br i1 %cmp18.not, label %if.end20, label %if.then19

if.then19:                                        ; preds = %if.end16
  tail call void @abort() #3
  unreachable

if.end20:                                         ; preds = %if.end16
  %call.i47 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %inc.i55 = add nuw nsw i32 %call.i47, 2
  %cmp2.not.i51 = icmp eq i32 %call.i47, -1
  %spec.select.i52 = select i1 %cmp2.not.i51, i32 0, i32 %call.i47
  %cmp.i4971 = icmp slt i32 %call.i47, 0
  %k.0.i53 = select i1 %cmp.i4971, i32 %spec.select.i52, i32 %inc.i55
  %cmp22.not = icmp eq i32 %k.0.i53, 2
  br i1 %cmp22.not, label %if.end24, label %if.then23

if.then23:                                        ; preds = %if.end20
  tail call void @abort() #3
  unreachable

if.end24:                                         ; preds = %if.end20
  %call.i57 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %inc.i65 = add nuw nsw i32 %call.i57, 2
  %cmp2.not.i61 = icmp eq i32 %call.i57, -1
  %spec.select.i62 = select i1 %cmp2.not.i61, i32 0, i32 %call.i57
  %cmp.i5972 = icmp slt i32 %call.i57, 0
  %k.0.i63 = select i1 %cmp.i5972, i32 %spec.select.i62, i32 %inc.i65
  %cmp26.not = icmp eq i32 %k.0.i63, 3
  br i1 %cmp26.not, label %if.end28, label %if.then27

if.then27:                                        ; preds = %if.end24
  tail call void @abort() #3
  unreachable

if.end28:                                         ; preds = %if.end24
  ret i32 0
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #2

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
