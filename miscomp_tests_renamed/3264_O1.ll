; 171541100938254999658714912103221684886
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/171541100938254999658714912103221684886.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/171541100938254999658714912103221684886.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %call = tail call i32 (i32, i32, ...) @MAX(i32 noundef undef, i32 noundef 32) #3
  %add2 = add nsw i32 %call, 32
  %call4 = tail call i32 (i32, i32, ...) @MAX(i32 noundef %add2, i32 noundef 32) #3
  %cmp.not = icmp eq i32 %call4, 64
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @abort() #4
  unreachable

if.end:                                           ; preds = %entry
  %call7 = tail call i32 (i32, i32, ...) @MAX(i32 noundef 32, i32 noundef %add2) #3
  %cmp8.not = icmp eq i32 %call7, 64
  br i1 %cmp8.not, label %if.end10, label %if.then9

if.then9:                                         ; preds = %if.end
  tail call void @abort() #4
  unreachable

if.end10:                                         ; preds = %if.end
  %call13 = tail call i32 (i32, i32, ...) @MIN(i32 noundef %add2, i32 noundef 32) #3
  %cmp14.not = icmp eq i32 %call13, 32
  br i1 %cmp14.not, label %if.end16, label %if.then15

if.then15:                                        ; preds = %if.end10
  tail call void @abort() #4
  unreachable

if.end16:                                         ; preds = %if.end10
  %call19 = tail call i32 (i32, i32, ...) @MIN(i32 noundef 32, i32 noundef %add2) #3
  %cmp20.not = icmp eq i32 %call19, 32
  br i1 %cmp20.not, label %if.end22, label %if.then21

if.then21:                                        ; preds = %if.end16
  tail call void @abort() #4
  unreachable

if.end22:                                         ; preds = %if.end16
  ret i32 0
}

declare i32 @MAX(...) local_unnamed_addr #1

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #2

declare i32 @MIN(...) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
