; 114292074127240903158888956625366698827
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/114292074127240903158888956625366698827_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/114292074127240903158888956625366698827.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"Value of a: %d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f(i32 noundef %bitcount, i32 noundef %mant) #0 {
entry:
  %retval = alloca i32, align 4
  %bitcount.addr = alloca i32, align 4
  %mant.addr = alloca i32, align 4
  %mask = alloca i32, align 4
  store i32 %bitcount, ptr %bitcount.addr, align 4
  store i32 %mant, ptr %mant.addr, align 4
  %0 = load i32, ptr %bitcount.addr, align 4
  %shl = shl i32 -1, %0
  store i32 %shl, ptr %mask, align 4
  %1 = load i32, ptr %mant.addr, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %1)
  %2 = load i32, ptr %mask, align 4
  %sub = sub nsw i32 0, %2
  %and = and i32 %call, %sub
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %ab

if.end:                                           ; preds = %entry
  %call1 = call i32 (i32, i32, ...) @show(i32 noundef 10, i32 noundef 20)
  %3 = load i32, ptr %mask, align 4
  %not = xor i32 %3, -1
  %and2 = and i32 %call1, %not
  %tobool3 = icmp ne i32 %and2, 0
  br i1 %tobool3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  br label %auf

if.end5:                                          ; preds = %if.end
  br label %ab

ab:                                               ; preds = %if.end5, %if.then
  store i32 0, ptr %retval, align 4
  br label %return

auf:                                              ; preds = %if.then4
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %auf, %ab
  %4 = load i32, ptr %retval, align 4
  ret i32 %4
}

declare i32 @printf(ptr noundef, ...) #1

declare i32 @show(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call i32 @f(i32 noundef 0, i32 noundef -1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #4
  unreachable

if.end:                                           ; preds = %entry
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
