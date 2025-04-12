; 144661422840472007791842249540738939773
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/144661422840472007791842249540738939773_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/144661422840472007791842249540738939773.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"Finished!\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"short\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"integer*8\00", align 1
@switch.table.main = private unnamed_addr constant [33 x ptr] [ptr @.str.34, ptr @.str.34, ptr @.str.34, ptr @.str.34, ptr @.str.34, ptr @.str.34, ptr @.str.34, ptr @.str.34, ptr @.str.34, ptr @.str.34, ptr @.str.34, ptr @.str.34, ptr @.str.34, ptr @.str.34, ptr @.str.34, ptr @.str.34, ptr @.str.34, ptr @.str.34, ptr @.str.34, ptr @.str.34, ptr @.str.34, ptr @.str.34, ptr @.str.34, ptr @.str.34, ptr @.str.34, ptr @.str.34, ptr @.str.34, ptr @.str.34, ptr @.str.34, ptr @.str.34, ptr @.str.34, ptr @.str.3, ptr @.str.3], align 8

; Function Attrs: nounwind uwtable
define dso_local range(i32 -128, 128) i32 @stab_xcoff_builtin_type(i32 noundef %typenum) local_unnamed_addr #0 {
entry:
  %call = tail call i32 (...) @compute() #4
  %cmp = icmp sgt i32 %call, -1
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %cmp2 = icmp slt i32 %call1, -34
  br i1 %cmp2, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %switch.tableidx = add i32 %typenum, 34
  %0 = icmp ult i32 %switch.tableidx, 33
  br i1 %0, label %switch.lookup, label %sw.epilog

switch.lookup:                                    ; preds = %if.end
  %1 = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [33 x ptr], ptr @switch.table.main, i64 0, i64 %1
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %if.end
  %name.0 = phi ptr [ @.str.1, %if.end ], [ %switch.load, %switch.lookup ]
  %2 = load i8, ptr %name.0, align 1, !tbaa !5
  %conv = sext i8 %2 to i32
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %lor.lhs.false, %entry
  %retval.0 = phi i32 [ %conv, %sw.epilog ], [ 0, %lor.lhs.false ], [ 0, %entry ]
  ret i32 %retval.0
}

declare i32 @compute(...) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %call.i = tail call i32 (...) @compute() #4
  %cmp.i = icmp sgt i32 %call.i, -1
  br i1 %cmp.i, label %if.end, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %entry
  %call1.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %cmp2.i = icmp slt i32 %call1.i, -34
  br i1 %cmp2.i, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false.i
  tail call void @abort() #5
  unreachable

if.end:                                           ; preds = %lor.lhs.false.i, %entry
  %call.i24 = tail call i32 (...) @compute() #4
  %cmp.i25 = icmp sgt i32 %call.i24, -1
  br i1 %cmp.i25, label %if.then3, label %lor.lhs.false.i26

lor.lhs.false.i26:                                ; preds = %if.end
  %call1.i27 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %cmp2.i28 = icmp sgt i32 %call1.i27, -35
  br i1 %cmp2.i28, label %if.end4, label %if.then3

if.then3:                                         ; preds = %lor.lhs.false.i26, %if.end
  tail call void @abort() #5
  unreachable

if.end4:                                          ; preds = %lor.lhs.false.i26
  %call.i32 = tail call i32 (...) @compute() #4
  %cmp.i33 = icmp sgt i32 %call.i32, -1
  br i1 %cmp.i33, label %if.then7, label %lor.lhs.false.i34

lor.lhs.false.i34:                                ; preds = %if.end4
  %call1.i35 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %cmp2.i36 = icmp sgt i32 %call1.i35, -35
  br i1 %cmp2.i36, label %if.end8, label %if.then7

if.then7:                                         ; preds = %lor.lhs.false.i34, %if.end4
  tail call void @abort() #5
  unreachable

if.end8:                                          ; preds = %lor.lhs.false.i34
  %call.i40 = tail call i32 (...) @compute() #4
  %cmp.i41 = icmp sgt i32 %call.i40, -1
  br i1 %cmp.i41, label %if.then11, label %lor.lhs.false.i42

lor.lhs.false.i42:                                ; preds = %if.end8
  %call1.i43 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %cmp2.i44 = icmp sgt i32 %call1.i43, -35
  br i1 %cmp2.i44, label %for.body, label %if.then11

if.then11:                                        ; preds = %lor.lhs.false.i42, %if.end8
  tail call void @abort() #5
  unreachable

for.cond:                                         ; preds = %sw.epilog.i
  %dec = add nsw i32 %i.071, -1
  %cmp13 = icmp samesign ugt i32 %dec, -35
  br i1 %cmp13, label %for.body, label %for.end, !llvm.loop !8

for.body:                                         ; preds = %for.cond, %lor.lhs.false.i42
  %i.071 = phi i32 [ %dec, %for.cond ], [ -4, %lor.lhs.false.i42 ]
  %call.i48 = tail call i32 (...) @compute() #4
  %cmp.i49 = icmp sgt i32 %call.i48, -1
  br i1 %cmp.i49, label %if.then16, label %lor.lhs.false.i50

lor.lhs.false.i50:                                ; preds = %for.body
  %call1.i51 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %cmp2.i52 = icmp slt i32 %call1.i51, -34
  br i1 %cmp2.i52, label %if.then16, label %if.end.i53

if.end.i53:                                       ; preds = %lor.lhs.false.i50
  %switch.tableidx = add nsw i32 %i.071, 34
  %0 = icmp ult i32 %switch.tableidx, 33
  br i1 %0, label %switch.lookup, label %sw.epilog.i

switch.lookup:                                    ; preds = %if.end.i53
  %1 = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [33 x ptr], ptr @switch.table.main, i64 0, i64 %1
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %switch.lookup, %if.end.i53
  %name.0.i = phi ptr [ @.str.1, %if.end.i53 ], [ %switch.load, %switch.lookup ]
  %2 = load i8, ptr %name.0.i, align 1, !tbaa !5
  %3 = icmp eq i8 %2, 105
  br i1 %3, label %for.cond, label %if.then16

if.then16:                                        ; preds = %sw.epilog.i, %lor.lhs.false.i50, %for.body
  tail call void @abort() #5
  unreachable

for.end:                                          ; preds = %for.cond
  %call.i56 = tail call i32 (...) @compute() #4
  %cmp.i57 = icmp sgt i32 %call.i56, -1
  br i1 %cmp.i57, label %if.end21, label %lor.lhs.false.i58

lor.lhs.false.i58:                                ; preds = %for.end
  %call1.i59 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %cmp2.i60 = icmp slt i32 %call1.i59, -34
  br i1 %cmp2.i60, label %if.end21, label %if.then20

if.then20:                                        ; preds = %lor.lhs.false.i58
  tail call void @abort() #5
  unreachable

if.end21:                                         ; preds = %lor.lhs.false.i58, %for.end
  ret i32 0
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = distinct !{!8, !9, !10}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.unroll.disable"}
