; 146337262085697521097197162575813585417
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/146337262085697521097197162575813585417.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/146337262085697521097197162575813585417.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@yf = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: nounwind uwtable
define dso_local void @pl(i32 noundef %q5, i32 noundef %nd) local_unnamed_addr #0 {
entry:
  %call = tail call i32 (...) @doNothing() #3
  %cmp = icmp eq i32 %q5, 0
  br i1 %cmp, label %cond.end, label %cond.false

cond.false:                                       ; preds = %entry
  %div = udiv i32 %call, %q5
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.false
  %cond = phi i32 [ %div, %cond.false ], [ %call, %entry ]
  %cmp1 = icmp sgt i32 %nd, 1
  %cmp2.not11 = icmp eq i32 %cond, 0
  %cmp2.not = select i1 %cmp1, i1 true, i1 %cmp2.not11
  %cond7 = select i1 %cmp2.not, i32 0, i32 %nd
  store i32 %cond7, ptr @yf, align 4, !tbaa !5
  ret void
}

declare i32 @doNothing(...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %0 = load i32, ptr @yf, align 4, !tbaa !5
  %tobool.not = icmp eq i32 %0, 0
  %call.i = tail call i32 (...) @doNothing() #3
  %cmp2.not11.i = icmp ne i32 %call.i, 0
  %narrow = select i1 %cmp2.not11.i, i1 %tobool.not, i1 false
  %cond7.i = zext i1 %narrow to i32
  store i32 %cond7.i, ptr @yf, align 4, !tbaa !5
  br i1 %narrow, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @abort() #4
  unreachable

if.end:                                           ; preds = %entry
  ret i32 0
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { noreturn nounwind }

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
