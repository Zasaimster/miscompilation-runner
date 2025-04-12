; 169670035209874455290936488565635629463
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/169670035209874455290936488565635629463.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/169670035209874455290936488565635629463.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"Hello, World!\0A\00", align 1
@hpart = dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"This function is never called.\0A\00", align 1
@lpart = dso_local global i64 0, align 8
@back = dso_local global i64 0, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @build(i64 noundef %h, i64 noundef %l) #0 {
entry:
  %h.addr = alloca i64, align 8
  %l.addr = alloca i64, align 8
  store i64 %h, ptr %h.addr, align 8
  store i64 %l, ptr %l.addr, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %conv = sext i32 %call to i64
  store i64 %conv, ptr @hpart, align 8
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  %0 = load i64, ptr @hpart, align 8
  %sh_prom = zext i32 %call1 to i64
  %shl = shl i64 %0, %sh_prom
  store i64 %shl, ptr @hpart, align 8
  %1 = load i64, ptr %l.addr, align 8
  store i64 %1, ptr @lpart, align 8
  %2 = load i64, ptr @lpart, align 8
  %and = and i64 %2, 4294967295
  store i64 %and, ptr @lpart, align 8
  %3 = load i64, ptr @hpart, align 8
  %4 = load i64, ptr @lpart, align 8
  %or = or i64 %3, %4
  store i64 %or, ptr @back, align 8
  %5 = load i64, ptr @back, align 8
  ret i64 %5
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call i64 @build(i64 noundef 0, i64 noundef 1)
  %cmp = icmp ne i64 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #4
  unreachable

if.end:                                           ; preds = %entry
  %call1 = call i64 @build(i64 noundef 0, i64 noundef 0)
  %cmp2 = icmp ne i64 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @abort() #4
  unreachable

if.end4:                                          ; preds = %if.end
  %call5 = call i64 @build(i64 noundef 0, i64 noundef 4294967295)
  %cmp6 = icmp ne i64 %call5, 4294967295
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end4
  call void @abort() #4
  unreachable

if.end8:                                          ; preds = %if.end4
  %call9 = call i64 @build(i64 noundef 0, i64 noundef 4294967294)
  %cmp10 = icmp ne i64 %call9, 4294967294
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end8
  call void @abort() #4
  unreachable

if.end12:                                         ; preds = %if.end8
  %call13 = call i64 @build(i64 noundef 1, i64 noundef 1)
  %cmp14 = icmp ne i64 %call13, 4294967297
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end12
  call void @abort() #4
  unreachable

if.end16:                                         ; preds = %if.end12
  %call17 = call i64 @build(i64 noundef 1, i64 noundef 0)
  %cmp18 = icmp ne i64 %call17, 4294967296
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end16
  call void @abort() #4
  unreachable

if.end20:                                         ; preds = %if.end16
  %call21 = call i64 @build(i64 noundef 1, i64 noundef 4294967295)
  %cmp22 = icmp ne i64 %call21, 8589934591
  br i1 %cmp22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end20
  call void @abort() #4
  unreachable

if.end24:                                         ; preds = %if.end20
  %call25 = call i64 @build(i64 noundef 1, i64 noundef 4294967294)
  %cmp26 = icmp ne i64 %call25, 8589934590
  br i1 %cmp26, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end24
  call void @abort() #4
  unreachable

if.end28:                                         ; preds = %if.end24
  %call29 = call i64 @build(i64 noundef 4294967295, i64 noundef 1)
  %cmp30 = icmp ne i64 %call29, -4294967295
  br i1 %cmp30, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.end28
  call void @abort() #4
  unreachable

if.end32:                                         ; preds = %if.end28
  %call33 = call i64 @build(i64 noundef 4294967295, i64 noundef 0)
  %cmp34 = icmp ne i64 %call33, -4294967296
  br i1 %cmp34, label %if.then35, label %if.end36

if.then35:                                        ; preds = %if.end32
  call void @abort() #4
  unreachable

if.end36:                                         ; preds = %if.end32
  %call37 = call i64 @build(i64 noundef 4294967295, i64 noundef 4294967295)
  %cmp38 = icmp ne i64 %call37, -1
  br i1 %cmp38, label %if.then39, label %if.end40

if.then39:                                        ; preds = %if.end36
  call void @abort() #4
  unreachable

if.end40:                                         ; preds = %if.end36
  %call41 = call i64 @build(i64 noundef 4294967295, i64 noundef 4294967294)
  %cmp42 = icmp ne i64 %call41, -2
  br i1 %cmp42, label %if.then43, label %if.end44

if.then43:                                        ; preds = %if.end40
  call void @abort() #4
  unreachable

if.end44:                                         ; preds = %if.end40
  call void @exit(i32 noundef 0) #5
  unreachable
}

; Function Attrs: noreturn nounwind
declare void @abort() #2

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
