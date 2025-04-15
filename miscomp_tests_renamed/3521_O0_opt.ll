; 1640564246275321310134253587338036355
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/1640564246275321310134253587338036355_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/1640564246275321310134253587338036355.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %l = alloca i64, align 8
  %n = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i64 4398046511104, ptr %l, align 8
  %0 = load i64, ptr %l, align 8
  %1 = load i32, ptr %n, align 4
  %sh_prom = zext i32 %1 to i64
  %shl = shl i64 8589934592, %sh_prom
  %div = udiv i64 %0, %shl
  %conv = trunc i64 %div to i32
  store i32 %conv, ptr %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %n, align 4
  %cmp = icmp slt i32 %2, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i64, ptr %l, align 8
  %4 = load i32, ptr %n, align 4
  %sh_prom2 = zext i32 %4 to i64
  %shl3 = shl i64 8589934592, %sh_prom2
  %div4 = udiv i64 %3, %shl3
  %5 = load i32, ptr %n, align 4
  %shr = ashr i32 512, %5
  %conv5 = sext i32 %shr to i64
  %cmp6 = icmp ne i64 %div4, %conv5
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @abort() #2
  unreachable

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i32, ptr %n, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %n, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare void @abort() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

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
