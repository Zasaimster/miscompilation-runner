; 183119386406330961032747954051786680230
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/183119386406330961032747954051786680230_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/183119386406330961032747954051786680230.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"Hello, World!\0A\00", align 1
@nums = dso_local local_unnamed_addr global [3 x i64] [i64 -1, i64 2147483647, i64 -2147483648], align 16

; Function Attrs: nofree nounwind uwtable
define dso_local range(i64 0, 2) i64 @f(i64 noundef %x) local_unnamed_addr #0 {
entry:
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %0 = icmp eq i32 %call, -2147483648
  %div = zext i1 %0 to i64
  ret i64 %div
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef range(i64 -2147483647, 2147483648) i64 @r(i64 noundef %x) local_unnamed_addr #2 {
entry:
  %rem = srem i64 %x, 2147483648
  ret i64 %rem
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i64 0, 2) i64 @std_eqn(i64 noundef %num, i64 noundef %denom, i64 noundef %quot, i64 noundef %rem) local_unnamed_addr #2 {
entry:
  %0 = shl i64 %quot, 31
  %add = sub i64 %rem, %0
  %cmp = icmp eq i64 %add, %num
  %conv1 = zext i1 %cmp to i64
  ret i64 %conv1
}

; Function Attrs: nofree noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #3 {
entry:
  br label %for.body

for.cond:                                         ; preds = %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !5

for.body:                                         ; preds = %for.cond, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.cond ]
  %arrayidx = getelementptr inbounds nuw [3 x i64], ptr @nums, i64 0, i64 %indvars.iv
  %0 = load i64, ptr %arrayidx, align 8, !tbaa !8
  %call.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %1 = icmp eq i32 %call.i, -2147483648
  %2 = load i64, ptr %arrayidx, align 8, !tbaa !8
  %rem.i = srem i64 %2, 2147483648
  %.neg = select i1 %1, i64 -2147483648, i64 0
  %add.i = add nsw i64 %.neg, %rem.i
  %cmp.i.not = icmp eq i64 %add.i, %0
  br i1 %cmp.i.not, label %for.cond, label %if.then

if.then:                                          ; preds = %for.body
  tail call void @abort() #6
  unreachable

for.end:                                          ; preds = %for.cond
  tail call void @exit(i32 noundef 0) #6
  unreachable
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #4

; Function Attrs: nofree noreturn
declare void @exit(i32 noundef) local_unnamed_addr #5

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind }

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
!9 = !{!"long", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
