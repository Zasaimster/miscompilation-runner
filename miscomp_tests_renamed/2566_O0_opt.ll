; 198438220565897243654783391684557122467
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/198438220565897243654783391684557122467_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/198438220565897243654783391684557122467.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test1(i8 noundef signext %x) #0 {
entry:
  %x.addr = alloca i8, align 1
  store i8 %x, ptr %x.addr, align 1
  ret i32 0
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
  call void @abort() #2
  unreachable

if.end:                                           ; preds = %for.body
  %2 = load i32, ptr %c, align 4
  %conv3 = trunc i32 %2 to i8
  %call4 = call i32 @test1u(i8 noundef zeroext %conv3)
  %cmp5 = icmp ne i32 %call4, 0
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  call void @abort() #2
  unreachable

if.end8:                                          ; preds = %if.end
  %3 = load i32, ptr %c, align 4
  %conv9 = trunc i32 %3 to i8
  %call10 = call i32 @test2(i8 noundef signext %conv9)
  %cmp11 = icmp ne i32 %call10, 1
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end8
  call void @abort() #2
  unreachable

if.end14:                                         ; preds = %if.end8
  %4 = load i32, ptr %c, align 4
  %conv15 = trunc i32 %4 to i8
  %call16 = call i32 @test2u(i8 noundef zeroext %conv15)
  %cmp17 = icmp ne i32 %call16, 1
  br i1 %cmp17, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end14
  call void @abort() #2
  unreachable

if.end20:                                         ; preds = %if.end14
  %5 = load i32, ptr %c, align 4
  %conv21 = trunc i32 %5 to i8
  %call22 = call i32 @test3(i8 noundef signext %conv21)
  %cmp23 = icmp ne i32 %call22, 1
  br i1 %cmp23, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.end20
  call void @abort() #2
  unreachable

if.end26:                                         ; preds = %if.end20
  %6 = load i32, ptr %c, align 4
  %conv27 = trunc i32 %6 to i8
  %call28 = call i32 @test3u(i8 noundef zeroext %conv27)
  %cmp29 = icmp ne i32 %call28, 1
  br i1 %cmp29, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.end26
  call void @abort() #2
  unreachable

if.end32:                                         ; preds = %if.end26
  %7 = load i32, ptr %c, align 4
  %conv33 = trunc i32 %7 to i8
  %call34 = call i32 @test4(i8 noundef signext %conv33)
  %cmp35 = icmp ne i32 %call34, 1
  br i1 %cmp35, label %if.then37, label %if.end38

if.then37:                                        ; preds = %if.end32
  call void @abort() #2
  unreachable

if.end38:                                         ; preds = %if.end32
  %8 = load i32, ptr %c, align 4
  %conv39 = trunc i32 %8 to i8
  %call40 = call i32 @test4u(i8 noundef zeroext %conv39)
  %cmp41 = icmp ne i32 %call40, 1
  br i1 %cmp41, label %if.then43, label %if.end44

if.then43:                                        ; preds = %if.end38
  call void @abort() #2
  unreachable

if.end44:                                         ; preds = %if.end38
  %9 = load i32, ptr %c, align 4
  %conv45 = trunc i32 %9 to i8
  %call46 = call i32 @test5(i8 noundef signext %conv45)
  %cmp47 = icmp ne i32 %call46, 0
  br i1 %cmp47, label %if.then49, label %if.end50

if.then49:                                        ; preds = %if.end44
  call void @abort() #2
  unreachable

if.end50:                                         ; preds = %if.end44
  %10 = load i32, ptr %c, align 4
  %conv51 = trunc i32 %10 to i8
  %call52 = call i32 @test5u(i8 noundef zeroext %conv51)
  %cmp53 = icmp ne i32 %call52, 0
  br i1 %cmp53, label %if.then55, label %if.end56

if.then55:                                        ; preds = %if.end50
  call void @abort() #2
  unreachable

if.end56:                                         ; preds = %if.end50
  %11 = load i32, ptr %c, align 4
  %conv57 = trunc i32 %11 to i8
  %call58 = call i32 @test6(i8 noundef signext %conv57)
  %cmp59 = icmp ne i32 %call58, 0
  br i1 %cmp59, label %if.then61, label %if.end62

if.then61:                                        ; preds = %if.end56
  call void @abort() #2
  unreachable

if.end62:                                         ; preds = %if.end56
  %12 = load i32, ptr %c, align 4
  %conv63 = trunc i32 %12 to i8
  %call64 = call i32 @test6u(i8 noundef zeroext %conv63)
  %cmp65 = icmp ne i32 %call64, 0
  br i1 %cmp65, label %if.then67, label %if.end68

if.then67:                                        ; preds = %if.end62
  call void @abort() #2
  unreachable

if.end68:                                         ; preds = %if.end62
  br label %for.inc

for.inc:                                          ; preds = %if.end68
  %13 = load i32, ptr %c, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, ptr %c, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare void @abort() #1

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
