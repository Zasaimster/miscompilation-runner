; 129099162006500350348268234348176661676
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/129099162006500350348268234348176661676_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/129099162006500350348268234348176661676.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %x = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call i32 @b(i8 noundef zeroext 1, i32 noundef -3639044, i32 noundef -12215549)
  store i32 %call, ptr %x, align 4
  %0 = load i32, ptr %x, align 4
  %cmp = icmp ne i32 %0, -651063088
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #2
  unreachable

if.end:                                           ; preds = %entry
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @b(i8 noundef zeroext %d, i32 noundef %e, i32 noundef %g) #0 {
entry:
  %d.addr = alloca i8, align 1
  %e.addr = alloca i32, align 4
  %g.addr = alloca i32, align 4
  store i8 %d, ptr %d.addr, align 1
  store i32 %e, ptr %e.addr, align 4
  store i32 %g, ptr %g.addr, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %0 = load i32, ptr %e.addr, align 4
  %add = add i32 %0, 1
  store i32 %add, ptr %e.addr, align 4
  %1 = load i8, ptr %d.addr, align 1
  %dec = add i8 %1, -1
  store i8 %dec, ptr %d.addr, align 1
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %2 = load i8, ptr %d.addr, align 1
  %conv = zext i8 %2 to i32
  %3 = load i32, ptr %e.addr, align 4
  %conv1 = trunc i32 %3 to i8
  %conv2 = zext i8 %conv1 to i32
  %cmp = icmp sge i32 %conv, %conv2
  br i1 %cmp, label %do.body, label %do.end, !llvm.loop !6

do.end:                                           ; preds = %do.cond
  %4 = load i32, ptr %e.addr, align 4
  ret i32 %4
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
