; 114939008268822380110477712173981461816
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/114939008268822380110477712173981461816_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/114939008268822380110477712173981461816.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@c = dso_local local_unnamed_addr global i32 1, align 4
@g = dso_local local_unnamed_addr global i32 0, align 4
@b = dso_local global i32 0, align 4
@d = dso_local local_unnamed_addr global i32 0, align 4
@f = dso_local global i8 0, align 1
@i = dso_local local_unnamed_addr global i16 0, align 2
@h = dso_local local_unnamed_addr global i64 0, align 8
@a = dso_local local_unnamed_addr global i32 0, align 4
@e = dso_local local_unnamed_addr global i32 0, align 4
@str = private unnamed_addr constant [19 x i8] c"Never reaches here\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local void @foo() local_unnamed_addr #0 {
entry:
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %0 = load i32, ptr @g, align 4, !tbaa !5
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load volatile i32, ptr @b, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %puts.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %2 = load volatile i8, ptr @f, align 1, !tbaa !9
  %conv.le = sext i8 %2 to i16
  store i32 -1, ptr @d, align 4, !tbaa !5
  store i16 %conv.le, ptr @i, align 2, !tbaa !10
  %3 = load i32, ptr @c, align 4, !tbaa !5
  %cmp6 = icmp eq i32 %3, 0
  %conv10 = sext i8 %2 to i32
  %cond12 = select i1 %cmp6, i32 0, i32 %conv10
  %conv13 = sext i32 %cond12 to i64
  store i64 %conv13, ptr @h, align 8, !tbaa !12
  store i32 %cond12, ptr @a, align 4, !tbaa !5
  %cmp15.not = icmp eq i32 %cond12, 0
  br i1 %cmp15.not, label %if.end18, label %if.then17

if.then17:                                        ; preds = %if.end
  tail call void @abort() #3
  unreachable

if.end18:                                         ; preds = %if.end
  ret i32 0
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #2

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
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
!9 = !{!7, !7, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"short", !7, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"long", !7, i64 0}
