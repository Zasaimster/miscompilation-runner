; 124531764568008758568012426500419522553
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/124531764568008758568012426500419522553.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/124531764568008758568012426500419522553.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @doit(i32 noundef %sel, i32 noundef %n, ptr noundef %p) #0 {
entry:
  %retval = alloca i32, align 4
  %sel.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %p0 = alloca ptr, align 8
  %p1 = alloca ptr, align 8
  %p2 = alloca ptr, align 8
  store i32 %sel, ptr %sel.addr, align 4
  store i32 %n, ptr %n.addr, align 4
  store ptr %p, ptr %p.addr, align 8
  store ptr null, ptr %p0, align 8
  %0 = load ptr, ptr %p.addr, align 8
  store ptr %0, ptr %p1, align 8
  %1 = load ptr, ptr %p.addr, align 8
  store ptr %1, ptr %p2, align 8
  %2 = load i32, ptr %sel.addr, align 4
  switch i32 %2, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb10
  ]

sw.bb:                                            ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %do.cond, %sw.bb
  %3 = load i32, ptr null, align 4
  %4 = load i32, ptr null, align 4
  %add = add nsw i32 %4, %3
  store i32 %add, ptr null, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %5 = load i32, ptr %n.addr, align 4
  %dec = add nsw i32 %5, -1
  store i32 %dec, ptr %n.addr, align 4
  %tobool = icmp ne i32 %dec, 0
  br i1 %tobool, label %do.body, label %do.end, !llvm.loop !6

do.end:                                           ; preds = %do.cond
  %6 = load i32, ptr null, align 4
  %cmp = icmp eq i32 %6, 0
  %conv = zext i1 %cmp to i32
  store i32 %conv, ptr %retval, align 4
  br label %return

sw.bb1:                                           ; preds = %entry
  br label %do.body2

do.body2:                                         ; preds = %do.cond4, %sw.bb1
  %7 = load ptr, ptr %p1, align 8
  %8 = load i64, ptr %7, align 8
  %9 = load ptr, ptr %p1, align 8
  %10 = load i64, ptr %9, align 8
  %add3 = add nsw i64 %10, %8
  store i64 %add3, ptr %9, align 8
  br label %do.cond4

do.cond4:                                         ; preds = %do.body2
  %11 = load i32, ptr %n.addr, align 4
  %dec5 = add nsw i32 %11, -1
  store i32 %dec5, ptr %n.addr, align 4
  %tobool6 = icmp ne i32 %dec5, 0
  br i1 %tobool6, label %do.body2, label %do.end7, !llvm.loop !8

do.end7:                                          ; preds = %do.cond4
  %12 = load ptr, ptr %p1, align 8
  %13 = load i64, ptr %12, align 8
  %cmp8 = icmp eq i64 %13, 0
  %conv9 = zext i1 %cmp8 to i32
  store i32 %conv9, ptr %retval, align 4
  br label %return

sw.bb10:                                          ; preds = %entry
  br label %do.body11

do.body11:                                        ; preds = %do.cond13, %sw.bb10
  %14 = load ptr, ptr %p2, align 8
  %15 = load i64, ptr %14, align 8
  %16 = load ptr, ptr %p2, align 8
  %17 = load i64, ptr %16, align 8
  %add12 = add nsw i64 %17, %15
  store i64 %add12, ptr %16, align 8
  br label %do.cond13

do.cond13:                                        ; preds = %do.body11
  %18 = load i32, ptr %n.addr, align 4
  %dec14 = add nsw i32 %18, -1
  store i32 %dec14, ptr %n.addr, align 4
  %tobool15 = icmp ne i32 %dec14, 0
  br i1 %tobool15, label %do.body11, label %do.end16, !llvm.loop !9

do.end16:                                         ; preds = %do.cond13
  %19 = load ptr, ptr %p2, align 8
  %20 = load i64, ptr %19, align 8
  %cmp17 = icmp eq i64 %20, 0
  %conv18 = zext i1 %cmp17 to i32
  store i32 %conv18, ptr %retval, align 4
  br label %return

sw.default:                                       ; preds = %entry
  call void @abort() #3
  unreachable

return:                                           ; preds = %do.end16, %do.end7, %do.end
  %21 = load i32, ptr %retval, align 4
  ret i32 %21
}

; Function Attrs: noreturn nounwind
declare void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %v0 = alloca i32, align 4
  %v1 = alloca i64, align 8
  %v2 = alloca i64, align 8
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %v0, align 4
  %call = call i32 @doit(i32 noundef 0, i32 noundef 5, ptr noundef %v0)
  store i64 1, ptr %v1, align 8
  %call1 = call i32 @doit(i32 noundef 1, i32 noundef 5, ptr noundef %v1)
  store i64 1, ptr %v2, align 8
  %call2 = call i32 @doit(i32 noundef 2, i32 noundef 5, ptr noundef %v2)
  %0 = load i32, ptr %v0, align 4
  %cmp = icmp ne i32 %0, 32
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #3
  unreachable

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %v1, align 8
  %cmp3 = icmp ne i64 %1, 32
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @abort() #3
  unreachable

if.end5:                                          ; preds = %if.end
  %2 = load i64, ptr %v2, align 8
  %cmp6 = icmp ne i64 %2, 32
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end5
  call void @abort() #3
  unreachable

if.end8:                                          ; preds = %if.end5
  call void @exit(i32 noundef 0) #4
  unreachable
}

; Function Attrs: noreturn
declare void @exit(i32 noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }
attributes #4 = { noreturn }

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
