; 108674092706529608614528018637555727459
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/108674092706529608614528018637555727459_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/108674092706529608614528018637555727459.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"I am not used!\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Program runs!\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @add(i32 noundef %a, i32 noundef %b, i32 noundef %c, i32 noundef %d, i32 noundef %e, i32 noundef %f, i32 noundef %g, i32 noundef %h, i32 noundef %i, i32 noundef %j, i32 noundef %k, i32 noundef %l, i32 noundef %m) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %c.addr = alloca i32, align 4
  %d.addr = alloca i32, align 4
  %e.addr = alloca i32, align 4
  %f.addr = alloca i32, align 4
  %g.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %i.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  %k.addr = alloca i32, align 4
  %l.addr = alloca i32, align 4
  %m.addr = alloca i32, align 4
  store i32 %a, ptr %a.addr, align 4
  store i32 %b, ptr %b.addr, align 4
  store i32 %c, ptr %c.addr, align 4
  store i32 %d, ptr %d.addr, align 4
  store i32 %e, ptr %e.addr, align 4
  store i32 %f, ptr %f.addr, align 4
  store i32 %g, ptr %g.addr, align 4
  store i32 %h, ptr %h.addr, align 4
  store i32 %i, ptr %i.addr, align 4
  store i32 %j, ptr %j.addr, align 4
  store i32 %k, ptr %k.addr, align 4
  store i32 %l, ptr %l.addr, align 4
  store i32 %m, ptr %m.addr, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %0 = load i32, ptr %b.addr, align 4
  %add = add nsw i32 %call, %0
  %1 = load i32, ptr %c.addr, align 4
  %add1 = add nsw i32 %add, %1
  %2 = load i32, ptr %d.addr, align 4
  %add2 = add nsw i32 %add1, %2
  %3 = load i32, ptr %e.addr, align 4
  %add3 = add nsw i32 %add2, %3
  %4 = load i32, ptr %f.addr, align 4
  %add4 = add nsw i32 %add3, %4
  %5 = load i32, ptr %g.addr, align 4
  %add5 = add nsw i32 %add4, %5
  %6 = load i32, ptr %h.addr, align 4
  %add6 = add nsw i32 %add5, %6
  %7 = load i32, ptr %i.addr, align 4
  %add7 = add nsw i32 %add6, %7
  %8 = load i32, ptr %j.addr, align 4
  %add8 = add nsw i32 %add7, %8
  %9 = load i32, ptr %k.addr, align 4
  %add9 = add nsw i32 %add8, %9
  %10 = load i32, ptr %l.addr, align 4
  %add10 = add nsw i32 %add9, %10
  %11 = load i32, ptr %m.addr, align 4
  %add11 = add nsw i32 %add10, %11
  ret i32 %add11
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  %cmp = icmp ne i32 %call, 91
  br i1 %cmp, label %if.then, label %if.end

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
