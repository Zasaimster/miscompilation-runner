; 194016112782030348235524740761657024184
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/194016112782030348235524740761657024184_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/194016112782030348235524740761657024184.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@global = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @bar() local_unnamed_addr #0 {
entry:
  %call.i = tail call i32 (...) @func2() #3
  %cmp.i.not = icmp eq i32 %call.i, 0
  %. = zext i1 %cmp.i.not to i32
  %storemerge.in = load i32, ptr @global, align 4, !tbaa !5
  %storemerge = add nsw i32 %storemerge.in, 1
  store i32 %storemerge, ptr @global, align 4, !tbaa !5
  ret i32 %.
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  store i32 1, ptr @global, align 4, !tbaa !5
  %call.i.i = tail call i32 (...) @func2() #3
  %cmp.i.not.i.not = icmp eq i32 %call.i.i, 0
  %storemerge.in.i = load i32, ptr @global, align 4, !tbaa !5
  %storemerge.i = add nsw i32 %storemerge.in.i, 1
  store i32 %storemerge.i, ptr @global, align 4, !tbaa !5
  br i1 %cmp.i.not.i.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @abort() #4
  unreachable

if.end:                                           ; preds = %entry
  ret i32 0
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #1

declare i32 @func2(...) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
