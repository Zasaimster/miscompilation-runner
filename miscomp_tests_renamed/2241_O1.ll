; 139161443618054532644499567658535152384
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/139161443618054532644499567658535152384.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/139161443618054532644499567658535152384.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@factab = dso_local local_unnamed_addr global [10 x i64] zeroinitializer, align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @gcd_ll(i64 noundef %x, i64 noundef %y) local_unnamed_addr #0 {
entry:
  ret i64 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local i64 @powmod_ll(i64 noundef %b, i32 noundef %e, i64 noundef %m) local_unnamed_addr #1 {
entry:
  switch i32 %e, label %for.body4.preheader [
    i32 0, label %cleanup
    i32 1, label %cleanup.fold.split
  ]

for.body4.preheader:                              ; preds = %entry
  %0 = lshr i32 %e, 1
  %1 = tail call range(i32 1, 33) i32 @llvm.ctlz.i32(i32 %0, i1 false)
  %2 = sub nuw nsw i32 32, %1
  br label %for.body4

for.body4:                                        ; preds = %for.body4.preheader, %for.inc9
  %i.129.in = phi i32 [ %i.129, %for.inc9 ], [ %2, %for.body4.preheader ]
  %pow.028 = phi i64 [ %pow.1, %for.inc9 ], [ %b, %for.body4.preheader ]
  %i.129 = add nsw i32 %i.129.in, -1
  %mul = mul i64 %pow.028, %pow.028
  %rem = urem i64 %mul, %m
  %shl = shl nuw i32 1, %i.129
  %and = and i32 %shl, %e
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.inc9, label %if.then5

if.then5:                                         ; preds = %for.body4
  %mul6 = mul i64 %rem, %b
  %rem7 = urem i64 %mul6, %m
  br label %for.inc9

for.inc9:                                         ; preds = %for.body4, %if.then5
  %pow.1 = phi i64 [ %rem7, %if.then5 ], [ %rem, %for.body4 ]
  %cmp3 = icmp sgt i32 %i.129.in, 1
  br i1 %cmp3, label %for.body4, label %cleanup, !llvm.loop !5

cleanup.fold.split:                               ; preds = %entry
  br label %cleanup

cleanup:                                          ; preds = %for.inc9, %entry, %cleanup.fold.split
  %retval.0 = phi i64 [ 1, %entry ], [ %b, %cleanup.fold.split ], [ %pow.1, %for.inc9 ]
  ret i64 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @facts(i64 noundef %t, i32 noundef %a_int, i32 noundef %x0, i32 noundef %p) local_unnamed_addr #2 {
entry:
  store i64 0, ptr @factab, align 16, !tbaa !8
  ret void
}

; Function Attrs: cold nofree noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #3 {
entry:
  store i64 0, ptr @factab, align 16, !tbaa !8
  tail call void @abort() #6
  unreachable
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { noreturn nounwind }

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
!8 = !{!9, !9, i64 0}
!9 = !{!"long", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
