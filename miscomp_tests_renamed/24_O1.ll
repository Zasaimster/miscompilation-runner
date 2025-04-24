; 100423790200848069375027678096817401288
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/100423790200848069375027678096817401288.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/100423790200848069375027678096817401288.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@main.sc.0 = internal unnamed_addr global i1 false, align 4
@main.sc.1 = internal unnamed_addr global i32 4, align 4
@str = private unnamed_addr constant [29 x i8] c"Square calculation complete.\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @f(ptr noundef captures(none) initializes((0, 12)) %x) local_unnamed_addr #0 {
entry:
  %sc = getelementptr inbounds nuw i8, ptr %x, i64 16
  %0 = load ptr, ptr %sc, align 8, !tbaa !5
  %1 = load i32, ptr %0, align 4, !tbaa !12
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %2 = load i32, ptr %arrayidx1, align 4, !tbaa !12
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %3 = load i32, ptr %arrayidx2, align 4, !tbaa !12
  %a = getelementptr inbounds nuw i8, ptr %x, i64 24
  %4 = load i32, ptr %a, align 8, !tbaa !12
  %arrayidx5 = getelementptr inbounds nuw i8, ptr %x, i64 28
  %5 = load i32, ptr %arrayidx5, align 4, !tbaa !12
  store i32 %1, ptr %arrayidx2, align 4, !tbaa !12
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  store i32 %5, ptr %0, align 4, !tbaa !12
  store i32 %4, ptr %arrayidx5, align 4, !tbaa !12
  store i32 %3, ptr %a, align 8, !tbaa !12
  %fc = getelementptr inbounds nuw i8, ptr %x, i64 8
  store i32 %2, ptr %fc, align 8, !tbaa !13
  store ptr %0, ptr %x, align 8, !tbaa !14
  ret i32 undef
}

; Function Attrs: nofree noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #1 {
entry:
  %.b = load i1, ptr @main.sc.0, align 4
  %0 = select i1 %.b, i32 11, i32 2
  store i32 %0, ptr @main.sc.1, align 4, !tbaa !12
  %puts.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  store i1 true, ptr @main.sc.0, align 4
  %1 = load i32, ptr @main.sc.1, align 4, !tbaa !12
  %cmp.not = icmp eq i32 %1, 2
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @abort() #5
  unreachable

if.end:                                           ; preds = %entry
  tail call void @exit(i32 noundef 0) #5
  unreachable
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #2

; Function Attrs: nofree noreturn
declare void @exit(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #4

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
!5 = !{!6, !7, i64 16}
!6 = !{!"S", !7, i64 0, !11, i64 8, !7, i64 16, !9, i64 24}
!7 = !{!"p1 int", !8, i64 0}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"int", !9, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!6, !11, i64 8}
!14 = !{!6, !7, i64 0}
