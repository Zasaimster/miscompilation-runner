; 188704817206483081507607465725456054813
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/188704817206483081507607465725456054813_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/188704817206483081507607465725456054813.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errflag = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @f(i64 noundef %x, i64 noundef %y) #0 {
entry:
  %retval = alloca i64, align 8
  %x.addr = alloca i64, align 8
  %y.addr = alloca i64, align 8
  %r = alloca i64, align 8
  store i64 %x, ptr %x.addr, align 8
  store i64 %y, ptr %y.addr, align 8
  %0 = load i64, ptr %x.addr, align 8
  %1 = load i64, ptr %y.addr, align 8
  %add = add nsw i64 %0, %1
  %conv = trunc i64 %add to i32
  store i32 %conv, ptr @errflag, align 4
  %call = call i32 (...) @testFunction()
  %conv1 = sext i32 %call to i64
  %2 = load i64, ptr %y.addr, align 8
  %add2 = add nsw i64 %conv1, %2
  store i64 %add2, ptr %r, align 8
  %3 = load i64, ptr %x.addr, align 8
  %cmp = icmp sge i64 %3, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load i64, ptr %y.addr, align 8
  %cmp4 = icmp slt i64 %4, 0
  br i1 %cmp4, label %if.then8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %5 = load i64, ptr %r, align 8
  %cmp6 = icmp sge i64 %5, 0
  br i1 %cmp6, label %if.then8, label %if.end

if.then8:                                         ; preds = %lor.lhs.false, %if.then
  %6 = load i64, ptr %r, align 8
  store i64 %6, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  br label %if.end16

if.else:                                          ; preds = %entry
  %7 = load i64, ptr %y.addr, align 8
  %cmp9 = icmp sgt i64 %7, 0
  br i1 %cmp9, label %if.then14, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %if.else
  %8 = load i64, ptr %r, align 8
  %cmp12 = icmp slt i64 %8, 0
  br i1 %cmp12, label %if.then14, label %if.end15

if.then14:                                        ; preds = %lor.lhs.false11, %if.else
  %9 = load i64, ptr %r, align 8
  store i64 %9, ptr %retval, align 8
  br label %return

if.end15:                                         ; preds = %lor.lhs.false11
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.end
  store i32 1, ptr @errflag, align 4
  store i64 0, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end16, %if.then14, %if.then8
  %10 = load i64, ptr %retval, align 8
  ret i64 %10
}

declare i32 @testFunction(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call i64 @f(i64 noundef 0, i64 noundef 0)
  %0 = load i32, ptr @errflag, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #4
  unreachable

if.end:                                           ; preds = %entry
  %call1 = call i64 @f(i64 noundef 1, i64 noundef -1)
  %1 = load i32, ptr @errflag, align 4
  %tobool2 = icmp ne i32 %1, 0
  br i1 %tobool2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @abort() #4
  unreachable

if.end4:                                          ; preds = %if.end
  %call5 = call i64 @f(i64 noundef -1, i64 noundef 1)
  %2 = load i32, ptr @errflag, align 4
  %tobool6 = icmp ne i32 %2, 0
  br i1 %tobool6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end4
  call void @abort() #4
  unreachable

if.end8:                                          ; preds = %if.end4
  %call9 = call i64 @f(i64 noundef -9223372036854775808, i64 noundef -9223372036854775808)
  %3 = load i32, ptr @errflag, align 4
  %tobool10 = icmp ne i32 %3, 0
  br i1 %tobool10, label %if.end12, label %if.then11

if.then11:                                        ; preds = %if.end8
  call void @abort() #4
  unreachable

if.end12:                                         ; preds = %if.end8
  %call13 = call i64 @f(i64 noundef -9223372036854775808, i64 noundef -1)
  %4 = load i32, ptr @errflag, align 4
  %tobool14 = icmp ne i32 %4, 0
  br i1 %tobool14, label %if.end16, label %if.then15

if.then15:                                        ; preds = %if.end12
  call void @abort() #4
  unreachable

if.end16:                                         ; preds = %if.end12
  %call17 = call i64 @f(i64 noundef 9223372036854775807, i64 noundef 9223372036854775807)
  %5 = load i32, ptr @errflag, align 4
  %tobool18 = icmp ne i32 %5, 0
  br i1 %tobool18, label %if.end20, label %if.then19

if.then19:                                        ; preds = %if.end16
  call void @abort() #4
  unreachable

if.end20:                                         ; preds = %if.end16
  %call21 = call i64 @f(i64 noundef 9223372036854775807, i64 noundef 1)
  %6 = load i32, ptr @errflag, align 4
  %tobool22 = icmp ne i32 %6, 0
  br i1 %tobool22, label %if.end24, label %if.then23

if.then23:                                        ; preds = %if.end20
  call void @abort() #4
  unreachable

if.end24:                                         ; preds = %if.end20
  %call25 = call i64 @f(i64 noundef 9223372036854775807, i64 noundef -9223372036854775808)
  %7 = load i32, ptr @errflag, align 4
  %tobool26 = icmp ne i32 %7, 0
  br i1 %tobool26, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end24
  call void @abort() #4
  unreachable

if.end28:                                         ; preds = %if.end24
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
