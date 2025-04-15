; 113880939960581047750506491760148828567
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/113880939960581047750506491760148828567.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/113880939960581047750506491760148828567.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"Hello, World!\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @foo(i32 noundef %x) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 4, label %sw.bb
    i32 6, label %sw.bb
    i32 9, label %sw.bb
    i32 11, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry
  store i32 30, ptr %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %entry
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  store i32 31, ptr %retval, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb
  %1 = load i32, ptr %retval, align 4
  ret i32 %1
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %r = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 -1, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 66
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  %call = call i32 @foo(i32 noundef %1)
  store i32 %call, ptr %r, align 4
  %2 = load i32, ptr %i, align 4
  %cmp1 = icmp eq i32 %2, 4
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %3 = load i32, ptr %r, align 4
  %cmp2 = icmp ne i32 %3, 30
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  call void @abort() #3
  unreachable

if.end:                                           ; preds = %if.then
  br label %if.end28

if.else:                                          ; preds = %for.body
  %4 = load i32, ptr %i, align 4
  %cmp4 = icmp eq i32 %4, 6
  br i1 %cmp4, label %if.then5, label %if.else9

if.then5:                                         ; preds = %if.else
  %5 = load i32, ptr %r, align 4
  %cmp6 = icmp ne i32 %5, 30
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.then5
  call void @abort() #3
  unreachable

if.end8:                                          ; preds = %if.then5
  br label %if.end27

if.else9:                                         ; preds = %if.else
  %6 = load i32, ptr %i, align 4
  %cmp10 = icmp eq i32 %6, 9
  br i1 %cmp10, label %if.then11, label %if.else15

if.then11:                                        ; preds = %if.else9
  %7 = load i32, ptr %r, align 4
  %cmp12 = icmp ne i32 %7, 30
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.then11
  call void @abort() #3
  unreachable

if.end14:                                         ; preds = %if.then11
  br label %if.end26

if.else15:                                        ; preds = %if.else9
  %8 = load i32, ptr %i, align 4
  %cmp16 = icmp eq i32 %8, 11
  br i1 %cmp16, label %if.then17, label %if.else21

if.then17:                                        ; preds = %if.else15
  %9 = load i32, ptr %r, align 4
  %cmp18 = icmp ne i32 %9, 30
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.then17
  call void @abort() #3
  unreachable

if.end20:                                         ; preds = %if.then17
  br label %if.end25

if.else21:                                        ; preds = %if.else15
  %10 = load i32, ptr %r, align 4
  %cmp22 = icmp ne i32 %10, 31
  br i1 %cmp22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.else21
  call void @abort() #3
  unreachable

if.end24:                                         ; preds = %if.else21
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.end20
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %if.end14
  br label %if.end27

if.end27:                                         ; preds = %if.end26, %if.end8
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end28
  %11 = load i32, ptr %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare void @abort() #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
