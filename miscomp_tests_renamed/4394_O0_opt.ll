; 177096619056127979133927717235075510689
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/177096619056127979133927717235075510689_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/177096619056127979133927717235075510689.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.foo_t = type { i16, i16 }

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @a1(i64 noundef %offset) #0 {
entry:
  %offset.addr = alloca i64, align 8
  store i64 %offset, ptr %offset.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @f() #0 {
entry:
  %foo_p = alloca ptr, align 8
  store ptr null, ptr %foo_p, align 8
  %0 = load ptr, ptr %foo_p, align 8
  %1 = ptrtoint ptr %0 to i64
  %sub = sub i64 %1, 30
  call void @a1(i64 noundef %sub)
  %2 = load ptr, ptr %foo_p, align 8
  %a = getelementptr inbounds nuw %struct.foo_t, ptr %2, i32 0, i32 0
  %3 = load volatile i16, ptr %a, align 2
  %conv = zext i16 %3 to i32
  %and = and i32 %conv, 61440
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %foo_p, align 8
  %a1 = getelementptr inbounds nuw %struct.foo_t, ptr %4, i32 0, i32 0
  %5 = load volatile i16, ptr %a1, align 2
  %conv2 = zext i16 %5 to i32
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %conv2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load ptr, ptr %foo_p, align 8
  %b = getelementptr inbounds nuw %struct.foo_t, ptr %6, i32 0, i32 1
  store volatile i16 256, ptr %b, align 2
  %7 = load ptr, ptr %foo_p, align 8
  %8 = ptrtoint ptr %7 to i64
  %add = add i64 %8, 2
  call void @a1(i64 noundef %add)
  %9 = load ptr, ptr %foo_p, align 8
  %10 = ptrtoint ptr %9 to i64
  %sub3 = sub i64 %10, 30
  call void @a1(i64 noundef %sub3)
  %11 = load ptr, ptr %foo_p, align 8
  ret ptr %11
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %foo_p = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  %call = call ptr @f()
  store ptr %call, ptr %foo_p, align 8
  %0 = load ptr, ptr %foo_p, align 8
  %b = getelementptr inbounds nuw %struct.foo_t, ptr %0, i32 0, i32 1
  %1 = load volatile i16, ptr %b, align 2
  %conv = zext i16 %1 to i32
  %cmp = icmp ne i32 %conv, 256
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
