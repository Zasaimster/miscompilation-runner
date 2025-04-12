; 135344049560537088633113851683802317164
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/135344049560537088633113851683802317164_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/135344049560537088633113851683802317164.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @dd(i32 noundef %x, i32 noundef %d) #0 {
entry:
  %x.addr = alloca i32, align 4
  %d.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  store i32 %d, ptr %d.addr, align 4
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 -3, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp sle i32 %0, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  %call = call i32 @dd(i32 noundef %1, i32 noundef 1)
  %2 = load i32, ptr %i, align 4
  %div = sdiv i32 %2, 1
  %cmp1 = icmp ne i32 %call, %div
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @abort() #3
  unreachable

if.end:                                           ; preds = %for.body
  %3 = load i32, ptr %i, align 4
  %call2 = call i32 @dd(i32 noundef %3, i32 noundef 2)
  %4 = load i32, ptr %i, align 4
  %div3 = sdiv i32 %4, 2
  %cmp4 = icmp ne i32 %call2, %div3
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  call void @abort() #3
  unreachable

if.end6:                                          ; preds = %if.end
  %5 = load i32, ptr %i, align 4
  %call7 = call i32 @dd(i32 noundef %5, i32 noundef 3)
  %6 = load i32, ptr %i, align 4
  %div8 = sdiv i32 %6, 3
  %cmp9 = icmp ne i32 %call7, %div8
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end6
  call void @abort() #3
  unreachable

if.end11:                                         ; preds = %if.end6
  %7 = load i32, ptr %i, align 4
  %call12 = call i32 @dd(i32 noundef %7, i32 noundef 4)
  %8 = load i32, ptr %i, align 4
  %div13 = sdiv i32 %8, 4
  %cmp14 = icmp ne i32 %call12, %div13
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end11
  call void @abort() #3
  unreachable

if.end16:                                         ; preds = %if.end11
  %9 = load i32, ptr %i, align 4
  %call17 = call i32 @dd(i32 noundef %9, i32 noundef 5)
  %10 = load i32, ptr %i, align 4
  %div18 = sdiv i32 %10, 5
  %cmp19 = icmp ne i32 %call17, %div18
  br i1 %cmp19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end16
  call void @abort() #3
  unreachable

if.end21:                                         ; preds = %if.end16
  %11 = load i32, ptr %i, align 4
  %call22 = call i32 @dd(i32 noundef %11, i32 noundef 6)
  %12 = load i32, ptr %i, align 4
  %div23 = sdiv i32 %12, 6
  %cmp24 = icmp ne i32 %call22, %div23
  br i1 %cmp24, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.end21
  call void @abort() #3
  unreachable

if.end26:                                         ; preds = %if.end21
  %13 = load i32, ptr %i, align 4
  %call27 = call i32 @dd(i32 noundef %13, i32 noundef 7)
  %14 = load i32, ptr %i, align 4
  %div28 = sdiv i32 %14, 7
  %cmp29 = icmp ne i32 %call27, %div28
  br i1 %cmp29, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.end26
  call void @abort() #3
  unreachable

if.end31:                                         ; preds = %if.end26
  %15 = load i32, ptr %i, align 4
  %call32 = call i32 @dd(i32 noundef %15, i32 noundef 8)
  %16 = load i32, ptr %i, align 4
  %div33 = sdiv i32 %16, 8
  %cmp34 = icmp ne i32 %call32, %div33
  br i1 %cmp34, label %if.then35, label %if.end36

if.then35:                                        ; preds = %if.end31
  call void @abort() #3
  unreachable

if.end36:                                         ; preds = %if.end31
  br label %for.inc

for.inc:                                          ; preds = %if.end36
  %17 = load i32, ptr %i, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store i32 2147483644, ptr %i, align 4
  br label %for.cond37

for.cond37:                                       ; preds = %for.inc80, %for.end
  %18 = load i32, ptr %i, align 4
  %cmp38 = icmp ule i32 %18, -2147483646
  br i1 %cmp38, label %for.body39, label %for.end82

