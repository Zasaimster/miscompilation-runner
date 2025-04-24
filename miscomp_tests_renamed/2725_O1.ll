; 147487641683424895764049035210154302224
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/147487641683424895764049035210154302224.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/147487641683424895764049035210154302224.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sreal = type { i32, i32 }

@a = dso_local local_unnamed_addr global [4 x %struct.sreal] [%struct.sreal zeroinitializer, %struct.sreal { i32 1, i32 0 }, %struct.sreal { i32 0, i32 1 }, %struct.sreal { i32 1, i32 1 }], align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @sreal_compare(ptr noundef readnone captures(none) %a, ptr noundef readnone captures(none) %b) local_unnamed_addr #0 {
entry:
  ret i32 0
}

; Function Attrs: nofree noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #1 {
entry:
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.inc28, %entry
  %indvars.iv = phi i32 [ 1, %entry ], [ %indvars.iv.next, %for.inc28 ]
  %i.046 = phi i1 [ true, %entry ], [ false, %for.inc28 ]
  br label %for.body3

for.cond1:                                        ; preds = %if.end
  %inc = add nuw nsw i32 %j.045, 1
  %exitcond47.not = icmp eq i32 %inc, 3
  br i1 %exitcond47.not, label %for.inc28, label %for.body3, !llvm.loop !5

for.body3:                                        ; preds = %for.cond1.preheader, %for.cond1
  %j.045 = phi i32 [ 0, %for.cond1.preheader ], [ %inc, %for.cond1 ]
  %exitcond = icmp eq i32 %j.045, %indvars.iv
  br i1 %exitcond, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body3
  tail call void @abort() #3
  unreachable

if.end:                                           ; preds = %for.body3
  br i1 %i.046, label %for.cond1, label %land.lhs.true19

land.lhs.true19:                                  ; preds = %if.end
  tail call void @abort() #3
  unreachable

for.inc28:                                        ; preds = %for.cond1
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  br label %for.cond1.preheader
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

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
