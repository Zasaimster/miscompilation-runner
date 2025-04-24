; 163781506431475170874655288346485165376
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/163781506431475170874655288346485165376_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/163781506431475170874655288346485165376.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [20 x i8] c"This is dead code.\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @foo(i8 noundef zeroext %x, i64 noundef %y) #0 {
entry:
  %x.addr = alloca i8, align 1
  %y.addr = alloca i64, align 8
  store i8 %x, ptr %x.addr, align 1
  store i64 %y, ptr %y.addr, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %0 = load i64, ptr %y.addr, align 8
  %tobool = icmp ne i64 %0, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  %1 = load i8, ptr %x.addr, align 1
  %conv = zext i8 %1 to i32
  %and = and i32 %conv, %lnot.ext
  %conv1 = trunc i32 %and to i8
  store i8 %conv1, ptr %x.addr, align 1
  %2 = load i8, ptr %x.addr, align 1
  %conv2 = zext i8 %2 to i32
  %rem = srem i32 %conv2, 24
  %conv3 = trunc i32 %rem to i8
  store i8 %conv3, ptr %x.addr, align 1
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %3 = load i8, ptr %x.addr, align 1
  %conv4 = zext i8 %3 to i64
  %4 = load i64, ptr %y.addr, align 8
  %cmp = icmp ult i64 %conv4, %4
  br i1 %cmp, label %do.body, label %do.end, !llvm.loop !6

do.end:                                           ; preds = %do.cond
  %5 = load i8, ptr %x.addr, align 1
  %conv6 = zext i8 %5 to i64
  %6 = load i64, ptr %y.addr, align 8
  %add = add i64 %conv6, %6
  %conv7 = trunc i64 %add to i32
  ret i32 %conv7
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %x = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call i32 @foo(i8 noundef zeroext 1, i64 noundef 0)
  store i32 %call, ptr %x, align 4
  %0 = load i32, ptr %x, align 4
  %cmp = icmp ne i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #3
  unreachable

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %x, align 4
  %cmp1 = icmp eq i32 %1, 0
  br i1 %cmp1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare void @abort() #1

declare i32 @printf(ptr noundef, ...) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

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
