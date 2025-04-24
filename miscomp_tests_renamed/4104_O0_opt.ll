; 171646210533601867287684648683577007254
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/171646210533601867287684648683577007254_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/171646210533601867287684648683577007254.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"Done processing!\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @doit(i32 noundef %sel, i32 noundef %n, ptr noundef %p) #0 {
entry:
  %retval = alloca i32, align 4
  %sel.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %p0 = alloca ptr, align 8
  %p1 = alloca ptr, align 8
  %p2 = alloca ptr, align 8
  store i32 %sel, ptr %sel.addr, align 4
  store i32 %n, ptr %n.addr, align 4
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  store ptr %0, ptr %p0, align 8
  %1 = load ptr, ptr %p.addr, align 8
  store ptr %1, ptr %p1, align 8
  %2 = load ptr, ptr %p.addr, align 8
  store ptr %2, ptr %p2, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %3 = load i32, ptr %retval, align 4
  ret i32 %3
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %v0 = alloca i32, align 4
  %v1 = alloca i64, align 8
  %v2 = alloca i64, align 8
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %v0, align 4
  %call = call i32 @doit(i32 noundef 0, i32 noundef 5, ptr noundef %v0)
  store i64 1, ptr %v1, align 8
  %call1 = call i32 @doit(i32 noundef 1, i32 noundef 5, ptr noundef %v1)
  store i64 1, ptr %v2, align 8
  %call2 = call i32 @doit(i32 noundef 2, i32 noundef 5, ptr noundef %v2)
  %0 = load i32, ptr %v0, align 4
  %cmp = icmp ne i32 %0, 32
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #4
  unreachable

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %v1, align 8
  %cmp3 = icmp ne i64 %1, 32
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @abort() #4
  unreachable

if.end5:                                          ; preds = %if.end
  %2 = load i64, ptr %v2, align 8
  %cmp6 = icmp ne i64 %2, 32
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end5
  call void @abort() #4
  unreachable

if.end8:                                          ; preds = %if.end5
  call void @exit(i32 noundef 0) #5
  unreachable
}

; Function Attrs: noreturn nounwind
declare void @abort() #2

; Function Attrs: noreturn
declare void @exit(i32 noundef) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }
attributes #5 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
