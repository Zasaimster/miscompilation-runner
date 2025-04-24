; 182339764969465109669940510141865150440
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/182339764969465109669940510141865150440_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/182339764969465109669940510141865150440.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.A = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"Main function executed.\0A\00", align 1
@__const.main.w = private unnamed_addr constant %struct.A { i32 100, i32 110, i32 20, i32 30, i32 -1, i32 -1 }, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(ptr noundef %v, i32 noundef %w, i32 noundef %x, ptr noundef %y, ptr noundef %z) #0 {
entry:
  %v.addr = alloca ptr, align 8
  %w.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %y.addr = alloca ptr, align 8
  %z.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  store i32 %w, ptr %w.addr, align 4
  store i32 %x, ptr %x.addr, align 4
  store ptr %y, ptr %y.addr, align 8
  store ptr %z, ptr %z.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @bar(ptr noundef %v, i32 noundef %x, i32 noundef %y, i32 noundef %w, i32 noundef %h) #0 {
entry:
  %v.addr = alloca ptr, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %oldw = alloca i32, align 4
  %oldh = alloca i32, align 4
  %e = alloca i32, align 4
  %f = alloca i32, align 4
  %dx = alloca i32, align 4
  %dy = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  store i32 %x, ptr %x.addr, align 4
  store i32 %y, ptr %y.addr, align 4
  store i32 %w, ptr %w.addr, align 4
  store i32 %h, ptr %h.addr, align 4
  %call = call i32 (...) @printHello()
  %0 = load i32, ptr %x.addr, align 4
  %cmp = icmp ne i32 %call, %0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %1 = load i32, ptr %y.addr, align 4
  %cmp2 = icmp ne i32 %call1, %1
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %2 = load i32, ptr %w.addr, align 4
  store i32 %2, ptr %oldw, align 4
  %3 = load i32, ptr %h.addr, align 4
  store i32 %3, ptr %oldh, align 4
  %4 = load ptr, ptr %v.addr, align 8
  %e3 = getelementptr inbounds nuw %struct.A, ptr %4, i32 0, i32 4
  %5 = load i32, ptr %e3, align 4
  store i32 %5, ptr %e, align 4
  %6 = load ptr, ptr %v.addr, align 8
  %f4 = getelementptr inbounds nuw %struct.A, ptr %6, i32 0, i32 5
  %7 = load i32, ptr %f4, align 4
  store i32 %7, ptr %f, align 4
  %8 = load ptr, ptr %v.addr, align 8
  call void @foo(ptr noundef %8, i32 noundef 0, i32 noundef 0, ptr noundef %w.addr, ptr noundef %h.addr)
  %9 = load i32, ptr %oldw, align 4
  %10 = load i32, ptr %w.addr, align 4
  %sub = sub nsw i32 %9, %10
  %conv = sitofp i32 %sub to double
  %11 = load i32, ptr %e, align 4
  %conv5 = sitofp i32 %11 to double
  %mul = fmul double %conv, %conv5
  %div = fdiv double %mul, 2.000000e+00
  %conv6 = fptosi double %div to i32
  store i32 %conv6, ptr %dx, align 4
  %12 = load i32, ptr %oldh, align 4
  %13 = load i32, ptr %h.addr, align 4
  %sub7 = sub nsw i32 %12, %13
  %conv8 = sitofp i32 %sub7 to double
  %14 = load i32, ptr %f, align 4
  %conv9 = sitofp i32 %14 to double
  %mul10 = fmul double %conv8, %conv9
  %div11 = fdiv double %mul10, 2.000000e+00
  %conv12 = fptosi double %div11 to i32
  store i32 %conv12, ptr %dy, align 4
  %15 = load i32, ptr %dx, align 4
  %16 = load i32, ptr %x.addr, align 4
  %add = add nsw i32 %16, %15
  store i32 %add, ptr %x.addr, align 4
  %17 = load i32, ptr %dy, align 4
  %18 = load i32, ptr %y.addr, align 4
  %add13 = add nsw i32 %18, %17
  store i32 %add13, ptr %y.addr, align 4
  %19 = load i32, ptr %x.addr, align 4
  %20 = load ptr, ptr %v.addr, align 8
  %a = getelementptr inbounds nuw %struct.A, ptr %20, i32 0, i32 0
  store i32 %19, ptr %a, align 4
  %21 = load i32, ptr %y.addr, align 4
  %22 = load ptr, ptr %v.addr, align 8
  %b = getelementptr inbounds nuw %struct.A, ptr %22, i32 0, i32 1
  store i32 %21, ptr %b, align 4
  %23 = load i32, ptr %w.addr, align 4
  %24 = load ptr, ptr %v.addr, align 8
  %c = getelementptr inbounds nuw %struct.A, ptr %24, i32 0, i32 2
  store i32 %23, ptr %c, align 4
  %25 = load i32, ptr %h.addr, align 4
  %26 = load ptr, ptr %v.addr, align 8
  %d = getelementptr inbounds nuw %struct.A, ptr %26, i32 0, i32 3
  store i32 %25, ptr %d, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  ret void
}

declare i32 @printHello(...) #1

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %w = alloca %struct.A, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %w, ptr align 4 @__const.main.w, i64 24, i1 false)
  call void @bar(ptr noundef %w, i32 noundef 400, i32 noundef 420, i32 noundef 50, i32 noundef 70)
  %d = getelementptr inbounds nuw %struct.A, ptr %w, i32 0, i32 3
  %0 = load i32, ptr %d, align 4
  %cmp = icmp ne i32 %0, 70
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #5
  unreachable

if.end:                                           ; preds = %entry
  call void @exit(i32 noundef 0) #6
  unreachable
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: noreturn nounwind
declare void @abort() #3

; Function Attrs: noreturn
declare void @exit(i32 noundef) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind }
attributes #6 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
