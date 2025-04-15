; 100423790200848069375027678096817401288
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/100423790200848069375027678096817401288_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/100423790200848069375027678096817401288.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { ptr, i32, ptr, [2 x i32] }

@.str = private unnamed_addr constant [30 x i8] c"Square calculation complete.\0A\00", align 1
@main.sc = internal global [3 x i32] [i32 2, i32 3, i32 4], align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f(ptr noundef %x) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca ptr, align 8
  %t = alloca ptr, align 8
  %t1 = alloca i32, align 4
  %t2 = alloca i32, align 4
  %t3 = alloca i32, align 4
  %a0 = alloca i32, align 4
  %a1 = alloca i32, align 4
  store ptr %x, ptr %x.addr, align 8
  %0 = load ptr, ptr %x.addr, align 8
  %sc = getelementptr inbounds nuw %struct.S, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %sc, align 8
  store ptr %1, ptr %t, align 8
  %2 = load ptr, ptr %t, align 8
  %arrayidx = getelementptr inbounds i32, ptr %2, i64 0
  %3 = load i32, ptr %arrayidx, align 4
  store i32 %3, ptr %t1, align 4
  %4 = load ptr, ptr %t, align 8
  %arrayidx1 = getelementptr inbounds i32, ptr %4, i64 1
  %5 = load i32, ptr %arrayidx1, align 4
  store i32 %5, ptr %t2, align 4
  %6 = load ptr, ptr %t, align 8
  %arrayidx2 = getelementptr inbounds i32, ptr %6, i64 2
  %7 = load i32, ptr %arrayidx2, align 4
  store i32 %7, ptr %t3, align 4
  %8 = load ptr, ptr %x.addr, align 8
  %a = getelementptr inbounds nuw %struct.S, ptr %8, i32 0, i32 3
  %arrayidx3 = getelementptr inbounds [2 x i32], ptr %a, i64 0, i64 0
  %9 = load i32, ptr %arrayidx3, align 8
  store i32 %9, ptr %a0, align 4
  %10 = load ptr, ptr %x.addr, align 8
  %a4 = getelementptr inbounds nuw %struct.S, ptr %10, i32 0, i32 3
  %arrayidx5 = getelementptr inbounds [2 x i32], ptr %a4, i64 0, i64 1
  %11 = load i32, ptr %arrayidx5, align 4
  store i32 %11, ptr %a1, align 4
  %12 = load i32, ptr %t1, align 4
  %13 = load ptr, ptr %t, align 8
  %arrayidx6 = getelementptr inbounds i32, ptr %13, i64 2
  store i32 %12, ptr %arrayidx6, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %14 = load i32, ptr %a1, align 4
  %15 = load ptr, ptr %t, align 8
  %arrayidx7 = getelementptr inbounds i32, ptr %15, i64 0
  store i32 %14, ptr %arrayidx7, align 4
  %16 = load i32, ptr %a0, align 4
  %17 = load ptr, ptr %x.addr, align 8
  %a8 = getelementptr inbounds nuw %struct.S, ptr %17, i32 0, i32 3
  %arrayidx9 = getelementptr inbounds [2 x i32], ptr %a8, i64 0, i64 1
  store i32 %16, ptr %arrayidx9, align 4
  %18 = load i32, ptr %t3, align 4
  %19 = load ptr, ptr %x.addr, align 8
  %a10 = getelementptr inbounds nuw %struct.S, ptr %19, i32 0, i32 3
  %arrayidx11 = getelementptr inbounds [2 x i32], ptr %a10, i64 0, i64 0
  store i32 %18, ptr %arrayidx11, align 8
  %20 = load i32, ptr %t2, align 4
  %21 = load ptr, ptr %x.addr, align 8
  %fc = getelementptr inbounds nuw %struct.S, ptr %21, i32 0, i32 1
  store i32 %20, ptr %fc, align 8
  %22 = load ptr, ptr %t, align 8
  %23 = load ptr, ptr %x.addr, align 8
  %sp = getelementptr inbounds nuw %struct.S, ptr %23, i32 0, i32 0
  store ptr %22, ptr %sp, align 8
  %24 = load i32, ptr %retval, align 4
  ret i32 %24
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %s = alloca %struct.S, align 8
  store i32 0, ptr %retval, align 4
  %sc = getelementptr inbounds nuw %struct.S, ptr %s, i32 0, i32 2
  store ptr @main.sc, ptr %sc, align 8
  %a = getelementptr inbounds nuw %struct.S, ptr %s, i32 0, i32 3
  %arrayidx = getelementptr inbounds [2 x i32], ptr %a, i64 0, i64 0
  store i32 10, ptr %arrayidx, align 8
  %a1 = getelementptr inbounds nuw %struct.S, ptr %s, i32 0, i32 3
  %arrayidx2 = getelementptr inbounds [2 x i32], ptr %a1, i64 0, i64 1
  store i32 11, ptr %arrayidx2, align 4
  %call = call i32 @f(ptr noundef %s)
  %sp = getelementptr inbounds nuw %struct.S, ptr %s, i32 0, i32 0
  %0 = load ptr, ptr %sp, align 8
  %arrayidx3 = getelementptr inbounds i32, ptr %0, i64 2
  %1 = load i32, ptr %arrayidx3, align 4
  %cmp = icmp ne i32 %1, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #4
  unreachable

if.end:                                           ; preds = %entry
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
