; 135191514533644099593415576161267345
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/135191514533644099593415576161267345.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/135191514533644099593415576161267345.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@s = dso_local local_unnamed_addr global i32 0, align 4
@v = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: nofree nounwind uwtable
define dso_local void @bar(i32 noundef %a, i32 noundef %b) local_unnamed_addr #0 {
entry:
  %0 = load i32, ptr @s, align 4, !tbaa !5
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %cmp.not = icmp eq i32 %a, 1
  %cmp8.not = icmp eq i32 %b, 2
  %or.cond = and i1 %cmp.not, %cmp8.not
  br i1 %or.cond, label %if.end23, label %if.then10

if.then10:                                        ; preds = %if.then
  tail call void @abort() #3
  unreachable

if.else:                                          ; preds = %entry
  %cmp15.not = icmp eq i32 %a, 2
  %cmp19.not = icmp eq i32 %b, 1
  %or.cond30 = and i1 %cmp15.not, %cmp19.not
  br i1 %or.cond30, label %if.end23, label %if.then21

if.then21:                                        ; preds = %if.else
  tail call void @abort() #3
  unreachable

if.end23:                                         ; preds = %if.else, %if.then
  %xor = xor i32 %0, 1
  store i32 %xor, ptr @s, align 4, !tbaa !5
  ret void
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #1

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @foo(i32 noundef %x) local_unnamed_addr #0 {
entry:
  %0 = load i32, ptr @s, align 4, !tbaa !5
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then21.i

if.then.i:                                        ; preds = %entry
  %1 = and i32 %x, 255
  %or.cond.i = icmp eq i32 %1, 1
  br i1 %or.cond.i, label %bar.exit, label %if.then10.i

if.then10.i:                                      ; preds = %if.then.i
  tail call void @abort() #3
  unreachable

if.then21.i:                                      ; preds = %entry
  tail call void @abort() #3
  unreachable

bar.exit:                                         ; preds = %if.then.i
  store i32 %0, ptr @s, align 4, !tbaa !5
  ret i32 0
}

; Function Attrs: cold nofree noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  store i32 -10, ptr @v, align 4, !tbaa !5
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
