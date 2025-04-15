; 125509146334334561921313485446817804843
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/125509146334334561921313485446817804843_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/125509146334334561921313485446817804843.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"Dead code.\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test1(i8 noundef signext %x) #0 {
entry:
  %x.addr = alloca i8, align 1
  store i8 %x, ptr %x.addr, align 1
  %0 = load i8, ptr %x.addr, align 1
  %conv = sext i8 %0 to i32
  %div = sdiv i32 %conv, 100
  %cmp = icmp eq i32 %div, 3
  %conv1 = zext i1 %cmp to i32
  ret i32 %conv1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test1u(i8 noundef zeroext %x) #0 {
entry:
  %x.addr = alloca i8, align 1
  store i8 %x, ptr %x.addr, align 1
  %0 = load i8, ptr %x.addr, align 1
  %conv = zext i8 %0 to i32
  %div = sdiv i32 %conv, 100
  %cmp = icmp eq i32 %div, 3
  %conv1 = zext i1 %cmp to i32
  ret i32 %conv1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test2(i8 noundef signext %x) #0 {
entry:
  %x.addr = alloca i8, align 1
  store i8 %x, ptr %x.addr, align 1
  %0 = load i8, ptr %x.addr, align 1
  %conv = sext i8 %0 to i32
  %div = sdiv i32 %conv, 100
  %cmp = icmp ne i32 %div, 3
  %conv1 = zext i1 %cmp to i32
  ret i32 %conv1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test2u(i8 noundef zeroext %x) #0 {
entry:
  %x.addr = alloca i8, align 1
  store i8 %x, ptr %x.addr, align 1
  %0 = load i8, ptr %x.addr, align 1
  %conv = zext i8 %0 to i32
  %div = sdiv i32 %conv, 100
  %cmp = icmp ne i32 %div, 3
  %conv1 = zext i1 %cmp to i32
  ret i32 %conv1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test3(i8 noundef signext %x) #0 {
entry:
  %x.addr = alloca i8, align 1
  store i8 %x, ptr %x.addr, align 1
  %0 = load i8, ptr %x.addr, align 1
  %conv = sext i8 %0 to i32
  %div = sdiv i32 %conv, 100
  %cmp = icmp slt i32 %div, 3
  %conv1 = zext i1 %cmp to i32
  ret i32 %conv1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test3u(i8 noundef zeroext %x) #0 {
entry:
  %x.addr = alloca i8, align 1
  store i8 %x, ptr %x.addr, align 1
  %0 = load i8, ptr %x.addr, align 1
  %conv = zext i8 %0 to i32
  %div = sdiv i32 %conv, 100
  %cmp = icmp slt i32 %div, 3
  %conv1 = zext i1 %cmp to i32
  ret i32 %conv1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test4(i8 noundef signext %x) #0 {
entry:
  %x.addr = alloca i8, align 1
  store i8 %x, ptr %x.addr, align 1
  %0 = load i8, ptr %x.addr, align 1
  %conv = sext i8 %0 to i32
  %div = sdiv i32 %conv, 100
  %cmp = icmp sle i32 %div, 3
  %conv1 = zext i1 %cmp to i32
  ret i32 %conv1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test4u(i8 noundef zeroext %x) #0 {
entry:
  %x.addr = alloca i8, align 1
  store i8 %x, ptr %x.addr, align 1
  %0 = load i8, ptr %x.addr, align 1
  %conv = zext i8 %0 to i32
  %div = sdiv i32 %conv, 100
  %cmp = icmp sle i32 %div, 3
  %conv1 = zext i1 %cmp to i32
  ret i32 %conv1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test5(i8 noundef signext %x) #0 {
entry:
  %x.addr = alloca i8, align 1
  store i8 %x, ptr %x.addr, align 1
  %0 = load i8, ptr %x.addr, align 1
  %conv = sext i8 %0 to i32
  %div = sdiv i32 %conv, 100
  %cmp = icmp sgt i32 %div, 3
  %conv1 = zext i1 %cmp to i32
  ret i32 %conv1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test5u(i8 noundef zeroext %x) #0 {
entry:
  %x.addr = alloca i8, align 1
  store i8 %x, ptr %x.addr, align 1
  %0 = load i8, ptr %x.addr, align 1
  %conv = zext i8 %0 to i32
  %div = sdiv i32 %conv, 100
  %cmp = icmp sgt i32 %div, 3
  %conv1 = zext i1 %cmp to i32
  ret i32 %conv1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test6(i8 noundef signext %x) #0 {
entry:
  %x.addr = alloca i8, align 1
  store i8 %x, ptr %x.addr, align 1
  %0 = load i8, ptr %x.addr, align 1
  %conv = sext i8 %0 to i32
  %div = sdiv i32 %conv, 100
  %cmp = icmp sge i32 %div, 3
  %conv1 = zext i1 %cmp to i32
  ret i32 %conv1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test6u(i8 noundef zeroext %x) #0 {
