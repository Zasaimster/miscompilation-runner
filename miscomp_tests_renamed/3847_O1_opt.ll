; 155254025481601837735037002994204558674
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/155254025481601837735037002994204558674_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/155254025481601837735037002994204558674.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @one(i32 %a) #0 {
entry:
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i32 0, 2) i32 @two(i32 noundef %a, i32 noundef %b) #0 {
entry:
  %cmp.not = icmp ne i32 %a, 1
  %cmp1.not = icmp ne i32 %b, 2
  %narrow = or i1 %cmp.not, %cmp1.not
  %retval.0 = zext i1 %narrow to i32
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i32 0, 2) i32 @three(i32 noundef %a, i32 noundef %b, i32 noundef %c) #0 {
entry:
  %cmp.not = icmp ne i32 %a, 1
  %cmp1.not = icmp ne i32 %b, 2
  %cmp4.not = icmp ne i32 %c, 3
  %0 = or i1 %cmp1.not, %cmp4.not
  %narrow = or i1 %cmp.not, %0
  %retval.0 = zext i1 %narrow to i32
  ret i32 %retval.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 5) i32 @main() local_unnamed_addr #1 {
entry:
  %call = tail call i32 (ptr, i32, ...) @CALL(ptr noundef nonnull @one, i32 noundef 1) #3
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %call1 = tail call i32 (ptr, i32, i32, ...) @CALL(ptr noundef nonnull @two, i32 noundef 1, i32 noundef 2) #3
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %return

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 (ptr, i32, i32, i32, ...) @CALL(ptr noundef nonnull @three, i32 noundef 1, i32 noundef 2, i32 noundef 3) #3
  %tobool6.not = icmp eq i32 %call5, 0
  %. = select i1 %tobool6.not, i32 0, i32 4
  br label %return

return:                                           ; preds = %if.end4, %if.end, %entry
  %retval.0 = phi i32 [ 2, %entry ], [ 3, %if.end ], [ %., %if.end4 ]
  ret i32 %retval.0
}

declare i32 @CALL(...) local_unnamed_addr #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
