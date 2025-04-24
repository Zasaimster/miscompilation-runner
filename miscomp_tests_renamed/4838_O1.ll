; 185563900095904074381346419573460589572
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/185563900095904074381346419573460589572.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/185563900095904074381346419573460589572.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @f(i32 noundef %x, double noundef %d1, double noundef %d2, double noundef %d3) local_unnamed_addr #0 {
entry:
  %call = tail call i32 (...) @func1() #5
  ret i32 undef
}

declare i32 @func1(...) local_unnamed_addr #1

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @g(ptr noundef readnone captures(none) %b, ptr noundef readnone captures(none) %s, double noundef %x, double noundef %y, i32 noundef %i, i32 noundef %j) local_unnamed_addr #2 {
entry:
  %cmp = fcmp une double %x, 1.000000e+00
  %cmp1 = fcmp une double %y, 2.000000e+00
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp ne i32 %i, 3
  %or.cond6 = or i1 %or.cond, %cmp3
  %cmp5 = icmp ne i32 %j, 4
  %or.cond7 = or i1 %or.cond6, %cmp5
  br i1 %or.cond7, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @abort() #6
  unreachable

if.end:                                           ; preds = %entry
  ret i32 undef
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #3

; Function Attrs: noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #4 {
entry:
  %call.i = tail call i32 (...) @func1() #5
  %call.i3 = tail call i32 (...) @func1() #5
  unreachable
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
