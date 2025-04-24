; 159744240696695939320698119262628101571
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/159744240696695939320698119262628101571_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/159744240696695939320698119262628101571.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@str = private unnamed_addr constant [19 x i8] c"After Early Return\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local void @foo(i32 noundef %p, i32 noundef %a, i32 noundef %b) local_unnamed_addr #0 {
entry:
  %cmp = icmp slt i32 %a, -2147483646
  tail call void @llvm.assume(i1 %cmp)
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %sub3 = sub i32 %a, %b
  %cmp4.not = icmp eq i32 %sub3, 2147483647
  br i1 %cmp4.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %entry
  tail call void @abort() #4
  unreachable

if.end6:                                          ; preds = %entry
  ret void
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #1

; Function Attrs: nofree nounwind uwtable
define dso_local void @bar(i32 noundef %p, i32 noundef %a) local_unnamed_addr #0 {
entry:
  %cmp = icmp slt i32 %a, -2147483646
  tail call void @llvm.assume(i1 %cmp)
  %cmp3.not = icmp eq i32 %a, -2147483648
  br i1 %cmp3.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %entry
  tail call void @abort() #4
  unreachable

if.end5:                                          ; preds = %entry
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %puts.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #3

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #3 = { nofree nounwind }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
