; 185462541113231257491150463240386705681
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/185462541113231257491150463240386705681_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/185462541113231257491150463240386705681.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [25 x i8] c"Main function executed.\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @fn_4parms(i8 noundef zeroext %a, ptr noundef %b, ptr noundef %c, ptr noundef %d) #0 {
entry:
  %a.addr = alloca i8, align 1
  %b.addr = alloca ptr, align 8
  %c.addr = alloca ptr, align 8
  %d.addr = alloca ptr, align 8
  store i8 %a, ptr %a.addr, align 1
  store ptr %b, ptr %b.addr, align 8
  store ptr %c, ptr %c.addr, align 8
  store ptr %d, ptr %d.addr, align 8
  %0 = load ptr, ptr %b.addr, align 8
  %1 = load i64, ptr %0, align 8
  %cmp = icmp ne i64 %1, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %c.addr, align 8
  %3 = load i64, ptr %2, align 8
  %cmp1 = icmp ne i64 %3, 2
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %4 = load ptr, ptr %d.addr, align 8
  %5 = load i32, ptr %4, align 4
  %cmp3 = icmp ne i32 %5, 3
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  %call = call i32 (...) @printHello()
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false2
  ret void
}

declare i32 @printHello(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca i8, align 1
  %b = alloca i64, align 8
  %c = alloca i64, align 8
  %d = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i8 0, ptr %a, align 1
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %conv = sext i32 %call to i64
  store i64 %conv, ptr %b, align 8
  store i64 2, ptr %c, align 8
  store i32 3, ptr %d, align 4
  %0 = load i8, ptr %a, align 1
  call void @fn_4parms(i8 noundef zeroext %0, ptr noundef %b, ptr noundef %c, ptr noundef %d)
  ret i32 0
}

declare i32 @printf(ptr noundef, ...) #1

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
