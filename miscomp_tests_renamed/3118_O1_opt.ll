; 137874070132732333722715798588999496081
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/137874070132732333722715798588999496081_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/137874070132732333722715798588999496081.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"Start\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"End\0A\00", align 1
@f3.x = internal unnamed_addr global i32 0, align 4

; Function Attrs: nofree nounwind uwtable
define dso_local void @ff(i32 noundef %fname, i32 noundef %part, i32 noundef %nparts) local_unnamed_addr #0 {
entry:
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end4, label %if.then

if.then:                                          ; preds = %entry
  %call1 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.then
  tail call void @abort() #5
  unreachable

if.end4:                                          ; preds = %if.then, %entry
  %f3.x.promoted = load i32, ptr @f3.x, align 4, !tbaa !5
  %tobool7.not = icmp eq i32 %nparts, 0
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end4
  %lnot.ext.i21 = phi i32 [ %lnot.ext.i, %while.body ], [ %f3.x.promoted, %if.end4 ]
  %tobool.not.i = icmp eq i32 %lnot.ext.i21, 0
  %lnot.ext.i = zext i1 %tobool.not.i to i32
  br i1 %tobool.not.i, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br i1 %tobool7.not, label %while.cond, label %land.lhs.true, !llvm.loop !9

land.lhs.true:                                    ; preds = %while.body
  store i32 %lnot.ext.i, ptr @f3.x, align 4, !tbaa !5
  tail call void @abort() #5
  unreachable

while.end:                                        ; preds = %while.cond
  store i32 %lnot.ext.i, ptr @f3.x, align 4, !tbaa !5
  %tobool16.not = icmp eq i32 %nparts, 0
  br i1 %tobool16.not, label %if.end18, label %if.then17

if.then17:                                        ; preds = %while.end
  tail call void @abort() #5
  unreachable

if.end18:                                         ; preds = %while.end
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #1

; Function Attrs: cold nofree noreturn nounwind uwtable
define dso_local void @f1() local_unnamed_addr #2 {
entry:
  tail call void @abort() #5
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local range(i32 0, 2) i32 @f3() local_unnamed_addr #3 {
entry:
  %0 = load i32, ptr @f3.x, align 4, !tbaa !5
  %tobool.not = icmp eq i32 %0, 0
  %lnot.ext = zext i1 %tobool.not to i32
  store i32 %lnot.ext, ptr @f3.x, align 4, !tbaa !5
  ret i32 %lnot.ext
}

; Function Attrs: cold nofree noreturn nounwind uwtable
define dso_local noundef i32 @f2() local_unnamed_addr #2 {
entry:
  tail call void @abort() #5
  unreachable
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %call.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end4.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %call1.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.then.i
  tail call void @abort() #5
  unreachable

if.end4.i:                                        ; preds = %if.then.i, %entry
  %f3.x.promoted.i = load i32, ptr @f3.x, align 4, !tbaa !5
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i, %if.end4.i
  %lnot.ext.i21.i = phi i32 [ %f3.x.promoted.i, %if.end4.i ], [ %lnot.ext.i.i, %while.cond.i ]
  %tobool.not.i.i = icmp eq i32 %lnot.ext.i21.i, 0
  %lnot.ext.i.i = zext i1 %tobool.not.i.i to i32
  br i1 %tobool.not.i.i, label %while.cond.i, label %ff.exit

ff.exit:                                          ; preds = %while.cond.i
  store i32 %lnot.ext.i.i, ptr @f3.x, align 4, !tbaa !5
  ret i32 0
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #4

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind }

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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
