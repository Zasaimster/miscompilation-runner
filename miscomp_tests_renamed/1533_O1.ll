; 127408567692952751095134411767696653269
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/127408567692952751095134411767696653269.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/127408567692952751095134411767696653269.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@c = dso_local local_unnamed_addr global i32 1, align 4
@e = dso_local local_unnamed_addr global i32 0, align 4
@g = dso_local local_unnamed_addr global i32 0, align 4
@b = dso_local global i32 0, align 4
@d = dso_local local_unnamed_addr global i32 0, align 4
@f = dso_local local_unnamed_addr global i8 0, align 1
@i = dso_local local_unnamed_addr global i16 0, align 2
@h = dso_local local_unnamed_addr global i64 0, align 8
@a = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: nofree norecurse noreturn nosync nounwind memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @foo() local_unnamed_addr #0 {
entry:
  store i32 5, ptr @e, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.cond, %entry
  br label %for.cond, !llvm.loop !9
}

; Function Attrs: nofree norecurse noreturn nounwind memory(readwrite, argmem: none) uwtable
define dso_local noundef i32 @main() local_unnamed_addr #1 {
entry:
  %0 = load i32, ptr @g, align 4, !tbaa !5
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load volatile i32, ptr @b, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 5, ptr @e, align 4, !tbaa !5
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i, %if.end
  br label %for.cond.i, !llvm.loop !9
}

attributes #0 = { nofree norecurse noreturn nosync nounwind memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse noreturn nounwind memory(readwrite, argmem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.unroll.disable"}
