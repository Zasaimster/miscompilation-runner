; 168774026913356887980798911553624016535
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/168774026913356887980798911553624016535.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/168774026913356887980798911553624016535.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@x = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Value of x: %d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %0 = load i32, ptr @x, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %0)
  switch i32 %call, label %sw.epilog [
    i32 0, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry
  %1 = load i32, ptr @x, align 4
  switch i32 %1, label %sw.epilog3 [
    i32 0, label %sw.bb1
  ]

sw.bb1:                                           ; preds = %sw.epilog
  %2 = load i32, ptr @x, align 4
  switch i32 %2, label %sw.default [
    i32 0, label %sw.bb2
  ]

sw.bb2:                                           ; preds = %sw.bb1
  br label %next

sw.default:                                       ; preds = %sw.bb1
  store i32 1, ptr %retval, align 4
  br label %return

sw.epilog3:                                       ; preds = %sw.epilog
  store i32 1, ptr %retval, align 4
  br label %return

next:                                             ; preds = %sw.bb2
  %3 = load i32, ptr @x, align 4
  switch i32 %3, label %sw.epilog5 [
    i32 1, label %sw.bb4
  ]

sw.bb4:                                           ; preds = %next
  store i32 1, ptr %retval, align 4
  br label %return

sw.epilog5:                                       ; preds = %next
  %4 = load i32, ptr @x, align 4
  switch i32 %4, label %sw.epilog7 [
    i32 1, label %sw.bb6
  ]

foo:                                              ; No predecessors!
  br label %sw.bb6

sw.bb6:                                           ; preds = %sw.epilog5, %foo
  store i32 1, ptr %retval, align 4
  br label %return

sw.epilog7:                                       ; preds = %sw.epilog5
  %5 = load i32, ptr @x, align 4
  switch i32 %5, label %sw.default10 [
    i32 0, label %sw.bb8
    i32 1, label %sw.bb9
  ]

sw.bb8:                                           ; preds = %sw.epilog7
  %6 = load i32, ptr @x, align 4
  store i32 %6, ptr %retval, align 4
  br label %return

sw.bb9:                                           ; preds = %sw.epilog7
  store i32 1, ptr %retval, align 4
  br label %return

sw.default10:                                     ; preds = %sw.epilog7
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %sw.default10, %sw.bb9, %sw.bb8, %sw.bb6, %sw.bb4, %sw.epilog3, %sw.default
  %7 = load i32, ptr %retval, align 4
  ret i32 %7
}

declare i32 @printf(ptr noundef, ...) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
