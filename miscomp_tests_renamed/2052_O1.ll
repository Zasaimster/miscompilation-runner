; 118865264212359723489857617811728354334
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/118865264212359723489857617811728354334.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/118865264212359723489857617811728354334.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@masktab = dso_local local_unnamed_addr global [6 x i16] [i16 1, i16 2, i16 3, i16 4, i16 5, i16 0], align 2
@psd = dso_local local_unnamed_addr global [6 x i16] [i16 50, i16 40, i16 30, i16 20, i16 10, i16 0], align 2
@bndpsd = dso_local local_unnamed_addr global [6 x i16] [i16 1, i16 2, i16 3, i16 4, i16 5, i16 0], align 2

; Function Attrs: nounwind uwtable
define dso_local void @ba_compute_psd(i16 noundef signext %start) local_unnamed_addr #0 {
entry:
  %call = tail call i32 (...) @anotherDummyFunc() #4
  %idxprom = sext i16 %start to i64
  %arrayidx = getelementptr inbounds [6 x i16], ptr @masktab, i64 0, i64 %idxprom
  %0 = load i16, ptr %arrayidx, align 2, !tbaa !5
  %1 = load i16, ptr @psd, align 2, !tbaa !5
  %idxprom3 = sext i16 %0 to i64
  %arrayidx4 = getelementptr inbounds [6 x i16], ptr @bndpsd, i64 0, i64 %idxprom3
  store i16 %1, ptr %arrayidx4, align 2, !tbaa !5
  ret void
}

declare i32 @anotherDummyFunc(...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local signext i16 @logadd(ptr noundef readonly captures(none) %a, ptr noundef readonly captures(none) %b) local_unnamed_addr #2 {
entry:
  %0 = load i16, ptr %a, align 2, !tbaa !5
  %1 = load i16, ptr %b, align 2, !tbaa !5
  %add = add i16 %1, %0
  ret i16 %add
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %call.i = tail call i32 (...) @anotherDummyFunc() #4
  %0 = load i16, ptr @masktab, align 2, !tbaa !5
  %1 = load i16, ptr @psd, align 2, !tbaa !5
  %idxprom3.i = sext i16 %0 to i64
  %arrayidx4.i = getelementptr inbounds [6 x i16], ptr @bndpsd, i64 0, i64 %idxprom3.i
  store i16 %1, ptr %arrayidx4.i, align 2, !tbaa !5
  %2 = load i16, ptr getelementptr inbounds nuw (i8, ptr @bndpsd, i64 2), align 2, !tbaa !5
  %cmp.not = icmp eq i16 %2, 140
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @abort() #5
  unreachable

if.end:                                           ; preds = %entry
  ret i32 0
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"short", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
