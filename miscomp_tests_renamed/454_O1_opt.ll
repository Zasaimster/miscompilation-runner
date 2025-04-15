; 118443221054176333808124391700758772726
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/118443221054176333808124391700758772726_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/118443221054176333808124391700758772726.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree nosync nounwind memory(none) uwtable
define dso_local i32 @f(i32 noundef %a, ptr readnone captures(none) %y) local_unnamed_addr #0 {
entry:
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse, %entry
  %a.tr = phi i32 [ %a, %entry ], [ %sub, %tailrecurse ]
  %ret.tr = phi i32 [ poison, %entry ], [ %current.ret.tr, %tailrecurse ]
  %ret.known.tr = phi i1 [ false, %entry ], [ true, %tailrecurse ]
  %sub = add nsw i32 %a.tr, -1
  %current.ret.tr = select i1 %ret.known.tr, i32 %ret.tr, i32 undef
  br label %tailrecurse
}

; Function Attrs: nofree noreturn nosync nounwind memory(none) uwtable
define dso_local noundef i32 @main(i32 noundef %argc, ptr noundef readnone captures(none) %argv) local_unnamed_addr #1 {
entry:
  %call = tail call i32 @f(i32 noundef 100, ptr poison)
  unreachable
}

attributes #0 = { nofree nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noreturn nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
