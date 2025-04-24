; 183632178124835198291609367912786218099
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/183632178124835198291609367912786218099_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/183632178124835198291609367912786218099.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@str = private unnamed_addr constant [29 x i8] c"This function is never used.\00", align 1
@str.2 = private unnamed_addr constant [14 x i8] c"Hello, World!\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local void @fail1() local_unnamed_addr #0 {
entry:
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @fail2() local_unnamed_addr #0 {
entry:
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.2)
  ret void
}

; Function Attrs: cold nofree noreturn nounwind uwtable
define dso_local void @fail3() local_unnamed_addr #1 {
entry:
  tail call void @abort() #6
  unreachable
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #2

; Function Attrs: cold nofree noreturn nounwind uwtable
define dso_local void @fail4() local_unnamed_addr #1 {
entry:
  tail call void @abort() #6
  unreachable
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @foo(i64 noundef %x) local_unnamed_addr #0 {
entry:
  switch i64 %x, label %sw.default [
    i64 -6, label %sw.epilog
    i64 0, label %sw.bb1
    i64 5, label %sw.bb3
    i64 4, label %sw.bb3
    i64 3, label %sw.bb3
    i64 1, label %sw.epilog9
    i64 2, label %sw.bb7
  ]

sw.bb1:                                           ; preds = %entry
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry, %entry, %entry
  tail call void @abort() #6
  unreachable

sw.default:                                       ; preds = %entry
  tail call void @abort() #6
  unreachable

sw.epilog:                                        ; preds = %sw.bb1, %entry
  %str.2.sink = phi ptr [ @str.2, %sw.bb1 ], [ @str, %entry ]
  %puts.i11 = tail call i32 @puts(ptr nonnull dereferenceable(1) %str.2.sink)
  switch i64 %x, label %sw.default8 [
    i64 -3, label %sw.epilog9.sink.split
    i64 0, label %sw.bb5
    i64 4, label %sw.bb5
    i64 1, label %sw.epilog9
    i64 3, label %sw.epilog9
    i64 2, label %sw.bb7
    i64 8, label %sw.bb7
  ]

sw.bb5:                                           ; preds = %sw.epilog, %sw.epilog
  br label %sw.epilog9.sink.split

sw.bb7:                                           ; preds = %sw.epilog, %sw.epilog, %entry
  tail call void @abort() #6
  unreachable

sw.default8:                                      ; preds = %sw.epilog
  tail call void @abort() #6
  unreachable

sw.epilog9.sink.split:                            ; preds = %sw.bb5, %sw.epilog
  %str.2.sink15 = phi ptr [ @str.2, %sw.bb5 ], [ @str, %sw.epilog ]
  %puts.i13 = tail call i32 @puts(ptr nonnull dereferenceable(1) %str.2.sink15)
  br label %sw.epilog9

sw.epilog9:                                       ; preds = %sw.epilog9.sink.split, %sw.epilog, %sw.epilog, %entry
  ret void
}

; Function Attrs: nofree noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #3 {
entry:
  tail call void @exit(i32 noundef 0) #6
  unreachable
}

; Function Attrs: nofree noreturn
declare void @exit(i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #5

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
