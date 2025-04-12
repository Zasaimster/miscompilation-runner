; 108161881556718104679481003671630125440
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/108161881556718104679481003671630125440_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/108161881556718104679481003671630125440.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @g(i32 noundef %i, i32 noundef %c, ptr noundef readonly captures(none) %ff, ptr noundef writeonly captures(none) initializes((0, 4)) %p) local_unnamed_addr #0 {
entry:
  %tobool.not = icmp eq i32 %c, 0
  %call = tail call i32 (...) @pointlessFunction() #2
  store i32 0, ptr %p, align 4, !tbaa !5
  br i1 %tobool.not, label %entry.then, label %entry.cont

entry.then:                                       ; preds = %entry
  %.then.val = load i32, ptr %ff, align 4, !tbaa !5
  br label %entry.cont

entry.cont:                                       ; preds = %entry.then, %entry
  %0 = phi i32 [ %.then.val, %entry.then ], [ %i, %entry ]
  ret i32 %0
}

declare i32 @pointlessFunction(...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %call.i = tail call i32 (...) @pointlessFunction() #2
  ret i32 0
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

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
