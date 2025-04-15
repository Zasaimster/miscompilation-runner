; 156782508459892121685732654401787131984
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/156782508459892121685732654401787131984.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/156782508459892121685732654401787131984.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"Program runs!\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"I am not used!\0A\00", align 1
@a = dso_local local_unnamed_addr global i32 0, align 4
@b = dso_local local_unnamed_addr global i8 0, align 1
@d = dso_local local_unnamed_addr global i8 0, align 1
@c = dso_local local_unnamed_addr global i16 0, align 2

; Function Attrs: nofree nounwind uwtable
define dso_local noundef signext i16 @fn1(i32 noundef %p1, i32 noundef %p2) local_unnamed_addr #0 {
entry:
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %cmp = icmp sgt i32 %call, 1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %call1 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1)
  br label %cond.end

cond.false:                                       ; preds = %entry
  %cmp2 = icmp sgt i32 %p1, %p2
  %conv = zext i1 %cmp2 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call1, %cond.true ], [ %conv, %cond.false ]
  %conv3 = trunc i32 %cond to i16
  ret i16 %conv3
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #1

; Function Attrs: nofree noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  store i8 1, ptr @b, align 1, !tbaa !5
  br label %for.body

for.body:                                         ; preds = %entry, %fn1.exit
  %storemerge17 = phi i8 [ 1, %entry ], [ %inc, %fn1.exit ]
  %0 = load i32, ptr @a, align 4, !tbaa !8
  %cmp2 = icmp ne i32 %0, 5
  %1 = load i8, ptr @d, align 1
  %tobool = icmp ne i8 %1, 0
  %2 = select i1 %cmp2, i1 true, i1 %tobool
  %conv5 = zext i1 %2 to i16
  store i16 %conv5, ptr @c, align 2, !tbaa !10
  %call.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %cmp.i = icmp sgt i32 %call.i, 1
  br i1 %cmp.i, label %cond.true.i, label %cond.false.i

cond.true.i:                                      ; preds = %for.body
  %call1.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1)
  br label %fn1.exit

cond.false.i:                                     ; preds = %for.body
  %tobool10 = icmp ne i8 %storemerge17, 0
  %3 = or i1 %tobool10, %2
  %lor.ext12 = zext i1 %3 to i32
  %cmp2.i = icmp slt i32 %0, %lor.ext12
  %conv.i = zext i1 %cmp2.i to i32
  br label %fn1.exit

fn1.exit:                                         ; preds = %cond.true.i, %cond.false.i
  %cond.i = phi i32 [ %call1.i, %cond.true.i ], [ %conv.i, %cond.false.i ]
  %sext = shl i32 %cond.i, 16
  %conv13 = ashr exact i32 %sext, 16
  store i32 %conv13, ptr @a, align 4, !tbaa !8
  %4 = load i8, ptr @b, align 1, !tbaa !5
  %inc = add i8 %4, 1
  store i8 %inc, ptr @b, align 1, !tbaa !5
  %cmp = icmp slt i8 %inc, 10
  br i1 %cmp, label %for.body, label %for.end, !llvm.loop !12

for.end:                                          ; preds = %fn1.exit
  %5 = load i32, ptr @a, align 4, !tbaa !8
  %cmp15.not = icmp eq i32 %5, 1
  br i1 %cmp15.not, label %if.end, label %if.then

if.then:                                          ; preds = %for.end
  tail call void @abort() #5
  unreachable

if.end:                                           ; preds = %for.end
  tail call void @exit(i32 noundef 0) #5
  unreachable
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #3

; Function Attrs: nofree noreturn
declare void @exit(i32 noundef) local_unnamed_addr #4

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !6, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"short", !6, i64 0}
!12 = distinct !{!12, !13, !14}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!"llvm.loop.unroll.disable"}
