; 18593013358655480385744255552461297756
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/18593013358655480385744255552461297756.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/18593013358655480385744255552461297756.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local local_unnamed_addr global i32 1, align 4
@e = dso_local local_unnamed_addr global i32 -1, align 4
@b = dso_local local_unnamed_addr global i16 0, align 2
@f = dso_local local_unnamed_addr global i16 0, align 2
@str = private unnamed_addr constant [6 x i8] c"Hello\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %0 = load i16, ptr @b, align 2, !tbaa !5
  %conv = sext i16 %0 to i32
  %cmp = icmp sgt i16 %0, -1
  %1 = load i16, ptr @f, align 2
  %conv2 = sext i16 %1 to i32
  %add = add nsw i32 %conv2, %conv
  %cmp48 = icmp slt i32 %add, 0
  %cmp4 = select i1 %cmp, i1 %cmp48, i1 false
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr @a, align 4, !tbaa !9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, ptr @a, align 4, !tbaa !9
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.end
  tail call void @abort() #3
  unreachable

if.end7:                                          ; preds = %if.end
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
!6 = !{!"short", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !7, i64 0}
