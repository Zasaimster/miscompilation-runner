; 106223907305368364470856852940951544830
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/106223907305368364470856852940951544830.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/106223907305368364470856852940951544830.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [30 x i8] c"This function has dead code.\0A\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @f() local_unnamed_addr #0 {
entry:
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  ret i32 %call
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @main() local_unnamed_addr #2 {
entry:
  %call = tail call i32 (...) @deadFunction() #4
  %cmp = icmp sgt i32 %call, 1000
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call.i = tail call noundef i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %cmp2 = icmp sgt i32 %call.i, 999
  br i1 %cmp2, label %return, label %if.end4

if.end4:                                          ; preds = %if.end
  %call.i21 = tail call noundef i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %cmp6 = icmp sgt i32 %call.i21, 1000
  br i1 %cmp6, label %return, label %if.end8

if.end8:                                          ; preds = %if.end4
  %call.i22 = tail call noundef i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %cmp10 = icmp sgt i32 %call.i22, 999
  br i1 %cmp10, label %return, label %if.end12

if.end12:                                         ; preds = %if.end8
  %call.i23 = tail call noundef i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %cmp14 = icmp eq i32 %call.i23, 1000
  br i1 %cmp14, label %return, label %if.end16

if.end16:                                         ; preds = %if.end12
  %call.i24 = tail call noundef i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %cmp18.not = icmp ne i32 %call.i24, 100
  %. = zext i1 %cmp18.not to i32
  br label %return

return:                                           ; preds = %if.end16, %if.end12, %if.end8, %if.end4, %if.end, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ 1, %if.end ], [ 1, %if.end4 ], [ 1, %if.end8 ], [ 1, %if.end12 ], [ %., %if.end16 ]
  ret i32 %retval.0
}

declare i32 @deadFunction(...) local_unnamed_addr #3

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
