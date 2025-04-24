; 186666117870887822883048845625453513651
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/186666117870887822883048845625453513651_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/186666117870887822883048845625453513651.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"begin\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"end\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"timeout=%ld\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"error\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  call void @kb_wait_1()
  call void @kb_wait_2()
  call void @kb_wait_2_1()
  call void @kb_wait_2_2()
  call void @kb_wait_3()
  call void @kb_wait_4()
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  ret i32 0
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal void @kb_wait_1() #0 {
entry:
  %timeout = alloca i64, align 8
  store i64 2, ptr %timeout, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %0 = load i64, ptr %timeout, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i64 noundef %0)
  %1 = load i64, ptr %timeout, align 8
  %dec = add i64 %1, -1
  store i64 %dec, ptr %timeout, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %2 = load i64, ptr %timeout, align 8
  %tobool = icmp ne i64 %2, 0
  br i1 %tobool, label %do.body, label %do.end, !llvm.loop !6

do.end:                                           ; preds = %do.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kb_wait_2() #0 {
entry:
  %timeout = alloca i64, align 8
  store i64 2, ptr %timeout, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %0 = load i64, ptr %timeout, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i64 noundef %0)
  %1 = load i64, ptr %timeout, align 8
  %dec = add i64 %1, -1
  store i64 %dec, ptr %timeout, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %2 = load i64, ptr %timeout, align 8
  %tobool = icmp ne i64 %2, 0
  br i1 %tobool, label %do.body, label %do.end, !llvm.loop !8

do.end:                                           ; preds = %do.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kb_wait_2_1() #0 {
entry:
  %timeout = alloca i64, align 8
  store i64 2, ptr %timeout, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %0 = load i64, ptr %timeout, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i64 noundef %0)
  %1 = load i64, ptr %timeout, align 8
  %dec = add i64 %1, -1
  store i64 %dec, ptr %timeout, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %2 = load i64, ptr %timeout, align 8
  %tobool = icmp ne i64 %2, 0
  br i1 %tobool, label %do.body, label %do.end, !llvm.loop !9

do.end:                                           ; preds = %do.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kb_wait_2_2() #0 {
entry:
  %timeout = alloca i64, align 8
  store i64 2, ptr %timeout, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  br i1 true, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %0 = load i64, ptr %timeout, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i64 noundef %0)
  br label %if.end

if.else:                                          ; preds = %do.body
  br label %label

label:                                            ; preds = %label, %if.else
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %label

if.end:                                           ; preds = %if.then
  %1 = load i64, ptr %timeout, align 8
  %dec = add i64 %1, -1
  store i64 %dec, ptr %timeout, align 8
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %2 = load i64, ptr %timeout, align 8
  %tobool = icmp ne i64 %2, 0
  br i1 %tobool, label %do.body, label %do.end, !llvm.loop !10

do.end:                                           ; preds = %do.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kb_wait_3() #0 {
entry:
  %timeout = alloca i64, align 8
  %i = alloca i32, align 4
  store i64 2, ptr %timeout, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  br i1 true, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %0 = load i64, ptr %timeout, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i64 noundef %0)
  br label %if.end

if.else:                                          ; preds = %do.body
  store i32 1, ptr %i, align 4
  br label %label

label:                                            ; preds = %if.else
  %1 = load i32, ptr %i, align 4
  %add = add nsw i32 %1, 3
  store i32 %add, ptr %i, align 4
  br label %if.end

if.end:                                           ; preds = %label, %if.then
  %2 = load i64, ptr %timeout, align 8
  %dec = add i64 %2, -1
  store i64 %dec, ptr %timeout, align 8
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %3 = load i64, ptr %timeout, align 8
  %tobool = icmp ne i64 %3, 0
  br i1 %tobool, label %do.body, label %do.end, !llvm.loop !11

do.end:                                           ; preds = %do.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kb_wait_4() #0 {
entry:
  %timeout = alloca i64, align 8
  store i64 2, ptr %timeout, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %0 = load i64, ptr %timeout, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i64 noundef %0)
  %1 = load i64, ptr %timeout, align 8
  %dec = add i64 %1, -1
  store i64 %dec, ptr %timeout, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %2 = load i64, ptr %timeout, align 8
  %tobool = icmp ne i64 %2, 0
  br i1 %tobool, label %do.body, label %do.end, !llvm.loop !12

do.end:                                           ; preds = %do.cond
  ret void
}

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
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
