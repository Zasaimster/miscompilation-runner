; 16609971999323114973120826336922353209
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/16609971999323114973120826336922353209_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/16609971999323114973120826336922353209.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@str = private unnamed_addr constant [25 x i8] c"This branch is executed.\00", align 1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @main() local_unnamed_addr #0 {
entry:
  %call = tail call i32 (...) @ZERO_0() #3
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %call2 = tail call i32 (i32, ...) @ZERO_1(i32 noundef 1) #3
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %return

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 (i32, i32, ...) @ZERO_2(i32 noundef 1, i32 noundef 2) #3
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %return

if.end9:                                          ; preds = %if.end5
  %call10 = tail call i32 (i32, ...) @ZERO_VAR(i32 noundef 1) #3
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %return

if.end13:                                         ; preds = %if.end9
  %call14 = tail call i32 (i32, i32, ...) @ZERO_VAR(i32 noundef 1, i32 noundef 2) #3
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %return

if.end17:                                         ; preds = %if.end13
  %call18 = tail call i32 (i32, i32, ...) @ZERO_1_VAR(i32 noundef 1, i32 noundef 2) #3
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %return

if.end21:                                         ; preds = %if.end17
  %call22 = tail call i32 (i32, i32, i32, ...) @ZERO_1_VAR(i32 noundef 1, i32 noundef 2, i32 noundef 3) #3
  %tobool23.not = icmp ne i32 %call22, 0
  %. = zext i1 %tobool23.not to i32
  br label %return

return:                                           ; preds = %if.end21, %if.end17, %if.end13, %if.end9, %if.end5, %if.end, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ 1, %if.end ], [ 1, %if.end5 ], [ 1, %if.end9 ], [ 1, %if.end13 ], [ 1, %if.end17 ], [ %., %if.end21 ]
  ret i32 %retval.0
}

declare i32 @ZERO_0(...) local_unnamed_addr #1

declare i32 @ZERO_1(...) local_unnamed_addr #1

declare i32 @ZERO_2(...) local_unnamed_addr #1

declare i32 @ZERO_VAR(...) local_unnamed_addr #1

declare i32 @ZERO_1_VAR(...) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
