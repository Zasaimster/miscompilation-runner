; 105539573751415141934697735746965715041
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/105539573751415141934697735746965715041.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/105539573751415141934697735746965715041.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@v = dso_local local_unnamed_addr global i32 0, align 4
@s = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: nofree nounwind uwtable
define dso_local void @bar(i32 noundef %a, i32 noundef %b) local_unnamed_addr #0 {
entry:
  %0 = load i32, ptr @v, align 4, !tbaa !5
  %inc = add i32 %0, 1
  store i32 %inc, ptr @v, align 4, !tbaa !5
  %conv3 = and i32 %inc, 255
  %cmp.not = icmp eq i32 %a, %conv3
  %conv1 = and i32 %0, 255
  %cmp6.not = icmp eq i32 %b, %conv1
  %or.cond = and i1 %cmp6.not, %cmp.not
  br i1 %or.cond, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @abort() #3
  unreachable

if.end:                                           ; preds = %entry
  %1 = load i32, ptr @s, align 4, !tbaa !5
  %xor = xor i32 %1, 1
  store i32 %xor, ptr @s, align 4, !tbaa !5
  ret void
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #1

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @foo(i32 noundef %x) local_unnamed_addr #0 {
entry:
  %conv1 = add i32 %x, 1
  %conv3 = and i32 %conv1, 255
  %0 = load i32, ptr @v, align 4, !tbaa !5
  %inc.i = add i32 %0, 1
  store i32 %inc.i, ptr @v, align 4, !tbaa !5
  %1 = xor i32 %inc.i, %x
  %2 = and i32 %1, 255
  %cmp.not.i = icmp eq i32 %2, 0
  %conv1.i = and i32 %0, 255
  %cmp6.not.i = icmp eq i32 %conv3, %conv1.i
  %or.cond.i = and i1 %cmp6.not.i, %cmp.not.i
  br i1 %or.cond.i, label %bar.exit, label %if.then.i

if.then.i:                                        ; preds = %entry
  tail call void @abort() #3
  unreachable

bar.exit:                                         ; preds = %entry
  %3 = load i32, ptr @s, align 4, !tbaa !5
  %xor.i = xor i32 %3, 1
  store i32 %xor.i, ptr @s, align 4, !tbaa !5
  %inc.i26 = add i32 %0, 2
  store i32 %inc.i26, ptr @v, align 4, !tbaa !5
  %conv3.i27 = and i32 %inc.i26, 255
  %cmp.not.i28 = icmp eq i32 %conv3, %conv3.i27
  br i1 %cmp.not.i28, label %bar.exit34, label %if.then.i32

if.then.i32:                                      ; preds = %bar.exit
  tail call void @abort() #3
  unreachable

bar.exit34:                                       ; preds = %bar.exit
  store i32 %3, ptr @s, align 4, !tbaa !5
  ret i32 0
}

; Function Attrs: cold nofree noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  store i32 -9, ptr @v, align 4, !tbaa !5
  tail call void @abort() #3
  unreachable
}

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
