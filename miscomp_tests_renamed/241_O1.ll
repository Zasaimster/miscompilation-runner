; 193284325356924367775646572486959045112
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/193284325356924367775646572486959045112.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/193284325356924367775646572486959045112.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @t1(ptr noundef captures(none) %f, i32 noundef %i, ptr noundef readnone captures(none) %f1, ptr noundef readonly captures(none) %f2) local_unnamed_addr #0 {
entry:
  %0 = sext i32 %i to i64
  %1 = getelementptr float, ptr %f, i64 %0
  %arrayidx = getelementptr i8, ptr %1, i64 4
  %2 = load float, ptr %arrayidx, align 4, !tbaa !5
  store float %2, ptr %1, align 4, !tbaa !5
  tail call void %f2(float noundef 2.500000e+00, float noundef 3.500000e+00) #5
  ret i32 undef
}

; Function Attrs: nounwind uwtable
define dso_local i32 @t2(ptr noundef captures(none) %f, i32 noundef %i, ptr noundef readonly captures(none) %f1, ptr noundef readonly captures(none) %f2, ptr noundef readonly captures(none) %f3) local_unnamed_addr #0 {
entry:
  tail call void %f3(float noundef 6.000000e+00) #5
  tail call void %f1(double noundef 3.000000e+00) #5
  %0 = sext i32 %i to i64
  %1 = getelementptr float, ptr %f, i64 %0
  %arrayidx = getelementptr i8, ptr %1, i64 4
  %2 = load float, ptr %arrayidx, align 4, !tbaa !5
  store float %2, ptr %1, align 4, !tbaa !5
  tail call void %f2(float noundef 2.500000e+00, float noundef 3.500000e+00) #5
  ret i32 undef
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @f1(double noundef %d) local_unnamed_addr #1 {
entry:
  %cmp = fcmp une double %d, 3.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @abort() #6
  unreachable

if.end:                                           ; preds = %entry
  ret void
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define dso_local void @f2(float noundef %f1, float noundef %f2) local_unnamed_addr #1 {
entry:
  %cmp = fcmp une float %f1, 2.500000e+00
  %cmp1 = fcmp une float %f2, 3.500000e+00
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @abort() #6
  unreachable

if.end:                                           ; preds = %entry
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @f3(float noundef %f) local_unnamed_addr #1 {
entry:
  %cmp = fcmp une float %f, 6.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @abort() #6
  unreachable

if.end:                                           ; preds = %entry
  ret void
}

; Function Attrs: nofree noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #3 {
entry:
  tail call void @exit(i32 noundef 0) #6
  unreachable
}

; Function Attrs: nofree noreturn
declare void @exit(i32 noundef) local_unnamed_addr #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!6 = !{!"float", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
