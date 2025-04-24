; 140372908908063140073914226910799422722
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/140372908908063140073914226910799422722_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/140372908908063140073914226910799422722.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.foo = type { i32, i32, i32, ptr, float }

@.str = private unnamed_addr constant [11 x i8] c"Loop done\0A\00", align 1
@str.1 = private unnamed_addr constant [10 x i8] c"Loop done\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @f1(ptr noundef readnone byval(%struct.foo) align 8 captures(none) %f, ptr noundef readonly captures(none) %p, i32 noundef %n, ...) local_unnamed_addr #0 {
entry:
  %call = tail call i32 (...) @example8() #4
  %0 = load i32, ptr %p, align 8, !tbaa !5
  %cmp.not = icmp eq i32 %call, %0
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %call1 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %add = add nsw i32 %call1, %n
  br label %return

return:                                           ; preds = %if.end, %entry
  %retval.0 = phi i32 [ %add, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

declare i32 @example8(...) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %call.i = tail call i32 (...) @example8() #4
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %if.end.i, label %f1.exit

if.end.i:                                         ; preds = %entry
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %f1.exit

f1.exit:                                          ; preds = %if.end.i, %entry
  %call.i4 = tail call i32 (...) @example8() #4
  %cmp.not.i5 = icmp eq i32 %call.i4, 1
  br i1 %cmp.not.i5, label %if.end.i7, label %f1.exit10

if.end.i7:                                        ; preds = %f1.exit
  %puts14 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  br label %f1.exit10

f1.exit10:                                        ; preds = %if.end.i7, %f1.exit
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"foo", !7, i64 0, !7, i64 4, !7, i64 8, !10, i64 16, !12, i64 24}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"p1 omnipotent char", !11, i64 0}
!11 = !{!"any pointer", !8, i64 0}
!12 = !{!"float", !8, i64 0}
