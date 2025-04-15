; 157658020400645697206218107397816664512
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/157658020400645697206218107397816664512.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/157658020400645697206218107397816664512.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@e = dso_local local_unnamed_addr global i32 1, align 4
@c = dso_local local_unnamed_addr global i32 0, align 4
@b = dso_local local_unnamed_addr global i32 0, align 4
@d = dso_local local_unnamed_addr global i32 0, align 4
@f = dso_local local_unnamed_addr global i32 0, align 4
@g = dso_local local_unnamed_addr global i32 0, align 4
@h = dso_local local_unnamed_addr global i32 0, align 4
@j = dso_local local_unnamed_addr global i32 0, align 4
@str = private unnamed_addr constant [14 x i8] c"Hello, World!\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %puts.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %0 = load i32, ptr @c, align 4, !tbaa !5
  %tobool.i = icmp ne i32 %0, 0
  %1 = load i32, ptr @b, align 4
  %tobool1.i = icmp ne i32 %1, 0
  %2 = select i1 %tobool.i, i1 true, i1 %tobool1.i
  %lor.ext.i = zext i1 %2 to i32
  %3 = load i32, ptr @e, align 4, !tbaa !5
  %rem.i = srem i32 %lor.ext.i, %3
  store i32 %rem.i, ptr @g, align 4, !tbaa !5
  %tobool2.i = icmp ne i32 %rem.i, 0
  %4 = load i32, ptr @f, align 4
  %tobool3.i = icmp ne i32 %4, 0
  %or.cond.i = select i1 %tobool2.i, i1 true, i1 %tobool3.i
  %or.cond9.i = select i1 %or.cond.i, i1 %tobool1.i, i1 false
  br i1 %or.cond9.i, label %fn1.exit, label %if.end.i

if.end.i:                                         ; preds = %entry
  %5 = load i32, ptr @d, align 4, !tbaa !5
  store i32 %5, ptr @e, align 4, !tbaa !5
  %tobool5.not.i = icmp eq i32 %5, 0
  %storemerge11.i = select i1 %tobool5.not.i, i32 -4, i32 -5
  store i32 %storemerge11.i, ptr @c, align 4, !tbaa !5
  store i32 %storemerge11.i, ptr @j, align 4, !tbaa !5
  br label %fn1.exit

fn1.exit:                                         ; preds = %entry, %if.end.i
  %6 = load i32, ptr @c, align 4, !tbaa !5
  %cmp.not = icmp eq i32 %6, -4
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %fn1.exit
  tail call void @abort() #3
  unreachable

if.end:                                           ; preds = %fn1.exit
  ret i32 0
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #2

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
