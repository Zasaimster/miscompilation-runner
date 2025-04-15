; 189669778237915591947628553050089399006
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/189669778237915591947628553050089399006_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/189669778237915591947628553050089399006.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @foo(ptr noundef readnone captures(none) %v, i32 noundef %w, i32 noundef %x, ptr noundef readnone captures(none) %y, ptr noundef readnone captures(none) %z) local_unnamed_addr #0 {
entry:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @bar(ptr noundef captures(none) %v, i32 noundef %x, i32 noundef %y, i32 noundef %w, i32 noundef %h) local_unnamed_addr #1 {
entry:
  %cmp.not = icmp eq i32 %x, 10
  br i1 %cmp.not, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %b = getelementptr inbounds nuw i8, ptr %v, i64 4
  %0 = load i32, ptr %b, align 4, !tbaa !5
  %cmp1.not = icmp eq i32 %0, %y
  br i1 %cmp1.not, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  %e2 = getelementptr inbounds nuw i8, ptr %v, i64 16
  %1 = load i32, ptr %e2, align 4, !tbaa !10
  %f3 = getelementptr inbounds nuw i8, ptr %v, i64 20
  %2 = load i32, ptr %f3, align 4, !tbaa !11
  %sub = sub nsw i32 0, %w
  %conv = sitofp i32 %sub to double
  %conv4 = sitofp i32 %1 to double
  %mul = fmul double %conv, %conv4
  %div = fmul double %mul, 5.000000e-01
  %conv5 = fptosi double %div to i32
  %conv8 = sitofp i32 %2 to double
  %mul9 = tail call double @llvm.copysign.f64(double 0.000000e+00, double %conv8)
  %div10 = fmul double %mul9, 5.000000e-01
  %conv11 = fptosi double %div10 to i32
  %add = add nsw i32 %x, %conv5
  %add12 = add nsw i32 %y, %conv11
  store i32 %add, ptr %v, align 4, !tbaa !12
  %b13 = getelementptr inbounds nuw i8, ptr %v, i64 4
  store i32 %add12, ptr %b13, align 4, !tbaa !5
  %c = getelementptr inbounds nuw i8, ptr %v, i64 8
  store i32 %w, ptr %c, align 4, !tbaa !13
  %d = getelementptr inbounds nuw i8, ptr %v, i64 12
  store i32 %h, ptr %d, align 4, !tbaa !14
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  ret void
}

; Function Attrs: nofree noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  tail call void @exit(i32 noundef 0) #5
  unreachable
}

; Function Attrs: nofree noreturn
declare void @exit(i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.copysign.f64(double, double) #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
!5 = !{!6, !7, i64 4}
!6 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!6, !7, i64 16}
!11 = !{!6, !7, i64 20}
!12 = !{!6, !7, i64 0}
!13 = !{!6, !7, i64 8}
!14 = !{!6, !7, i64 12}
