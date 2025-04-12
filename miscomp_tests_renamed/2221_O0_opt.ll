; 150743418612650011639197872805921867646
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/150743418612650011639197872805921867646_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/150743418612650011639197872805921867646.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"%d %d %d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %z = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 0, ptr %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc11, %entry
  %0 = load i32, ptr %x, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, ptr %x, align 4
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %for.body, label %for.end13

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %y, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc8, %for.body
  %1 = load i32, ptr %y, align 4
  %cmp2 = icmp slt i32 %1, 3
  br i1 %cmp2, label %for.body3, label %for.end10

for.body3:                                        ; preds = %for.cond1
  store i32 0, ptr %z, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %2 = load i32, ptr %z, align 4
  %cmp5 = icmp slt i32 %2, 3
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %3 = load i32, ptr %x, align 4
  %4 = load i32, ptr %y, align 4
  %5 = load i32, ptr %z, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %3, i32 noundef %4, i32 noundef %5)
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %6 = load i32, ptr %z, align 4
  %inc7 = add nsw i32 %6, 1
  store i32 %inc7, ptr %z, align 4
  br label %for.cond4, !llvm.loop !6

for.end:                                          ; preds = %for.cond4
  br label %for.inc8

for.inc8:                                         ; preds = %for.end
  %7 = load i32, ptr %y, align 4
  %inc9 = add nsw i32 %7, 1
  store i32 %inc9, ptr %y, align 4
  br label %for.cond1, !llvm.loop !8

for.end10:                                        ; preds = %for.cond1
  br label %for.inc11

for.inc11:                                        ; preds = %for.end10
  %8 = load i32, ptr %x, align 4
  %inc12 = add nsw i32 %8, 1
  store i32 %inc12, ptr %x, align 4
  br label %for.cond, !llvm.loop !9

for.end13:                                        ; preds = %for.cond
  ret i32 0
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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
