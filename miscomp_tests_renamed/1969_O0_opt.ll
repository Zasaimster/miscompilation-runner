; 134996496937400872041088445026242940664
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/134996496937400872041088445026242940664_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/134996496937400872041088445026242940664.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@s = dso_local global i32 0, align 4
@v = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @bar(i32 noundef %a, i32 noundef %b) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %x = alloca i8, align 1
  store i32 %a, ptr %a.addr, align 4
  store i32 %b, ptr %b.addr, align 4
  %0 = load i8, ptr %x, align 1
  %conv = zext i8 %0 to i32
  %1 = load i8, ptr %x, align 1
  %conv1 = zext i8 %1 to i32
  %mul = mul nsw i32 %conv, %conv1
  %conv2 = trunc i32 %mul to i8
  store i8 %conv2, ptr %x, align 1
  %2 = load i32, ptr @s, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %a.addr, align 4
  %4 = load i8, ptr %x, align 1
  %conv3 = zext i8 %4 to i32
  %cmp = icmp ne i32 %3, %conv3
  br i1 %cmp, label %if.then10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %5 = load i32, ptr %b.addr, align 4
  %6 = load i8, ptr %x, align 1
  %conv5 = zext i8 %6 to i32
  %add = add nsw i32 %conv5, 1
  %conv6 = trunc i32 %add to i8
  %conv7 = zext i8 %conv6 to i32
  %cmp8 = icmp ne i32 %5, %conv7
  br i1 %cmp8, label %if.then10, label %if.end

if.then10:                                        ; preds = %lor.lhs.false, %if.then
  call void @abort() #2
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  br label %if.end23

if.else:                                          ; preds = %entry
  %7 = load i32, ptr %a.addr, align 4
  %8 = load i8, ptr %x, align 1
  %conv11 = zext i8 %8 to i32
  %add12 = add nsw i32 %conv11, 1
  %conv13 = trunc i32 %add12 to i8
  %conv14 = zext i8 %conv13 to i32
  %cmp15 = icmp ne i32 %7, %conv14
  br i1 %cmp15, label %if.then21, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %if.else
  %9 = load i32, ptr %b.addr, align 4
  %10 = load i8, ptr %x, align 1
  %conv18 = zext i8 %10 to i32
  %cmp19 = icmp ne i32 %9, %conv18
  br i1 %cmp19, label %if.then21, label %if.end22

if.then21:                                        ; preds = %lor.lhs.false17, %if.else
  call void @abort() #2
  unreachable

if.end22:                                         ; preds = %lor.lhs.false17
  br label %if.end23

if.end23:                                         ; preds = %if.end22, %if.end
  %11 = load i32, ptr @s, align 4
  %xor = xor i32 %11, 1
  store i32 %xor, ptr @s, align 4
  ret void
}

; Function Attrs: noreturn nounwind
declare void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @foo(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  %a = alloca i8, align 1
  %b = alloca i8, align 1
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %conv = trunc i32 %0 to i8
  store i8 %conv, ptr %a, align 1
  %1 = load i32, ptr %x.addr, align 4
  %add = add nsw i32 %1, 1
  %conv1 = trunc i32 %add to i8
  store i8 %conv1, ptr %b, align 1
  %2 = load i8, ptr %a, align 1
  %conv2 = zext i8 %2 to i32
  %3 = load i8, ptr %b, align 1
  %conv3 = zext i8 %3 to i32
  call void @bar(i32 noundef %conv2, i32 noundef %conv3)
  %4 = load i8, ptr %b, align 1
  %conv4 = zext i8 %4 to i32
  %5 = load i8, ptr %a, align 1
  %conv5 = zext i8 %5 to i32
  %xor = xor i32 %conv5, %conv4
  %conv6 = trunc i32 %xor to i8
  store i8 %conv6, ptr %a, align 1
  %6 = load i8, ptr %a, align 1
  %conv7 = zext i8 %6 to i32
  %7 = load i8, ptr %b, align 1
  %conv8 = zext i8 %7 to i32
  %xor9 = xor i32 %conv8, %conv7
  %conv10 = trunc i32 %xor9 to i8
  store i8 %conv10, ptr %b, align 1
  %8 = load i8, ptr %b, align 1
  %conv11 = zext i8 %8 to i32
  %9 = load i8, ptr %a, align 1
  %conv12 = zext i8 %9 to i32
  %xor13 = xor i32 %conv12, %conv11
  %conv14 = trunc i32 %xor13 to i8
  store i8 %conv14, ptr %a, align 1
  %10 = load i8, ptr %a, align 1
  %conv15 = zext i8 %10 to i32
  %11 = load i8, ptr %b, align 1
  %conv16 = zext i8 %11 to i32
  call void @bar(i32 noundef %conv15, i32 noundef %conv16)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 -10, ptr @v, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr @v, align 4
  %cmp = icmp slt i32 %0, 266
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr @v, align 4
  %call = call i32 @foo(i32 noundef %1)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, ptr @v, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr @v, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  ret i32 0
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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
