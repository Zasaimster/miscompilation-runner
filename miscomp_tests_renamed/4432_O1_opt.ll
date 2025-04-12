; 173247444483803198824666783588656925298
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/173247444483803198824666783588656925298_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/173247444483803198824666783588656925298.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local local_unnamed_addr global i32 0, align 4
@d = dso_local local_unnamed_addr global i32 4014, align 4
@e = dso_local local_unnamed_addr global i32 58230, align 4
@b = dso_local local_unnamed_addr global i8 0, align 1
@f = dso_local local_unnamed_addr global i8 1, align 1
@g = dso_local local_unnamed_addr global i8 1, align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @foo() local_unnamed_addr #0 {
entry:
  %0 = load i32, ptr @a, align 4, !tbaa !5
  %1 = load i8, ptr @b, align 1, !tbaa !9, !range !11, !noundef !12
  %loadedv = zext nneg i8 %1 to i32
  %cmp.not = icmp eq i32 %0, %loadedv
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8 0, ptr @f, align 1, !tbaa !9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, ptr @e, align 4, !tbaa !5
  %3 = and i32 %2, 1
  %and = select i1 %cmp.not, i32 0, i32 %3
  %4 = load i32, ptr @d, align 4, !tbaa !5
  %and7 = and i32 %and, %4
  %tobool.not = icmp eq i32 %and7, 0
  br i1 %tobool.not, label %if.end12, label %if.then11

if.then11:                                        ; preds = %if.end
  store i8 0, ptr @g, align 1, !tbaa !13
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #1 {
entry:
  %0 = load i32, ptr @a, align 4, !tbaa !5
  %1 = load i8, ptr @b, align 1, !tbaa !9, !range !11, !noundef !12
  %loadedv.i = zext nneg i8 %1 to i32
  %cmp.not.i = icmp eq i32 %0, %loadedv.i
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  store i8 0, ptr @f, align 1, !tbaa !9
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry
  %2 = load i32, ptr @e, align 4, !tbaa !5
  %3 = and i32 %2, 1
  %and.i = select i1 %cmp.not.i, i32 0, i32 %3
  %4 = load i32, ptr @d, align 4, !tbaa !5
  %and7.i = and i32 %and.i, %4
  %tobool.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool.not.i, label %foo.exit, label %if.then11.i

if.then11.i:                                      ; preds = %if.end.i
  store i8 0, ptr @g, align 1, !tbaa !13
  br label %foo.exit

foo.exit:                                         ; preds = %if.then11.i, %if.end.i
  %5 = load i8, ptr @f, align 1, !tbaa !9, !range !11, !noundef !12
  %loadedv = trunc nuw i8 %5 to i1
  %6 = load i8, ptr @g, align 1
  %cmp = icmp ne i8 %6, 1
  %or.cond = select i1 %loadedv, i1 true, i1 %cmp
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %foo.exit
  tail call void @abort() #3
  unreachable

if.end:                                           ; preds = %foo.exit
  ret i32 0
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"_Bool", !7, i64 0}
!11 = !{i8 0, i8 2}
!12 = !{}
!13 = !{!7, !7, i64 0}
