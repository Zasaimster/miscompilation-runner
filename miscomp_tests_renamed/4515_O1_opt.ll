; 179470877055443379613458616290473098364
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/179470877055443379613458616290473098364_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/179470877055443379613458616290473098364.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @foo(ptr noundef readnone captures(none) %v, i32 noundef %w, i32 noundef %x, ptr noundef readnone captures(none) %y, ptr noundef readnone captures(none) %z) local_unnamed_addr #0 {
entry:
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @bar(ptr noundef captures(none) %v, i32 noundef %x, i32 noundef %y, i32 noundef %w, i32 noundef %h) local_unnamed_addr #1 {
entry:
  %0 = load i32, ptr %v, align 4, !tbaa !5
  %cmp.not = icmp eq i32 %0, %x
  br i1 %cmp.not, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %b = getelementptr inbounds nuw i8, ptr %v, i64 4
  %1 = load i32, ptr %b, align 4, !tbaa !10
  %cmp1.not = icmp eq i32 %1, %y
  br i1 %cmp1.not, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  %e2 = getelementptr inbounds nuw i8, ptr %v, i64 16
  %2 = load i32, ptr %e2, align 4, !tbaa !11
  %f3 = getelementptr inbounds nuw i8, ptr %v, i64 20
  %3 = load i32, ptr %f3, align 4, !tbaa !12
  %conv4 = sitofp i32 %2 to double
  %mul = tail call double @llvm.copysign.f64(double 0.000000e+00, double %conv4)
  %div = fmul double %mul, 5.000000e-01
  %conv5 = fptosi double %div to i32
  %conv8 = sitofp i32 %3 to double
  %mul9 = tail call double @llvm.copysign.f64(double 0.000000e+00, double %conv8)
  %div10 = fmul double %mul9, 5.000000e-01
  %conv11 = fptosi double %div10 to i32
  %add = add nsw i32 %x, %conv5
  %add12 = add nsw i32 %y, %conv11
  store i32 %add, ptr %v, align 4, !tbaa !5
  %b14 = getelementptr inbounds nuw i8, ptr %v, i64 4
  store i32 %add12, ptr %b14, align 4, !tbaa !10
  %c = getelementptr inbounds nuw i8, ptr %v, i64 8
  store i32 %w, ptr %c, align 4, !tbaa !13
  %d = getelementptr inbounds nuw i8, ptr %v, i64 12
  store i32 %h, ptr %d, align 4, !tbaa !14
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %call = tail call i32 (i32, ...) @process(i32 noundef 100) #6
  ret void
}

declare i32 @process(...) local_unnamed_addr #2

; Function Attrs: noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #3 {
entry:
  %call.i = tail call i32 (i32, ...) @process(i32 noundef 100) #6
  tail call void @exit(i32 noundef 0) #7
  unreachable
}

; Function Attrs: nofree noreturn
declare void @exit(i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.copysign.f64(double, double) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!6, !7, i64 4}
!11 = !{!6, !7, i64 16}
!12 = !{!6, !7, i64 20}
!13 = !{!6, !7, i64 8}
!14 = !{!6, !7, i64 12}
