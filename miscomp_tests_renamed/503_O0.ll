; 176202075434079597307656944969004197366
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/176202075434079597307656944969004197366.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/176202075434079597307656944969004197366.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.u = type { double }
%struct.anon = type { i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"Hello, World!\0A\00", align 1
@x = dso_local global [2 x %union.u] zeroinitializer, align 16
@v = dso_local global %union.u zeroinitializer, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f(ptr noundef %x, i64 %v.coerce) #0 {
entry:
  %retval = alloca i32, align 4
  %v = alloca %union.u, align 8
  %x.addr = alloca ptr, align 8
  %coerce.dive = getelementptr inbounds nuw %union.u, ptr %v, i32 0, i32 0
  store i64 %v.coerce, ptr %coerce.dive, align 8
  store ptr %x, ptr %x.addr, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %0 = load i32, ptr %retval, align 4
  ret i32 %0
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 0, ptr getelementptr inbounds nuw (%struct.anon, ptr getelementptr inbounds ([2 x %union.u], ptr @x, i64 0, i64 1), i32 0, i32 1), align 4
  store i32 0, ptr getelementptr inbounds ([2 x %union.u], ptr @x, i64 0, i64 1), align 8
  store i32 1, ptr @v, align 8
  store i32 2, ptr getelementptr inbounds nuw (%struct.anon, ptr @v, i32 0, i32 1), align 4
  %0 = load i64, ptr @v, align 8
  %call = call i32 @f(ptr noundef @x, i64 %0)
  %1 = load i32, ptr getelementptr inbounds ([2 x %union.u], ptr @x, i64 0, i64 1), align 8
  %cmp = icmp ne i32 %1, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, ptr getelementptr inbounds nuw (%struct.anon, ptr getelementptr inbounds ([2 x %union.u], ptr @x, i64 0, i64 1), i32 0, i32 1), align 4
  %cmp1 = icmp ne i32 %2, 2
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void @abort() #4
  unreachable

if.end:                                           ; preds = %lor.lhs.false
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
