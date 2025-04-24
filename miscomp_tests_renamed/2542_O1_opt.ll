; 143947518897890626058075612527110270593
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/143947518897890626058075612527110270593_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/143947518897890626058075612527110270593.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.A = type { float, i32 }

@.str = private unnamed_addr constant [13 x i8] c"Hello World\0A\00", align 1
@a = dso_local local_unnamed_addr global %struct.A zeroinitializer, align 4
@b = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: nofree nounwind uwtable
define dso_local void @foo() local_unnamed_addr #0 {
entry:
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  store i32 %call, ptr getelementptr inbounds nuw (i8, ptr @a, i64 4), align 4, !tbaa !5
  %0 = load i32, ptr @b, align 4, !tbaa !11
  %sub = add nsw i32 %0, -1
  %cond = tail call i32 @llvm.smin.i32(i32 %call, i32 %sub)
  store i32 %cond, ptr getelementptr inbounds nuw (i8, ptr @a, i64 4), align 4, !tbaa !5
  %cmp3.not = icmp slt i32 %call, %sub
  br i1 %cmp3.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @abort() #5
  unreachable

if.end:                                           ; preds = %entry
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #1

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @bar(float noundef %x) local_unnamed_addr #3 {
entry:
  ret i32 2241
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  store float 1.000000e+00, ptr @a, align 4, !tbaa !12
  store i32 3384, ptr @b, align 4, !tbaa !11
  %call.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  store i32 %call.i, ptr getelementptr inbounds nuw (i8, ptr @a, i64 4), align 4, !tbaa !5
  %0 = load i32, ptr @b, align 4, !tbaa !11
  %sub.i = add nsw i32 %0, -1
  %cond.i = tail call i32 @llvm.smin.i32(i32 %call.i, i32 %sub.i)
  store i32 %cond.i, ptr getelementptr inbounds nuw (i8, ptr @a, i64 4), align 4, !tbaa !5
  %cmp3.not.i = icmp slt i32 %call.i, %sub.i
  br i1 %cmp3.not.i, label %foo.exit, label %if.then.i

if.then.i:                                        ; preds = %entry
  tail call void @abort() #5
  unreachable

foo.exit:                                         ; preds = %entry
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
!5 = !{!6, !10, i64 4}
!6 = !{!"A", !7, i64 0, !10, i64 4}
!7 = !{!"float", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!6, !7, i64 0}
