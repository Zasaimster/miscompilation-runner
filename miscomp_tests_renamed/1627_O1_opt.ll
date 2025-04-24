; 129071394463285414631702648551594476440
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/129071394463285414631702648551594476440_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/129071394463285414631702648551594476440.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@str = private unnamed_addr constant [19 x i8] c"This is dead code.\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  br label %if.end

if.end:                                           ; preds = %if.end5, %entry
  %x.010 = phi i32 [ -128, %entry ], [ %inc, %if.end5 ]
  %iszero = icmp eq i32 %x.010, 0
  br i1 %iszero, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end
  %inc = add nsw i32 %x.010, 1
  %exitcond.not = icmp eq i32 %inc, 129
  br i1 %exitcond.not, label %for.end, label %if.end, !llvm.loop !5

for.end:                                          ; preds = %if.end5
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #1

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
!5 = distinct !{!5, !6, !7}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!"llvm.loop.unroll.disable"}
