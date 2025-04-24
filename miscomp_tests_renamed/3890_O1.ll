; 168073587102107742945082562927376370455
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/168073587102107742945082562927376370455.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/168073587102107742945082562927376370455.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"Hello, optimizer!\0A\00", align 1
@str = private unnamed_addr constant [18 x i8] c"Hello, optimizer!\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local range(i32 0, 2) i32 @g(i32 noundef %i, i32 noundef %j) local_unnamed_addr #0 {
entry:
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %cmp = icmp sgt i32 %call, -1
  %cmp1 = icmp slt i32 %i, 2
  %or.cond = and i1 %cmp1, %cmp
  br i1 %or.cond, label %if.then2, label %if.end9

if.then2:                                         ; preds = %entry
  %cmp3 = icmp ne i32 %i, %j
  %cmp5 = icmp ne i32 %j, 0
  %or.cond10 = and i1 %cmp3, %cmp5
  br i1 %or.cond10, label %return, label %if.end9

if.end9:                                          ; preds = %if.then2, %entry
  br label %return

return:                                           ; preds = %if.then2, %if.end9
  %retval.0 = phi i32 [ 1, %if.end9 ], [ 0, %if.then2 ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #2

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