for.body39:                                       ; preds = %for.cond37
  %19 = load i32, ptr %i, align 4
  %call40 = call i32 @dd(i32 noundef %19, i32 noundef 1)
  %20 = load i32, ptr %i, align 4
  %div41 = sdiv i32 %20, 1
  %cmp42 = icmp ne i32 %call40, %div41
  br i1 %cmp42, label %if.then43, label %if.end44

if.then43:                                        ; preds = %for.body39
  call void @abort() #3
  unreachable

if.end44:                                         ; preds = %for.body39
  %21 = load i32, ptr %i, align 4
  %call45 = call i32 @dd(i32 noundef %21, i32 noundef 2)
  %22 = load i32, ptr %i, align 4
  %div46 = sdiv i32 %22, 2
  %cmp47 = icmp ne i32 %call45, %div46
  br i1 %cmp47, label %if.then48, label %if.end49

if.then48:                                        ; preds = %if.end44
  call void @abort() #3
  unreachable

if.end49:                                         ; preds = %if.end44
  %23 = load i32, ptr %i, align 4
  %call50 = call i32 @dd(i32 noundef %23, i32 noundef 3)
  %24 = load i32, ptr %i, align 4
  %div51 = sdiv i32 %24, 3
  %cmp52 = icmp ne i32 %call50, %div51
  br i1 %cmp52, label %if.then53, label %if.end54

if.then53:                                        ; preds = %if.end49
  call void @abort() #3
  unreachable

if.end54:                                         ; preds = %if.end49
  %25 = load i32, ptr %i, align 4
  %call55 = call i32 @dd(i32 noundef %25, i32 noundef 4)
  %26 = load i32, ptr %i, align 4
  %div56 = sdiv i32 %26, 4
  %cmp57 = icmp ne i32 %call55, %div56
  br i1 %cmp57, label %if.then58, label %if.end59

if.then58:                                        ; preds = %if.end54
  call void @abort() #3
  unreachable

if.end59:                                         ; preds = %if.end54
  %27 = load i32, ptr %i, align 4
  %call60 = call i32 @dd(i32 noundef %27, i32 noundef 5)
  %28 = load i32, ptr %i, align 4
  %div61 = sdiv i32 %28, 5
  %cmp62 = icmp ne i32 %call60, %div61
  br i1 %cmp62, label %if.then63, label %if.end64

if.then63:                                        ; preds = %if.end59
  call void @abort() #3
  unreachable

if.end64:                                         ; preds = %if.end59
  %29 = load i32, ptr %i, align 4
  %call65 = call i32 @dd(i32 noundef %29, i32 noundef 6)
  %30 = load i32, ptr %i, align 4
  %div66 = sdiv i32 %30, 6
  %cmp67 = icmp ne i32 %call65, %div66
  br i1 %cmp67, label %if.then68, label %if.end69

if.then68:                                        ; preds = %if.end64
  call void @abort() #3
  unreachable

if.end69:                                         ; preds = %if.end64
  %31 = load i32, ptr %i, align 4
  %call70 = call i32 @dd(i32 noundef %31, i32 noundef 7)
  %32 = load i32, ptr %i, align 4
  %div71 = sdiv i32 %32, 7
  %cmp72 = icmp ne i32 %call70, %div71
  br i1 %cmp72, label %if.then73, label %if.end74

if.then73:                                        ; preds = %if.end69
  call void @abort() #3
  unreachable

if.end74:                                         ; preds = %if.end69
  %33 = load i32, ptr %i, align 4
  %call75 = call i32 @dd(i32 noundef %33, i32 noundef 8)
  %34 = load i32, ptr %i, align 4
  %div76 = sdiv i32 %34, 8
  %cmp77 = icmp ne i32 %call75, %div76
  br i1 %cmp77, label %if.then78, label %if.end79

if.then78:                                        ; preds = %if.end74
  call void @abort() #3
  unreachable

if.end79:                                         ; preds = %if.end74
  br label %for.inc80

for.inc80:                                        ; preds = %if.end79
  %35 = load i32, ptr %i, align 4
  %inc81 = add nsw i32 %35, 1
  store i32 %inc81, ptr %i, align 4
  br label %for.cond37, !llvm.loop !8

for.end82:                                        ; preds = %for.cond37
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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
