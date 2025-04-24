; 180967803715883323984965849718001617598
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/180967803715883323984965849718001617598.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/180967803715883323984965849718001617598.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @g(i32 noundef %i, i32 noundef %j) local_unnamed_addr #0 {
entry:
  %or.cond = icmp ult i32 %i, 2
  br i1 %or.cond, label %if.then2, label %if.end9

if.then2:                                         ; preds = %entry
  %cmp3 = icmp ne i32 %i, %j
  %cmp5 = icmp ne i32 %j, 0
  %or.cond10 = and i1 %cmp3, %cmp5
  br i1 %or.cond10, label %return, label %if.end9

if.end9:                                          ; preds = %if.then2, %entry
  %call = tail call i32 (...) @doNothing() #2
  br label %return

return:                                           ; preds = %if.then2, %if.end9
  %retval.0 = phi i32 [ 1, %if.end9 ], [ 0, %if.then2 ]
  ret i32 %retval.0
}

declare i32 @doNothing(...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %call.i = tail call i32 (...) @doNothing() #2
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
