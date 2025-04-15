; 104490229012766072287580229023612747407
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/104490229012766072287580229023612747407.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/104490229012766072287580229023612747407.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a3 = dso_local local_unnamed_addr global [3 x i32] zeroinitializer, align 4

; Function Attrs: nounwind uwtable
define dso_local void @f(ptr noundef writeonly captures(none) %a) local_unnamed_addr #0 {
entry:
  br label %for.body

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ 2, %entry ], [ %indvars.iv.next, %for.body ]
  %0 = trunc nuw nsw i64 %indvars.iv to i32
  %div = udiv i32 42, %0
  %arrayidx = getelementptr inbounds nuw i32, ptr %a, i64 %indvars.iv
  store i32 %div, ptr %arrayidx, align 4, !tbaa !5
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %tobool.not = icmp eq i64 %indvars.iv.next, 0
  br i1 %tobool.not, label %for.end, label %for.body, !llvm.loop !9

for.end:                                          ; preds = %for.body
  %call = tail call i32 (...) @deadFunction() #5
  ret void
}

declare i32 @deadFunction(...) local_unnamed_addr #1

; Function Attrs: noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %entry
  %indvars.iv.i = phi i64 [ 2, %entry ], [ %indvars.iv.next.i, %for.body.i ]
  %0 = trunc nuw nsw i64 %indvars.iv.i to i32
  %div.i = udiv i32 42, %0
  %arrayidx.i = getelementptr inbounds nuw i32, ptr @a3, i64 %indvars.iv.i
  store i32 %div.i, ptr %arrayidx.i, align 4, !tbaa !5
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %tobool.not.i = icmp eq i64 %indvars.iv.next.i, 0
  br i1 %tobool.not.i, label %f.exit, label %for.body.i, !llvm.loop !9

f.exit:                                           ; preds = %for.body.i
  %call.i = tail call i32 (...) @deadFunction() #5
  %1 = load i32, ptr getelementptr inbounds nuw (i8, ptr @a3, i64 4), align 4, !tbaa !5
  %cmp = icmp ne i32 %1, 42
  %2 = load i32, ptr getelementptr inbounds nuw (i8, ptr @a3, i64 8), align 4
  %cmp1 = icmp ne i32 %2, 21
  %or.cond = select i1 %cmp, i1 true, i1 %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %f.exit
  tail call void @abort() #6
  unreachable

if.end:                                           ; preds = %f.exit
  tail call void @exit(i32 noundef 0) #6
  unreachable
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #3

; Function Attrs: nofree noreturn
declare void @exit(i32 noundef) local_unnamed_addr #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
