; 121545701742170418133734285277097850131
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/121545701742170418133734285277097850131_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/121545701742170418133734285277097850131.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@x = dso_local global i32 0, align 4
@y = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 0, ptr @x, align 4
  %0 = load i32, ptr @x, align 4
  store i32 %0, ptr @y, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %1 = load i32, ptr @y, align 4
  store i32 %1, ptr @x, align 4
  %2 = load i32, ptr @y, align 4
  %mul = mul nsw i32 2, %2
  store i32 %mul, ptr @y, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %3 = load i32, ptr @y, align 4
  %4 = load i32, ptr @x, align 4
  %sub = sub nsw i32 %3, %4
  %cmp = icmp sge i32 %sub, 20
  %lnot = xor i1 %cmp, true
  br i1 %lnot, label %do.body, label %do.end, !llvm.loop !6

do.end:                                           ; preds = %do.cond
  call void @exit(i32 noundef 0) #2
  unreachable
}

; Function Attrs: noreturn
declare void @exit(i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
