; 147114098535940840469452383790388705082
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/147114098535940840469452383790388705082.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/147114098535940840469452383790388705082.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"Hello, World!\0A\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local x86_fp80 @f(x86_fp80 noundef %d, i32 noundef %i) local_unnamed_addr #0 {
entry:
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %conv = sitofp i32 %call to x86_fp80
  %neg = fneg x86_fp80 %conv
  %0 = tail call x86_fp80 @llvm.fmuladd.f80(x86_fp80 %neg, x86_fp80 0xK00000000000000000000, x86_fp80 0xK00000000000000000000)
  %1 = tail call x86_fp80 @llvm.fmuladd.f80(x86_fp80 %neg, x86_fp80 %0, x86_fp80 %0)
  %2 = tail call x86_fp80 @llvm.fmuladd.f80(x86_fp80 %neg, x86_fp80 %1, x86_fp80 %1)
  %3 = tail call x86_fp80 @llvm.fmuladd.f80(x86_fp80 %neg, x86_fp80 %2, x86_fp80 %2)
  %4 = tail call x86_fp80 @llvm.fmuladd.f80(x86_fp80 %neg, x86_fp80 %3, x86_fp80 %3)
  ret x86_fp80 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare x86_fp80 @llvm.fmuladd.f80(x86_fp80, x86_fp80, x86_fp80) #2

; Function Attrs: nofree noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #3 {
entry:
  %call.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %conv.i = sitofp i32 %call.i to x86_fp80
  %neg.i = fneg x86_fp80 %conv.i
  %0 = tail call x86_fp80 @llvm.fmuladd.f80(x86_fp80 %neg.i, x86_fp80 0xK00000000000000000000, x86_fp80 0xK00000000000000000000)
  %1 = tail call x86_fp80 @llvm.fmuladd.f80(x86_fp80 %neg.i, x86_fp80 %0, x86_fp80 %0)
  %2 = tail call x86_fp80 @llvm.fmuladd.f80(x86_fp80 %neg.i, x86_fp80 %1, x86_fp80 %1)
  %3 = tail call x86_fp80 @llvm.fmuladd.f80(x86_fp80 %neg.i, x86_fp80 %2, x86_fp80 %2)
  %4 = tail call x86_fp80 @llvm.fmuladd.f80(x86_fp80 %neg.i, x86_fp80 %3, x86_fp80 %3)
  %conv = fptosi x86_fp80 %4 to i32
  %tobool.not = icmp eq i32 %conv, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @abort() #6
  unreachable

if.end:                                           ; preds = %entry
  tail call void @exit(i32 noundef 0) #6
  unreachable
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #4

; Function Attrs: nofree noreturn
declare void @exit(i32 noundef) local_unnamed_addr #5

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
