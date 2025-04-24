; 190877023004773838322946272159334998181
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/190877023004773838322946272159334998181.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/190877023004773838322946272159334998181.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local global [80 x i32] zeroinitializer, align 16

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @f(i32 noundef %b) local_unnamed_addr #0 {
entry:
  %cmp.not3 = icmp eq i32 %b, 0
  br i1 %cmp.not3, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %idxprom = sext i32 %b to i64
  %arrayidx = getelementptr inbounds [80 x i32], ptr @a, i64 0, i64 %idxprom
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.body
  %p.05 = phi ptr [ %incdec.ptr, %for.body ], [ %arrayidx, %for.body.preheader ]
  %i.04 = phi i32 [ %dec, %for.body ], [ %b, %for.body.preheader ]
  %dec = add i32 %i.04, -1
  %mul = mul i32 %dec, 3
  %add = add i32 %mul, ptrtoint (ptr @a to i32)
  %incdec.ptr = getelementptr inbounds i8, ptr %p.05, i64 -4
  store i32 %add, ptr %incdec.ptr, align 4, !tbaa !5
  %cmp.not = icmp eq i32 %dec, 0
  br i1 %cmp.not, label %for.end, label %for.body, !llvm.loop !9

for.end:                                          ; preds = %for.body, %entry
  ret i32 undef
}

; Function Attrs: nofree noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #1 {
entry:
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @a, i64 4), align 4, !tbaa !5
  store i32 0, ptr @a, align 16, !tbaa !5
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %entry
  %p.05.i = phi ptr [ %incdec.ptr.i, %for.body.i ], [ getelementptr inbounds nuw (i8, ptr @a, i64 8), %entry ]
  %i.04.i = phi i32 [ %dec.i, %for.body.i ], [ 2, %entry ]
  %dec.i = add nsw i32 %i.04.i, -1
  %mul.i = mul nuw nsw i32 %dec.i, 3
  %add.i = add nuw nsw i32 %mul.i, ptrtoint (ptr @a to i32)
  %incdec.ptr.i = getelementptr inbounds i8, ptr %p.05.i, i64 -4
  store i32 %add.i, ptr %incdec.ptr.i, align 4, !tbaa !5
  %cmp.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.not.i, label %f.exit, label %for.body.i, !llvm.loop !9

f.exit:                                           ; preds = %for.body.i
  %0 = load i32, ptr @a, align 16, !tbaa !5
  %cmp = icmp ne i32 %0, ptrtoint (ptr @a to i32)
  %1 = load i32, ptr getelementptr inbounds nuw (i8, ptr @a, i64 4), align 4
  %cmp1 = icmp ne i32 %1, add (i32 ptrtoint (ptr @a to i32), i32 3)
  %or.cond = select i1 %cmp, i1 true, i1 %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %f.exit
  tail call void @abort() #4
  unreachable

if.end:                                           ; preds = %f.exit
  tail call void @exit(i32 noundef 0) #4
  unreachable
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #2

; Function Attrs: nofree noreturn
declare void @exit(i32 noundef) local_unnamed_addr #3

attributes #0 = { nofree norecurse nosync nounwind memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }

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
