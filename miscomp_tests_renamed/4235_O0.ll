; 15084767298301064468780286172779009874
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/15084767298301064468780286172779009874.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/15084767298301064468780286172779009874.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"Hello, World!\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test(i32 noundef %one, i32 noundef %bit) #0 {
entry:
  %one.addr = alloca i32, align 4
  %bit.addr = alloca i32, align 4
  %val = alloca i32, align 4
  %zero = alloca i32, align 4
  store i32 %one, ptr %one.addr, align 4
  store i32 %bit, ptr %bit.addr, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %and = and i32 %call, 1
  store i32 %and, ptr %val, align 4
  %call1 = call i32 (...) @doNothing()
  %shr = ashr i32 %call1, 1
  store i32 %shr, ptr %zero, align 4
  %0 = load i32, ptr %val, align 4
  %inc = add i32 %0, 1
  store i32 %inc, ptr %val, align 4
  %1 = load i32, ptr %zero, align 4
  %2 = load i32, ptr %val, align 4
  %shr2 = lshr i32 %2, 1
  %add = add i32 %1, %shr2
  ret i32 %add
}

declare i32 @printf(ptr noundef, ...) #1

declare i32 @doNothing(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call i32 @test(i32 noundef 1, i32 noundef 0)
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #4
  unreachable

if.end:                                           ; preds = %entry
  %call1 = call i32 @test(i32 noundef 1, i32 noundef 1)
  %cmp2 = icmp ne i32 %call1, 1
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @abort() #4
  unreachable

if.end4:                                          ; preds = %if.end
  %call5 = call i32 @test(i32 noundef 1, i32 noundef 65535)
  %cmp6 = icmp ne i32 %call5, 1
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end4
  call void @abort() #4
  unreachable

if.end8:                                          ; preds = %if.end4
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
