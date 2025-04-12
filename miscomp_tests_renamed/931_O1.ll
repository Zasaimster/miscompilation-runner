; 140525505536394759874624076871350594876
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/140525505536394759874624076871350594876.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/140525505536394759874624076871350594876.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@buf = dso_local global [1024 x i64] zeroinitializer, align 16

; Function Attrs: nofree nosync nounwind memory(none) uwtable
define dso_local ptr @foo(i64 noundef %n) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq i64 %n, 0
  br i1 %cmp, label %common.ret, label %if.end

common.ret:                                       ; preds = %entry, %if.end
  %common.ret.op = phi ptr [ %1, %if.end ], [ @buf, %entry ]
  ret ptr %common.ret.op

if.end:                                           ; preds = %entry
  %sub = add nsw i64 %n, -1
  %call = tail call ptr @foo(i64 noundef %sub)
  %0 = ptrtoint ptr %call to i64
  %add = add i64 %0, 8
  %1 = inttoptr i64 %add to ptr
  br label %common.ret
}

; Function Attrs: nofree nosync nounwind memory(none) uwtable
define dso_local nonnull ptr @bar(i64 noundef %n) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq i64 %n, 0
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %sub = add nsw i64 %n, -1
  %call = tail call ptr @foo(i64 noundef %sub)
  %add.ptr = getelementptr inbounds nuw i8, ptr %call, i64 8
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi ptr [ %add.ptr, %if.end ], [ @buf, %entry ]
  ret ptr %retval.0
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #1 {
entry:
  br label %for.body

for.cond:                                         ; preds = %bar.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 27
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !5

for.body:                                         ; preds = %entry, %for.cond
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.cond ]
  %call = tail call ptr @foo(i64 noundef %indvars.iv)
  %add.ptr = getelementptr inbounds nuw i64, ptr @buf, i64 %indvars.iv
  %cmp1.not = icmp eq ptr %call, %add.ptr
  br i1 %cmp1.not, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %for.body
  %cmp.i = icmp eq i64 %indvars.iv, 0
  br i1 %cmp.i, label %bar.exit, label %if.end.i

if.end.i:                                         ; preds = %lor.lhs.false
  %sub.i = add nsw i64 %indvars.iv, -1
  %call.i = tail call ptr @foo(i64 noundef %sub.i)
  %add.ptr.i = getelementptr inbounds nuw i8, ptr %call.i, i64 8
  br label %bar.exit

bar.exit:                                         ; preds = %lor.lhs.false, %if.end.i
  %retval.0.i = phi ptr [ %add.ptr.i, %if.end.i ], [ @buf, %lor.lhs.false ]
  %cmp7.not = icmp eq ptr %retval.0.i, %add.ptr
  br i1 %cmp7.not, label %for.cond, label %if.then

if.then:                                          ; preds = %bar.exit, %for.body
  tail call void @abort() #3
  unreachable

for.end:                                          ; preds = %for.cond
  ret i32 0
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #2

attributes #0 = { nofree nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
!5 = distinct !{!5, !6, !7}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!"llvm.loop.unroll.disable"}
