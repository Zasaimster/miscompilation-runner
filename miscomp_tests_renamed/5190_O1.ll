; 1961367687028737824754525125567708939
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/1961367687028737824754525125567708939.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/1961367687028737824754525125567708939.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: cold nofree noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  tail call fastcc void @f(i32 noundef -129)
  tail call void @abort() #3
  unreachable
}

; Function Attrs: nofree nosync nounwind memory(none) uwtable
define internal fastcc void @f(i32 noundef range(i32 -129, 1) %a) unnamed_addr #1 {
entry:
  %and = and i32 %a, 128
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.cond.lr.ph, label %return

do.cond.lr.ph:                                    ; preds = %entry
  tail call fastcc void @f(i32 noundef 0)
  br label %do.cond

do.cond:                                          ; preds = %do.cond, %do.cond.lr.ph
  br label %do.cond

return:                                           ; preds = %entry
  ret void
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #2

attributes #0 = { cold nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
