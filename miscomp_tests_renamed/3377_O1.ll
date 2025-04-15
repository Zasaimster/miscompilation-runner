; 171136356105968765049489254784118331045
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/171136356105968765049489254784118331045.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/171136356105968765049489254784118331045.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @main() local_unnamed_addr #0 {
entry:
  %call = tail call i32 (i32, ...) @ZERO_1(i32 noundef 1) #2
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %call1 = tail call i32 (i32, i32, ...) @ZERO_2(i32 noundef 1, i32 noundef 2) #2
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %return

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 (i32, ...) @ZERO_VAR(i32 noundef 1) #2
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %return

if.end8:                                          ; preds = %if.end4
  %call9 = tail call i32 (i32, i32, ...) @ZERO_VAR(i32 noundef 1, i32 noundef 2) #2
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %return

if.end12:                                         ; preds = %if.end8
  %call13 = tail call i32 (i32, i32, ...) @ZERO_1_VAR(i32 noundef 1, i32 noundef 2) #2
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %return

if.end16:                                         ; preds = %if.end12
  %call17 = tail call i32 (i32, i32, i32, ...) @ZERO_1_VAR(i32 noundef 1, i32 noundef 2, i32 noundef 3) #2
  %tobool18.not = icmp ne i32 %call17, 0
  %. = zext i1 %tobool18.not to i32
  br label %return

return:                                           ; preds = %if.end16, %if.end12, %if.end8, %if.end4, %if.end, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ 1, %if.end ], [ 1, %if.end4 ], [ 1, %if.end8 ], [ 1, %if.end12 ], [ %., %if.end16 ]
  ret i32 %retval.0
}

declare i32 @ZERO_1(...) local_unnamed_addr #1

declare i32 @ZERO_2(...) local_unnamed_addr #1

declare i32 @ZERO_VAR(...) local_unnamed_addr #1

declare i32 @ZERO_1_VAR(...) local_unnamed_addr #1

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
