; 144686933010671991390804866295383713
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/144686933010671991390804866295383713.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/144686933010671991390804866295383713.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree nounwind uwtable
define dso_local void @find(ptr noundef readonly captures(none) %alistp) local_unnamed_addr #0 {
entry:
  %blist.0.sroa.gep2 = getelementptr inbounds nuw i8, ptr %alistp, i64 12
  %0 = load i32, ptr %blist.0.sroa.gep2, align 4, !tbaa !5
  %cmp.not.i = icmp eq i32 %0, 42
  br i1 %cmp.not.i, label %aglChoosePixelFormat.exit, label %if.then.i

if.then.i:                                        ; preds = %entry
  tail call void @abort() #2
  unreachable

aglChoosePixelFormat.exit:                        ; preds = %entry
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @aglChoosePixelFormat(ptr noundef readonly captures(none) %a) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr inbounds nuw i8, ptr %a, i64 12
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %cmp.not = icmp eq i32 %0, 42
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @abort() #2
  unreachable

if.end:                                           ; preds = %entry
  ret void
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #1

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %0 = load i32, ptr inttoptr (i64 12 to ptr), align 4, !tbaa !5
  %cmp.not.i.i = icmp eq i32 %0, 42
  br i1 %cmp.not.i.i, label %find.exit, label %if.then.i.i

if.then.i.i:                                      ; preds = %entry
  tail call void @abort() #2
  unreachable

find.exit:                                        ; preds = %entry
  ret i32 0
}

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

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
