; 169691158539265685367969254068632289905
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/169691158539265685367969254068632289905_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/169691158539265685367969254068632289905.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [25 x i8] c"Main function executed.\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zero() #0 {
entry:
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @one() #0 {
entry:
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  ret i32 %call
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call i32 (...) @printHello()
  store i32 %call, ptr %x, align 4
  %0 = load i32, ptr %x, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, ptr %x, align 4
  store i32 %inc, ptr %y, align 4
  %1 = load i32, ptr %x, align 4
  %cmp = icmp ne i32 %1, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %y, align 4
  %cmp1 = icmp ne i32 %2, 1
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 1, ptr %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %call4 = call i32 @one()
  store i32 %call4, ptr %x, align 4
  %3 = load i32, ptr %x, align 4
  %dec = add nsw i32 %3, -1
  store i32 %dec, ptr %x, align 4
  store i32 %dec, ptr %y, align 4
  %4 = load i32, ptr %x, align 4
  %cmp5 = icmp ne i32 %4, 0
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end3
  store i32 1, ptr %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.end3
  %5 = load i32, ptr %y, align 4
  %cmp8 = icmp ne i32 %5, 0
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end7
  store i32 1, ptr %retval, align 4
  br label %return

if.end10:                                         ; preds = %if.end7
  %call11 = call i32 @zero()
  store i32 %call11, ptr %x, align 4
  %6 = load i32, ptr %x, align 4
  %inc12 = add nsw i32 %6, 1
  store i32 %inc12, ptr %x, align 4
  store i32 %6, ptr %y, align 4
  %7 = load i32, ptr %x, align 4
  %cmp13 = icmp ne i32 %7, 1
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end10
  store i32 1, ptr %retval, align 4
  br label %return

if.end15:                                         ; preds = %if.end10
  %8 = load i32, ptr %y, align 4
  %cmp16 = icmp ne i32 %8, 0
  br i1 %cmp16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end15
  store i32 1, ptr %retval, align 4
  br label %return

if.end18:                                         ; preds = %if.end15
  %call19 = call i32 @one()
  store i32 %call19, ptr %x, align 4
  %9 = load i32, ptr %x, align 4
  %dec20 = add nsw i32 %9, -1
  store i32 %dec20, ptr %x, align 4
  store i32 %9, ptr %y, align 4
  %10 = load i32, ptr %x, align 4
  %cmp21 = icmp ne i32 %10, 0
  br i1 %cmp21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end18
  store i32 1, ptr %retval, align 4
  br label %return

if.end23:                                         ; preds = %if.end18
  %11 = load i32, ptr %y, align 4
  %cmp24 = icmp ne i32 %11, 1
  br i1 %cmp24, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.end23
  store i32 1, ptr %retval, align 4
  br label %return

if.end26:                                         ; preds = %if.end23
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end26, %if.then25, %if.then22, %if.then17, %if.then14, %if.then9, %if.then6, %if.then2, %if.then
  %12 = load i32, ptr %retval, align 4
  ret i32 %12
}

declare i32 @printHello(...) #1

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
