; 127530775123307615870804631515973697358
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/127530775123307615870804631515973697358_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/127530775123307615870804631515973697358.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@str.4 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@str.6 = private unnamed_addr constant [4 x i8] c"out\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local void @fred(i32 noundef %x) local_unnamed_addr #0 {
entry:
  %cond = icmp eq i32 %x, 1
  br i1 %cond, label %sw.bb1, label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %puts7 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.4)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %entry
  %puts9 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.6)
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %puts7.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.4)
  %puts9.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.6)
  %puts9.i1 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.6)
  %puts9.i2 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.6)
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #1

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
