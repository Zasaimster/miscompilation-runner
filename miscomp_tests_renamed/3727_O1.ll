; 165184378701000072293836699765569784405
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/165184378701000072293836699765569784405.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/165184378701000072293836699765569784405.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_list = dso_local global [1 x i8] c"*", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local void @g(ptr noundef readnone captures(none) %p, ptr noundef readnone captures(none) %list, i32 noundef %length, ptr noundef readnone captures(none) %elementPtr, ptr noundef readonly captures(none) %nextPtr) local_unnamed_addr #0 {
entry:
  %0 = load ptr, ptr %nextPtr, align 8, !tbaa !5
  %cmp.not = icmp eq ptr %0, @g_list
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @abort() #3
  unreachable

if.end:                                           ; preds = %entry
  store i8 0, ptr @g_list, align 1, !tbaa !10
  ret void
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  %g_list.promoted = load i8, ptr @g_list, align 1, !tbaa !10
  %cmp.not7 = icmp eq i8 %g_list.promoted, 0
  br i1 %cmp.not7, label %for.end, label %g.exit.lr.ph

g.exit.lr.ph:                                     ; preds = %entry
  store i8 0, ptr @g_list, align 1, !tbaa !10
  br label %for.end

for.end:                                          ; preds = %g.exit.lr.ph, %entry
  ret i32 0
}

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"p1 omnipotent char", !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!8, !8, i64 0}
