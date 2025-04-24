; 114116851419447350266782395671512033973
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/114116851419447350266782395671512033973_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/114116851419447350266782395671512033973.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [30 x i8] c"This function is never used.\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Hello, World!\0A\00", align 1

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
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %conv = sext i32 %call to i64
  %0 = inttoptr i64 %conv to ptr
  store ptr %0, ptr %p0, align 8
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  %conv2 = sext i32 %call1 to i64
  %1 = inttoptr i64 %conv2 to ptr
  store ptr %1, ptr %p1, align 8
  %2 = load ptr, ptr %p.addr, align 8
  store ptr %2, ptr %p2, align 8
  %3 = load i32, ptr %sel.addr, align 4
  switch i32 %3, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb4
    i32 2, label %sw.bb13
  ]

sw.bb:                                            ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %do.cond, %sw.bb
  %4 = load ptr, ptr %p0, align 8
  %5 = load i32, ptr %4, align 4
  %6 = load ptr, ptr %p0, align 8
  %7 = load i32, ptr %6, align 4
  %add = add nsw i32 %7, %5
  store i32 %add, ptr %6, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %8 = load i32, ptr %n.addr, align 4
  %dec = add nsw i32 %8, -1
  store i32 %dec, ptr %n.addr, align 4
  %tobool = icmp ne i32 %dec, 0
  br i1 %tobool, label %do.body, label %do.end, !llvm.loop !6

do.end:                                           ; preds = %do.cond
  %9 = load ptr, ptr %p0, align 8
  %10 = load i32, ptr %9, align 4
  %cmp = icmp eq i32 %10, 0
  %conv3 = zext i1 %cmp to i32
  store i32 %conv3, ptr %retval, align 4
  br label %return

sw.bb4:                                           ; preds = %entry
  br label %do.body5

do.body5:                                         ; preds = %do.cond7, %sw.bb4
  %11 = load ptr, ptr %p1, align 8
  %12 = load i64, ptr %11, align 8
  %13 = load ptr, ptr %p1, align 8
  %14 = load i64, ptr %13, align 8
  %add6 = add nsw i64 %14, %12
  store i64 %add6, ptr %13, align 8
  br label %do.cond7

do.cond7:                                         ; preds = %do.body5
  %15 = load i32, ptr %n.addr, align 4
  %dec8 = add nsw i32 %15, -1
  store i32 %dec8, ptr %n.addr, align 4
  %tobool9 = icmp ne i32 %dec8, 0
  br i1 %tobool9, label %do.body5, label %do.end10, !llvm.loop !8

do.end10:                                         ; preds = %do.cond7
  %16 = load ptr, ptr %p1, align 8
  %17 = load i64, ptr %16, align 8
  %cmp11 = icmp eq i64 %17, 0
  %conv12 = zext i1 %cmp11 to i32
  store i32 %conv12, ptr %retval, align 4
  br label %return

sw.bb13:                                          ; preds = %entry
  br label %do.body14

do.body14:                                        ; preds = %do.cond16, %sw.bb13
  %18 = load ptr, ptr %p2, align 8
  %19 = load i64, ptr %18, align 8
  %20 = load ptr, ptr %p2, align 8
  %21 = load i64, ptr %20, align 8
  %add15 = add nsw i64 %21, %19
  store i64 %add15, ptr %20, align 8
  br label %do.cond16

do.cond16:                                        ; preds = %do.body14
  %22 = load i32, ptr %n.addr, align 4
  %dec17 = add nsw i32 %22, -1
  store i32 %dec17, ptr %n.addr, align 4
  %tobool18 = icmp ne i32 %dec17, 0
  br i1 %tobool18, label %do.body14, label %do.end19, !llvm.loop !9

do.end19:                                         ; preds = %do.cond16
  %23 = load ptr, ptr %p2, align 8
  %24 = load i64, ptr %23, align 8
  %cmp20 = icmp eq i64 %24, 0
  %conv21 = zext i1 %cmp20 to i32
  store i32 %conv21, ptr %retval, align 4
  br label %return

sw.default:                                       ; preds = %entry
  call void @abort() #4
  unreachable

return:                                           ; preds = %do.end19, %do.end10, %do.end
  %25 = load i32, ptr %retval, align 4
  ret i32 %25
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noreturn nounwind
declare void @abort() #2

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
  call void @abort() #4
  unreachable

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %v1, align 8
  %cmp3 = icmp ne i64 %1, 32
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @abort() #4
  unreachable

if.end5:                                          ; preds = %if.end
  %2 = load i64, ptr %v2, align 8
  %cmp6 = icmp ne i64 %2, 32
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end5
  call void @abort() #4
  unreachable

if.end8:                                          ; preds = %if.end5
  call void @exit(i32 noundef 0) #5
  unreachable
}

; Function Attrs: noreturn
declare void @exit(i32 noundef) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }
attributes #5 = { noreturn }

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
