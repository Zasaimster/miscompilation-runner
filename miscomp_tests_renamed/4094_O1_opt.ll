; 171480734152415435140863293177477046532
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/171480734152415435140863293177477046532_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/171480734152415435140863293177477046532.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  tail call fastcc void @bug()
  tail call void @exit(i32 noundef 0) #4
  unreachable
}

; Function Attrs: nounwind uwtable
define internal fastcc void @bug() unnamed_addr #1 {
entry:
  %call6 = tail call i32 (i32, ...) @calculateSquare(i32 noundef 4) #5
  %cmp7 = icmp slt i32 %call6, 5
  br i1 %cmp7, label %for.cond.preheader, label %while.end

for.cond.preheader:                               ; preds = %for.cond.preheader, %entry
  %call = tail call i32 (i32, ...) @calculateSquare(i32 noundef 4) #5
  %cmp = icmp slt i32 %call, 5
  br i1 %cmp, label %for.cond.preheader, label %while.end, !llvm.loop !5

while.end:                                        ; preds = %for.cond.preheader, %entry
  ret void
}

; Function Attrs: nofree noreturn
declare void @exit(i32 noundef) local_unnamed_addr #2

declare i32 @calculateSquare(...) local_unnamed_addr #3

attributes #0 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }
attributes #5 = { nounwind }

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
