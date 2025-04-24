; 174613577900608471121471645467515835160
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/174613577900608471121471645467515835160_O1.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/174613577900608471121471645467515835160.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@str = private unnamed_addr constant [10 x i8] c"Finished!\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @foo(i32 noundef %a, i32 noundef %b, i32 noundef %c) local_unnamed_addr #0 {
entry:
  %call = tail call i32 (...) @compute() #5
  %cmp.not = icmp eq i32 %call, 4
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i32 @compute(...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @bar(i64 %x.coerce0, i32 %x.coerce1, i32 %b, i32 %c) local_unnamed_addr #0 {
entry:
  %call.i = tail call i32 (...) @compute() #5
  %cmp.not.i = icmp eq i32 %call.i, 4
  br i1 %cmp.not.i, label %foo.exit, label %if.then.i

if.then.i:                                        ; preds = %entry
  %puts.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %foo.exit

foo.exit:                                         ; preds = %if.then.i, %entry
  ret void
}

; Function Attrs: noreturn nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  tail call void @bar(i64 poison, i32 poison, i32 poison, i32 poison)
  tail call void @exit(i32 noundef 0) #6
  unreachable
}

; Function Attrs: nofree noreturn
declare void @exit(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
