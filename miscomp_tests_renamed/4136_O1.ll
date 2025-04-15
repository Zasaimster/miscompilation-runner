; 128542229742448782280250579868703486859
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/128542229742448782280250579868703486859.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/128542229742448782280250579868703486859.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local range(i32 5, 13) i32 @test_store_ccp(i32 noundef %i) local_unnamed_addr #0 {
entry:
  %call = tail call i32 (...) @unusedFunction() #4
  %cmp = icmp slt i32 %call, 5
  %cmp1 = icmp sgt i32 %i, 8
  %0 = select i1 %cmp1, i32 5, i32 12
  %add = select i1 %cmp, i32 12, i32 %0
  ret i32 %add
}

declare i32 @unusedFunction(...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @test_store_copy_prop(i32 noundef %i) local_unnamed_addr #2 {
entry:
  %cmp1 = icmp sgt i32 %i, 8
  %.sroa.speculate.load.false.sroa.speculated = zext i1 %cmp1 to i32
  %.sroa.speculated = add nsw i32 %i, %.sroa.speculate.load.false.sroa.speculated
  ret i32 %.sroa.speculated
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %call.i = tail call i32 (...) @unusedFunction() #4
  %cmp.i = icmp slt i32 %call.i, 5
  br i1 %cmp.i, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  tail call void @abort() #5
  unreachable

if.end4:                                          ; preds = %entry
  ret i32 0
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
