; 182339764969465109669940510141865150440
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/182339764969465109669940510141865150440.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/182339764969465109669940510141865150440.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [25 x i8] c"Main function executed.\0A\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @foo(ptr noundef readnone captures(none) %v, i32 noundef %w, i32 noundef %x, ptr noundef readnone captures(none) %y, ptr noundef readnone captures(none) %z) local_unnamed_addr #0 {
entry:
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @bar(ptr noundef captures(none) %v, i32 noundef %x, i32 noundef %y, i32 noundef %w, i32 noundef %h) local_unnamed_addr #1 {
entry:
  %call = tail call i32 (...) @printHello() #8
  %cmp.not = icmp eq i32 %call, %x
  br i1 %cmp.not, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %cmp2.not = icmp eq i32 %call1, %y
  br i1 %cmp2.not, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  %e3 = getelementptr inbounds nuw i8, ptr %v, i64 16
  %0 = load i32, ptr %e3, align 4, !tbaa !5
  %f4 = getelementptr inbounds nuw i8, ptr %v, i64 20
  %1 = load i32, ptr %f4, align 4, !tbaa !10
  %conv5 = sitofp i32 %0 to double
  %mul = tail call double @llvm.copysign.f64(double 0.000000e+00, double %conv5)
  %div = fmul double %mul, 5.000000e-01
  %conv6 = fptosi double %div to i32
  %conv9 = sitofp i32 %1 to double
  %mul10 = tail call double @llvm.copysign.f64(double 0.000000e+00, double %conv9)
  %div11 = fmul double %mul10, 5.000000e-01
  %conv12 = fptosi double %div11 to i32
  %add = add nsw i32 %x, %conv6
  %add13 = add nsw i32 %y, %conv12
  store i32 %add, ptr %v, align 4, !tbaa !11
  %b = getelementptr inbounds nuw i8, ptr %v, i64 4
  store i32 %add13, ptr %b, align 4, !tbaa !12
  %c = getelementptr inbounds nuw i8, ptr %v, i64 8
  store i32 %w, ptr %c, align 4, !tbaa !13
  %d = getelementptr inbounds nuw i8, ptr %v, i64 12
  store i32 %h, ptr %d, align 4, !tbaa !14
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  ret void
}

declare i32 @printHello(...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #4 {
entry:
  %call.i = tail call i32 (...) @printHello() #8
  %cmp.not.i = icmp eq i32 %call.i, 400
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.then.i

lor.lhs.false.i:                                  ; preds = %entry
  %call1.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %cmp2.not.i = icmp eq i32 %call1.i, 420
  br i1 %cmp2.not.i, label %if.then.critedge, label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i, %entry
  tail call void @exit(i32 noundef 0) #9
  unreachable

if.then.critedge:                                 ; preds = %lor.lhs.false.i
  tail call void @abort() #9
  unreachable
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nofree noreturn
declare void @exit(i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.copysign.f64(double, double) #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
!5 = !{!6, !7, i64 16}
!6 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!6, !7, i64 20}
!11 = !{!6, !7, i64 0}
!12 = !{!6, !7, i64 4}
!13 = !{!6, !7, i64 8}
!14 = !{!6, !7, i64 12}
