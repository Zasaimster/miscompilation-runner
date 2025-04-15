; 130527814351973114733602245557941517907
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/130527814351973114733602245557941517907.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/130527814351973114733602245557941517907.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local global [7 x i32] [i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16

; Function Attrs: nofree nounwind uwtable
define dso_local void @foo(ptr noundef readonly captures(address) %sp, i32 noundef %cnt) local_unnamed_addr #0 {
entry:
  %cmp.not6 = icmp slt i32 %cnt, 0
  br i1 %cmp.not6, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %idx.ext = zext nneg i32 %cnt to i64
  %idx.neg = sub nsw i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i32, ptr %sp, i64 %idx.neg
  br label %for.body

for.cond:                                         ; preds = %for.body
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %p.07, i64 4
  %cmp.not = icmp ugt ptr %incdec.ptr, %sp
  br i1 %cmp.not, label %for.end, label %for.body, !llvm.loop !5

for.body:                                         ; preds = %for.body.preheader, %for.cond
  %p.07 = phi ptr [ %incdec.ptr, %for.cond ], [ %add.ptr, %for.body.preheader ]
  %0 = load i32, ptr %p.07, align 4, !tbaa !8
  %cmp1 = icmp slt i32 %0, 2
  br i1 %cmp1, label %if.then, label %for.cond

if.then:                                          ; preds = %for.body
  tail call void @exit(i32 noundef 0) #4
  unreachable

for.end:                                          ; preds = %for.cond, %entry
  ret void
}

; Function Attrs: nofree noreturn
declare void @exit(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nofree noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  tail call void @foo(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @a, i64 4), i32 noundef 1)
  tail call void @abort() #4
  unreachable
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #3

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }

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
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
