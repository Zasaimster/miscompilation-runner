; 171619072323734058042735921708853088599
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/171619072323734058042735921708853088599_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/171619072323734058042735921708853088599.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Point = type { i64, i64 }

@.str = private unnamed_addr constant [7 x i8] c"Start\0A\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @bar() local_unnamed_addr #0 {
entry:
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @f(i64 %p0.coerce0, i64 %p0.coerce1, i64 %p1.coerce0, i64 %p1.coerce1, i64 %p2.coerce0, i64 %p2.coerce1, ptr noundef readonly byval(%struct.Point) align 8 captures(none) %p3, ptr noundef readonly byval(%struct.Point) align 8 captures(none) %p4, ptr noundef readonly byval(%struct.Point) align 8 captures(none) %p5) local_unnamed_addr #1 {
entry:
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %cmp = icmp ne i32 %call, 0
  %cmp1 = icmp ne i64 %p0.coerce1, 1
  %or.cond = select i1 %cmp, i1 true, i1 %cmp1
  %cmp3 = icmp ne i64 %p1.coerce0, -1
  %or.cond31 = select i1 %or.cond, i1 true, i1 %cmp3
  %cmp6 = icmp ne i64 %p1.coerce1, 0
  %or.cond32 = select i1 %or.cond31, i1 true, i1 %cmp6
  %cmp9 = icmp ne i64 %p2.coerce0, 1
  %or.cond33 = select i1 %or.cond32, i1 true, i1 %cmp9
  %cmp12 = icmp ne i64 %p2.coerce1, -1
  %or.cond34 = select i1 %or.cond33, i1 true, i1 %cmp12
  %0 = load i64, ptr %p3, align 8
  %cmp15 = icmp ne i64 %0, -1
  %or.cond35 = select i1 %or.cond34, i1 true, i1 %cmp15
  %p_y17 = getelementptr inbounds nuw i8, ptr %p3, i64 8
  %1 = load i64, ptr %p_y17, align 8
  %cmp18 = icmp ne i64 %1, 1
  %or.cond36 = select i1 %or.cond35, i1 true, i1 %cmp18
  %2 = load i64, ptr %p4, align 8
  %cmp21 = icmp ne i64 %2, 0
  %or.cond37 = select i1 %or.cond36, i1 true, i1 %cmp21
  %p_y23 = getelementptr inbounds nuw i8, ptr %p4, i64 8
  %3 = load i64, ptr %p_y23, align 8
  %cmp24 = icmp ne i64 %3, -1
  %or.cond38 = select i1 %or.cond37, i1 true, i1 %cmp24
  %4 = load i64, ptr %p5, align 8
  %cmp27 = icmp ne i64 %4, 1
  %or.cond39 = select i1 %or.cond38, i1 true, i1 %cmp27
  %p_y29 = getelementptr inbounds nuw i8, ptr %p5, i64 8
  %5 = load i64, ptr %p_y29, align 8
  %cmp30 = icmp ne i64 %5, 0
  %or.cond40 = select i1 %or.cond39, i1 true, i1 %cmp30
  br i1 %or.cond40, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @abort() #6
  unreachable

if.end:                                           ; preds = %entry
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #3

; Function Attrs: nofree nounwind uwtable
define dso_local void @foo() local_unnamed_addr #1 {
entry:
  %call.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  %cmp.i.not = icmp eq i32 %call.i, 0
  br i1 %cmp.i.not, label %f.exit, label %if.then.i

if.then.i:                                        ; preds = %entry
  tail call void @abort() #6
  unreachable

f.exit:                                           ; preds = %entry
  ret void
}

; Function Attrs: nofree noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #4 {
entry:
  tail call void @foo()
  tail call void @exit(i32 noundef 0) #6
  unreachable
}

; Function Attrs: nofree noreturn
declare void @exit(i32 noundef) local_unnamed_addr #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
