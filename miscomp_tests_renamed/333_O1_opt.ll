; 158854840920308839167302782756732922798
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/158854840920308839167302782756732922798_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/158854840920308839167302782756732922798.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [21 x i8] c"Before Early Return\0A\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local range(i32 0, 128) i32 @f(ptr noundef readonly captures(none) %b, i32 noundef %c) local_unnamed_addr #0 {
entry:
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  switch i32 %call, label %sw.default [
    i32 100, label %sw.bb
    i32 107, label %sw.bb3
  ]

sw.bb:                                            ; preds = %entry
  %0 = load i8, ptr %b, align 1, !tbaa !5
  %1 = lshr i8 %0, 1
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %b, i64 3
  %2 = load i8, ptr %arrayidx4, align 1, !tbaa !5
  %3 = lshr i8 %2, 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  tail call void @abort() #5
  unreachable

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb
  %v.0.in = phi i8 [ %3, %sw.bb3 ], [ %1, %sw.bb ]
  %conv8 = zext nneg i8 %v.0.in to i32
  ret i32 %conv8
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #1

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #2

; Function Attrs: nofree noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #3 {
entry:
  %call.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str)
  switch i32 %call.i, label %sw.default.i [
    i32 100, label %if.end
    i32 107, label %sw.bb3.i
  ]

sw.bb3.i:                                         ; preds = %entry
  tail call void @abort() #5
  unreachable

sw.default.i:                                     ; preds = %entry
  tail call void @abort() #5
  unreachable

if.end:                                           ; preds = %entry
  tail call void @exit(i32 noundef 0) #5
  unreachable
}

; Function Attrs: nofree noreturn
declare void @exit(i32 noundef) local_unnamed_addr #4

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
