; 152492529865523415590148471177818720346
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/152492529865523415590148471177818720346.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/152492529865523415590148471177818720346.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %my_int = alloca i32, align 4
  %result = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 924, ptr %my_int, align 4
  %0 = load i32, ptr %my_int, align 4
  %mul = mul nsw i32 %0, 2
  %add = add nsw i32 %mul, 4
  %sub = sub i32 %add, 8
  %div = udiv i32 %sub, 2
  store i32 %div, ptr %result, align 4
  %1 = load i32, ptr %result, align 4
  %add1 = add i32 %1, 5
  store i32 %add1, ptr %result, align 4
  %2 = load i32, ptr %result, align 4
  %cmp = icmp ne i32 %2, 922
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #3
  unreachable

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %my_int, align 4
  %mul2 = mul nsw i32 %3, 2
  %sub3 = sub i32 %mul2, 4
  %add4 = add i32 %sub3, 2
  %div5 = udiv i32 %add4, 2
  store i32 %div5, ptr %result, align 4
  %4 = load i32, ptr %result, align 4
  %cmp6 = icmp ne i32 %4, 923
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  call void @abort() #3
  unreachable

if.end8:                                          ; preds = %if.end
  %5 = load i32, ptr %my_int, align 4
  %add9 = add nsw i32 %5, 2
  %mul10 = mul nsw i32 %add9, 2
  %sub11 = sub i32 %mul10, 8
  %sub12 = sub i32 %sub11, 4
  %div13 = udiv i32 %sub12, 2
  store i32 %div13, ptr %result, align 4
  %6 = load i32, ptr %result, align 4
  %cmp14 = icmp ne i32 %6, 920
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end8
  call void @abort() #3
  unreachable

if.end16:                                         ; preds = %if.end8
  %7 = load i32, ptr %my_int, align 4
  %add17 = add nsw i32 %7, 2
  %mul18 = mul nsw i32 %add17, 2
  %sub19 = sub i32 %mul18, 12
  %div20 = udiv i32 %sub19, 2
  store i32 %div20, ptr %result, align 4
  %8 = load i32, ptr %result, align 4
  %cmp21 = icmp ne i32 %8, 920
  br i1 %cmp21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end16
  call void @abort() #3
  unreachable

if.end23:                                         ; preds = %if.end16
  %9 = load i32, ptr %my_int, align 4
  %mul24 = mul nsw i32 %9, 4
  %add25 = add i32 %mul24, 2
  %sub26 = sub i32 %add25, 4
  %div27 = udiv i32 %sub26, 2
  store i32 %div27, ptr %result, align 4
  %10 = load i32, ptr %result, align 4
  %cmp28 = icmp ne i32 %10, 1847
  br i1 %cmp28, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.end23
  call void @abort() #3
  unreachable

if.end30:                                         ; preds = %if.end23
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
