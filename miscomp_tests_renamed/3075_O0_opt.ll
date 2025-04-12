; 117807910148739137403942358764446971695
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/117807910148739137403942358764446971695_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/117807910148739137403942358764446971695.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x = type { i16, [2 x i8] }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %bit = alloca %struct.x, align 4
  %u = alloca i32, align 4
  %i = alloca i32, align 4
  %unsigned_result = alloca i32, align 4
  %signed_result = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store i32 44, ptr %unsigned_result, align 4
  store i32 -13, ptr %signed_result, align 4
  %bf.load = load i16, ptr %bit, align 4
  %bf.clear = and i16 %bf.load, -16257
  %bf.set = or i16 %bf.clear, 7808
  store i16 %bf.set, ptr %bit, align 4
  store i32 61, ptr %u, align 4
  %bf.load1 = load i16, ptr %bit, align 4
  %bf.clear2 = and i16 %bf.load1, -128
  %bf.set3 = or i16 %bf.clear2, 115
  store i16 %bf.set3, ptr %bit, align 4
  store i32 -13, ptr %i, align 4
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %u, align 4
  %rem = urem i32 %0, %1
  %2 = load i32, ptr %unsigned_result, align 4
  %cmp = icmp ne i32 %rem, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #2
  unreachable

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %i, align 4
  %4 = load i32, ptr %u, align 4
  %rem4 = urem i32 %3, %4
  %5 = load i32, ptr %unsigned_result, align 4
  %cmp5 = icmp ne i32 %rem4, %5
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  call void @abort() #2
  unreachable

if.end7:                                          ; preds = %if.end
  %6 = load i32, ptr %i, align 4
  %bf.load8 = load i16, ptr %bit, align 4
  %bf.lshr = lshr i16 %bf.load8, 7
  %bf.clear9 = and i16 %bf.lshr, 127
  %bf.cast = zext i16 %bf.clear9 to i32
  %rem10 = srem i32 %6, %bf.cast
  %7 = load i32, ptr %signed_result, align 4
  %cmp11 = icmp ne i32 %rem10, %7
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end7
  call void @abort() #2
  unreachable

if.end13:                                         ; preds = %if.end7
  %bf.load14 = load i16, ptr %bit, align 4
  %bf.shl = shl i16 %bf.load14, 9
  %bf.ashr = ashr i16 %bf.shl, 9
  %bf.cast15 = sext i16 %bf.ashr to i32
  %bf.load16 = load i16, ptr %bit, align 4
  %bf.lshr17 = lshr i16 %bf.load16, 7
  %bf.clear18 = and i16 %bf.lshr17, 127
  %bf.cast19 = zext i16 %bf.clear18 to i32
  %rem20 = srem i32 %bf.cast15, %bf.cast19
  %8 = load i32, ptr %signed_result, align 4
  %cmp21 = icmp ne i32 %rem20, %8
  br i1 %cmp21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end13
  call void @abort() #2
  unreachable

if.end23:                                         ; preds = %if.end13
  %9 = load i32, ptr %i, align 4
  %bf.load24 = load i16, ptr %bit, align 4
  %bf.lshr25 = lshr i16 %bf.load24, 7
  %bf.clear26 = and i16 %bf.lshr25, 127
  %bf.cast27 = zext i16 %bf.clear26 to i32
  %rem28 = urem i32 %9, %bf.cast27
  %10 = load i32, ptr %unsigned_result, align 4
  %cmp29 = icmp ne i32 %rem28, %10
  br i1 %cmp29, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.end23
  call void @abort() #2
  unreachable

if.end31:                                         ; preds = %if.end23
  %bf.load32 = load i16, ptr %bit, align 4
  %bf.shl33 = shl i16 %bf.load32, 9
  %bf.ashr34 = ashr i16 %bf.shl33, 9
  %bf.cast35 = sext i16 %bf.ashr34 to i32
  %bf.load36 = load i16, ptr %bit, align 4
  %bf.lshr37 = lshr i16 %bf.load36, 7
  %bf.clear38 = and i16 %bf.lshr37, 127
  %bf.cast39 = zext i16 %bf.clear38 to i32
  %rem40 = urem i32 %bf.cast35, %bf.cast39
  %11 = load i32, ptr %unsigned_result, align 4
  %cmp41 = icmp ne i32 %rem40, %11
  br i1 %cmp41, label %if.then42, label %if.end43

if.then42:                                        ; preds = %if.end31
  call void @abort() #2
  unreachable

if.end43:                                         ; preds = %if.end31
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @func4() #0 {
entry:
  %a = alloca float, align 4
  %b = alloca float, align 4
  %c = alloca float, align 4
  store float 1.000000e+00, ptr %a, align 4
  store float 2.000000e+00, ptr %b, align 4
  %0 = load float, ptr %a, align 4
  %1 = load float, ptr %b, align 4
  %mul = fmul float %0, %1
  store float %mul, ptr %c, align 4
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
