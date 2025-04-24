; 100996767576832073483397112442253652747
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/100996767576832073483397112442253652747_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/100996767576832073483397112442253652747.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @calc_mp(i32 noundef %mod) #0 {
entry:
  %mod.addr = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  store i32 %mod, ptr %mod.addr, align 4
  store i32 -1, ptr %c, align 4
  %0 = load i32, ptr %c, align 4
  %1 = load i32, ptr %mod.addr, align 4
  %div = udiv i32 %0, %1
  store i32 %div, ptr %a, align 4
  %2 = load i32, ptr %a, align 4
  %3 = load i32, ptr %mod.addr, align 4
  %mul = mul i32 %2, %3
  %sub = sub i32 0, %mul
  store i32 %sub, ptr %b, align 4
  %4 = load i32, ptr %b, align 4
  %5 = load i32, ptr %mod.addr, align 4
  %cmp = icmp ugt i32 %4, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i32, ptr %a, align 4
  %add = add i32 %6, 1
  store i32 %add, ptr %a, align 4
  %7 = load i32, ptr %mod.addr, align 4
  %8 = load i32, ptr %b, align 4
  %sub1 = sub i32 %8, %7
  store i32 %sub1, ptr %b, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i32, ptr %b, align 4
  ret i32 %9
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @func2() #0 {
entry:
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %sum = alloca i32, align 4
  store i32 5, ptr %a, align 4
  store i32 6, ptr %b, align 4
  %0 = load i32, ptr %a, align 4
  %1 = load i32, ptr %b, align 4
  %add = add nsw i32 %0, %1
  store i32 %add, ptr %sum, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store i32 1234, ptr %x, align 4
  %0 = load i32, ptr %x, align 4
  %call = call i32 @calc_mp(i32 noundef %0)
  store i32 %call, ptr %y, align 4
  %1 = load i32, ptr %y, align 4
  %cmp = icmp ne i32 %1, 680
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #3
  unreachable

if.end:                                           ; preds = %entry
  call void @exit(i32 noundef 0) #4
  unreachable
}

; Function Attrs: noreturn nounwind
declare void @abort() #1

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
