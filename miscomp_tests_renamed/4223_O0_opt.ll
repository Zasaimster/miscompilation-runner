; 173918849063435717557245446159888274332
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/173918849063435717557245446159888274332_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/173918849063435717557245446159888274332.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @div1(i8 noundef signext %x) #0 {
entry:
  %x.addr = alloca i8, align 1
  store i8 %x, ptr %x.addr, align 1
  %0 = load i8, ptr %x.addr, align 1
  %conv = sext i8 %0 to i32
  %div = sdiv i32 %conv, -1
  ret i32 %div
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @div2(i16 noundef signext %x) #0 {
entry:
  %x.addr = alloca i16, align 2
  store i16 %x, ptr %x.addr, align 2
  %0 = load i16, ptr %x.addr, align 2
  %conv = sext i16 %0 to i32
  %div = sdiv i32 %conv, -1
  %sub = sub nsw i32 %div, 128
  ret i32 %sub
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @div3(i8 noundef signext %x, i8 noundef signext %y) #0 {
entry:
  %x.addr = alloca i8, align 1
  %y.addr = alloca i8, align 1
  store i8 %x, ptr %x.addr, align 1
  store i8 %y, ptr %y.addr, align 1
  %0 = load i8, ptr %x.addr, align 1
  %conv = sext i8 %0 to i32
  %1 = load i8, ptr %y.addr, align 1
  %conv1 = sext i8 %1 to i32
  %div = sdiv i32 %conv, %conv1
  ret i32 %div
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @div4(i16 noundef signext %x, i16 noundef signext %y) #0 {
entry:
  %x.addr = alloca i16, align 2
  %y.addr = alloca i16, align 2
  store i16 %x, ptr %x.addr, align 2
  store i16 %y, ptr %y.addr, align 2
  %0 = load i16, ptr %x.addr, align 2
  %conv = sext i16 %0 to i32
  %1 = load i16, ptr %y.addr, align 2
  %conv1 = sext i16 %1 to i32
  %div = sdiv i32 %conv, %conv1
  ret i32 %div
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mod1(i8 noundef signext %x) #0 {
entry:
  %x.addr = alloca i8, align 1
  store i8 %x, ptr %x.addr, align 1
  %0 = load i8, ptr %x.addr, align 1
  %conv = sext i8 %0 to i32
  %rem = srem i32 %conv, -1
  ret i32 %rem
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mod2(i16 noundef signext %x) #0 {
entry:
  %x.addr = alloca i16, align 2
  store i16 %x, ptr %x.addr, align 2
  %0 = load i16, ptr %x.addr, align 2
  %conv = sext i16 %0 to i32
  %rem = srem i32 %conv, -1
  ret i32 %rem
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mod3(i8 noundef signext %x, i8 noundef signext %y) #0 {
entry:
  %x.addr = alloca i8, align 1
  %y.addr = alloca i8, align 1
  store i8 %x, ptr %x.addr, align 1
  store i8 %y, ptr %y.addr, align 1
  %0 = load i8, ptr %x.addr, align 1
  %conv = sext i8 %0 to i32
  %1 = load i8, ptr %y.addr, align 1
  %conv1 = sext i8 %1 to i32
  %rem = srem i32 %conv, %conv1
  ret i32 %rem
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mod4(i16 noundef signext %x, i16 noundef signext %y) #0 {
entry:
  %x.addr = alloca i16, align 2
  %y.addr = alloca i16, align 2
  store i16 %x, ptr %x.addr, align 2
  store i16 %y, ptr %y.addr, align 2
  %0 = load i16, ptr %x.addr, align 2
  %conv = sext i16 %0 to i32
  %1 = load i16, ptr %y.addr, align 2
  %conv1 = sext i16 %1 to i32
  %rem = srem i32 %conv, %conv1
  ret i32 %rem
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @mod5(i64 noundef %x, i64 noundef %y) #0 {
entry:
  %x.addr = alloca i64, align 8
  %y.addr = alloca i64, align 8
  store i64 %x, ptr %x.addr, align 8
  store i64 %y, ptr %y.addr, align 8
  %0 = load i64, ptr %x.addr, align 8
  %1 = load i64, ptr %y.addr, align 8
  %rem = srem i64 %0, %1
  ret i64 %rem
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @mod6(i64 noundef %x, i64 noundef %y) #0 {
entry:
  %x.addr = alloca i64, align 8
  %y.addr = alloca i64, align 8
  store i64 %x, ptr %x.addr, align 8
  store i64 %y, ptr %y.addr, align 8
  %0 = load i64, ptr %x.addr, align 8
  %1 = load i64, ptr %y.addr, align 8
  %rem = urem i64 %0, %1
  ret i64 %rem
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call i32 @div1(i8 noundef signext -128)
  %cmp = icmp ne i32 %call, 128
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #3
  unreachable

if.end:                                           ; preds = %entry
  %call1 = call i32 @div2(i16 noundef signext -32768)
  %cmp2 = icmp ne i32 %call1, 32768
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @abort() #3
  unreachable

if.end4:                                          ; preds = %if.end
  %call5 = call i32 @div3(i8 noundef signext -128, i8 noundef signext -1)
  %cmp6 = icmp ne i32 %call5, 128
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end4
  call void @abort() #3
  unreachable

if.end8:                                          ; preds = %if.end4
  %call9 = call i32 @div4(i16 noundef signext -32768, i16 noundef signext -1)
  %cmp10 = icmp ne i32 %call9, 32768
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end8
  call void @abort() #3
  unreachable

if.end12:                                         ; preds = %if.end8
  %call13 = call i32 @mod1(i8 noundef signext -128)
  %cmp14 = icmp ne i32 %call13, 0
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end12
  call void @abort() #3
  unreachable

if.end16:                                         ; preds = %if.end12
  %call17 = call i32 @mod2(i16 noundef signext -32768)
  %cmp18 = icmp ne i32 %call17, 0
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end16
  call void @abort() #3
  unreachable

if.end20:                                         ; preds = %if.end16
  %call21 = call i32 @mod3(i8 noundef signext -128, i8 noundef signext -1)
  %cmp22 = icmp ne i32 %call21, 0
  br i1 %cmp22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end20
  call void @abort() #3
  unreachable

if.end24:                                         ; preds = %if.end20
  %call25 = call i32 @mod4(i16 noundef signext -32768, i16 noundef signext -1)
  %cmp26 = icmp ne i32 %call25, 0
  br i1 %cmp26, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end24
  call void @abort() #3
  unreachable

if.end28:                                         ; preds = %if.end24
  %call29 = call i64 @mod5(i64 noundef 1342177280, i64 noundef 2)
  %cmp30 = icmp ne i64 %call29, 0
  br i1 %cmp30, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.end28
  call void @abort() #3
  unreachable

if.end32:                                         ; preds = %if.end28
  %call33 = call i64 @mod6(i64 noundef 1342177280, i64 noundef 2)
  %cmp34 = icmp ne i64 %call33, 0
  br i1 %cmp34, label %if.then35, label %if.end36

if.then35:                                        ; preds = %if.end32
  call void @abort() #3
  unreachable

if.end36:                                         ; preds = %if.end32
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
