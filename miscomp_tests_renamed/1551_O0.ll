; 127778991877201957542895818363121553401
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/127778991877201957542895818363121553401.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/127778991877201957542895818363121553401.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S2 = type { ptr }

@.str = private unnamed_addr constant [20 x i8] c"This code is dead.\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"%d %d %d %d %d %d %d %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"enum to int: %u\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @should_compile(ptr noundef %s) #0 {
entry:
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  %0 = load ptr, ptr %s.addr, align 8
  %f2 = getelementptr inbounds nuw %struct.S2, ptr %0, i32 0, i32 0
  store ptr @it_real_fn, ptr %f2, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @it_real_fn() #0 {
entry:
  ret i32 1
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %frod = alloca i32, align 4
  %epos = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %epos, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef 0, i32 noundef 1, i32 noundef 2, i32 noundef 3, i32 noundef 54, i32 noundef 73, i32 noundef 74, i32 noundef 75)
  store i32 12, ptr %frod, align 4
  %0 = load i32, ptr %frod, align 4
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %0)
  store i32 54, ptr %frod, align 4
  %1 = load i32, ptr %frod, align 4
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %1)
  %call3 = call i32 @deref_uintptr(ptr noundef %epos)
  %call4 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %call3)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @deref_uintptr(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %1 = load i32, ptr %0, align 4
  ret i32 %1
}

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
