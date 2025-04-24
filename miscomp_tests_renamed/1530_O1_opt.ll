; 127323679828563799625252319185637351470
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/127323679828563799625252319185637351470_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/127323679828563799625252319185637351470.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a3 = dso_local local_unnamed_addr global [0 x i32] zeroinitializer, align 4

; Function Attrs: nofree norecurse noreturn nosync nounwind memory(argmem: write) uwtable
define dso_local void @f(ptr noundef writeonly captures(none) %a) local_unnamed_addr #0 {
entry:
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ -1, %entry ], [ %indvars.iv.next, %for.body ]
  %0 = trunc nsw i64 %indvars.iv to i32
  %div = sdiv i32 42, %0
  %arrayidx = getelementptr inbounds i32, ptr %a, i64 %indvars.iv
  store i32 %div, ptr %arrayidx, align 4, !tbaa !5
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  br label %for.body
}

; Function Attrs: nofree norecurse noreturn nosync nounwind memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local noundef i32 @main() local_unnamed_addr #1 {
entry:
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %entry
  %indvars.iv.i = phi i64 [ -1, %entry ], [ %indvars.iv.next.i, %for.body.i ]
  %0 = trunc nsw i64 %indvars.iv.i to i32
  %div.i = sdiv i32 42, %0
  %arrayidx.i = getelementptr inbounds i32, ptr @a3, i64 %indvars.iv.i
  store i32 %div.i, ptr %arrayidx.i, align 4, !tbaa !5
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  br label %for.body.i
}

attributes #0 = { nofree norecurse noreturn nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse noreturn nosync nounwind memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
