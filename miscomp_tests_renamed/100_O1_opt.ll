; 101799602707691303513909017342671613009
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/101799602707691303513909017342671613009_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/101799602707691303513909017342671613009.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"Hello, World!\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @f(i32 noundef %x, double noundef %d1, double noundef %d2, double noundef %d3) local_unnamed_addr #0 {
entry:
  %call = tail call i32 (...) @doNothing() #7
  ret i32 %call
}

declare i32 @doNothing(...) local_unnamed_addr #1

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @g(ptr readnone captures(none) %b, ptr readnone captures(none) %s, double %x, double noundef %y, i32 noundef %i, i32 noundef %j) local_unnamed_addr #2 {
entry:
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %cmp = icmp ne i32 %call, 1
  %cmp2 = fcmp une double %y, 2.000000e+00
  %or.cond = or i1 %cmp2, %cmp
  %cmp5 = icmp ne i32 %i, 3
  %or.cond10 = or i1 %cmp5, %or.cond
  %cmp8 = icmp ne i32 %j, 4
  %or.cond11 = or i1 %cmp8, %or.cond10
  br i1 %or.cond11, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @abort() #8
  unreachable

if.end:                                           ; preds = %entry
  ret i32 undef
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #4

; Function Attrs: noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #5 {
entry:
  %call.i = tail call i32 (...) @doNothing() #7
  %call.i3 = tail call i32 (...) @doNothing() #7
  %call2 = tail call i32 @g(ptr nonnull poison, ptr nonnull poison, double poison, double noundef 2.000000e+00, i32 noundef %call.i, i32 noundef %call.i3)
  tail call void @exit(i32 noundef 0) #8
  unreachable
}

; Function Attrs: nofree noreturn
declare void @exit(i32 noundef) local_unnamed_addr #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