entry:
  %x.addr = alloca i8, align 1
  store i8 %x, ptr %x.addr, align 1
  %0 = load i8, ptr %x.addr, align 1
  %conv = zext i8 %0 to i32
  %div = sdiv i32 %conv, 100
  %cmp = icmp sge i32 %div, 3
  %conv1 = zext i1 %cmp to i32
  ret i32 %conv1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %c = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 -128, ptr %c, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %c, align 4
  %cmp = icmp slt i32 %0, 256
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %c, align 4
  %conv = trunc i32 %1 to i8
  %call = call i32 @test1(i8 noundef signext %conv)
  %cmp1 = icmp ne i32 %call, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @abort() #3
  unreachable

if.end:                                           ; preds = %for.body
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %2 = load i32, ptr %c, align 4
  %conv4 = trunc i32 %2 to i8
  %call5 = call i32 @test1u(i8 noundef zeroext %conv4)
  %cmp6 = icmp ne i32 %call5, 0
  br i1 %cmp6, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end
  call void @abort() #3
  unreachable

if.end9:                                          ; preds = %if.end
  %3 = load i32, ptr %c, align 4
  %conv10 = trunc i32 %3 to i8
  %call11 = call i32 @test2(i8 noundef signext %conv10)
  %cmp12 = icmp ne i32 %call11, 1
  br i1 %cmp12, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end9
  call void @abort() #3
  unreachable

if.end15:                                         ; preds = %if.end9
  %4 = load i32, ptr %c, align 4
  %conv16 = trunc i32 %4 to i8
  %call17 = call i32 @test2u(i8 noundef zeroext %conv16)
  %cmp18 = icmp ne i32 %call17, 1
  br i1 %cmp18, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end15
  call void @abort() #3
  unreachable

if.end21:                                         ; preds = %if.end15
  %5 = load i32, ptr %c, align 4
  %conv22 = trunc i32 %5 to i8
  %call23 = call i32 @test3(i8 noundef signext %conv22)
  %cmp24 = icmp ne i32 %call23, 1
  br i1 %cmp24, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.end21
  call void @abort() #3
  unreachable

if.end27:                                         ; preds = %if.end21
  %6 = load i32, ptr %c, align 4
  %conv28 = trunc i32 %6 to i8
  %call29 = call i32 @test3u(i8 noundef zeroext %conv28)
  %cmp30 = icmp ne i32 %call29, 1
  br i1 %cmp30, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.end27
  call void @abort() #3
  unreachable

if.end33:                                         ; preds = %if.end27
  %7 = load i32, ptr %c, align 4
  %conv34 = trunc i32 %7 to i8
  %call35 = call i32 @test4(i8 noundef signext %conv34)
  %cmp36 = icmp ne i32 %call35, 1
  br i1 %cmp36, label %if.then38, label %if.end39

if.then38:                                        ; preds = %if.end33
  call void @abort() #3
  unreachable

if.end39:                                         ; preds = %if.end33
  %8 = load i32, ptr %c, align 4
  %conv40 = trunc i32 %8 to i8
  %call41 = call i32 @test4u(i8 noundef zeroext %conv40)
  %cmp42 = icmp ne i32 %call41, 1
  br i1 %cmp42, label %if.then44, label %if.end45

if.then44:                                        ; preds = %if.end39
  call void @abort() #3
  unreachable

if.end45:                                         ; preds = %if.end39
  %9 = load i32, ptr %c, align 4
  %conv46 = trunc i32 %9 to i8
  %call47 = call i32 @test5(i8 noundef signext %conv46)
  %cmp48 = icmp ne i32 %call47, 0
  br i1 %cmp48, label %if.then50, label %if.end51

if.then50:                                        ; preds = %if.end45
  call void @abort() #3
  unreachable

if.end51:                                         ; preds = %if.end45
  %10 = load i32, ptr %c, align 4
  %conv52 = trunc i32 %10 to i8
  %call53 = call i32 @test5u(i8 noundef zeroext %conv52)
  %cmp54 = icmp ne i32 %call53, 0
  br i1 %cmp54, label %if.then56, label %if.end57

if.then56:                                        ; preds = %if.end51
  call void @abort() #3
  unreachable

if.end57:                                         ; preds = %if.end51
  %11 = load i32, ptr %c, align 4
  %conv58 = trunc i32 %11 to i8
  %call59 = call i32 @test6(i8 noundef signext %conv58)
  %cmp60 = icmp ne i32 %call59, 0
  br i1 %cmp60, label %if.then62, label %if.end63

if.then62:                                        ; preds = %if.end57
  call void @abort() #3
  unreachable

if.end63:                                         ; preds = %if.end57
  %12 = load i32, ptr %c, align 4
  %conv64 = trunc i32 %12 to i8
  %call65 = call i32 @test6u(i8 noundef zeroext %conv64)
  %cmp66 = icmp ne i32 %call65, 0
  br i1 %cmp66, label %if.then68, label %if.end69

if.then68:                                        ; preds = %if.end63
  call void @abort() #3
  unreachable

if.end69:                                         ; preds = %if.end63
  br label %for.inc

for.inc:                                          ; preds = %if.end69
  %13 = load i32, ptr %c, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, ptr %c, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare void @abort() #1

declare i32 @printf(ptr noundef, ...) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
