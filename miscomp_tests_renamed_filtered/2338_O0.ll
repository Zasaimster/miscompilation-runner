; 140620194620134957571522757905804745602
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/140620194620134957571522757905804745602.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/140620194620134957571522757905804745602.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b = type { i32 }

@a = dso_local constant i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"Dead code.\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"long\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @a_f() #0 {
entry:
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  ret i32 %call
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @b_f() #0 {
entry:
  ret i32 10
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @foo(i32 noundef %i) #0 {
entry:
  %i.addr = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  %0 = load i32, ptr %i.addr, align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %l = alloca i64, align 8
  %titi = alloca %struct.b, align 4
  %ptr = alloca ptr, align 8
  %ti = alloca ptr, align 8
  %i2 = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 0, ptr %i, align 4
  store i64 2, ptr %l, align 8
  %call = call i32 @a_f()
  store i32 %call, ptr %i, align 4
  %0 = load i32, ptr %i, align 4
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %0)
  %call2 = call i32 @a_f()
  %div = sdiv i32 %call2, 2
  store i32 %div, ptr %i, align 4
  %1 = load i32, ptr %i, align 4
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %1)
  store i32 20, ptr %i, align 4
  %2 = load i32, ptr %i, align 4
  %call4 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %2)
  %call5 = call i32 (i32, ...) @gen_sw(i32 noundef 0)
  store i32 %call5, ptr %i, align 4
  %3 = load i32, ptr %i, align 4
  %call6 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %3)
  store i32 2, ptr %i, align 4
  %4 = load i32, ptr %i, align 4
  %call7 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %4)
  store i32 0, ptr %i, align 4
  %5 = load i32, ptr %i, align 4
  %call8 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %5)
  store i32 5, ptr %i, align 4
  %6 = load i32, ptr %i, align 4
  %call9 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %6)
  store i32 1, ptr %i, align 4
  %7 = load i32, ptr %i, align 4
  %call10 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %7)
  store i32 2, ptr %i, align 4
  %8 = load i32, ptr %i, align 4
  %call11 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %8)
  store i32 3, ptr %i, align 4
  %9 = load i32, ptr %i, align 4
  %call12 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %9)
  store i32 4, ptr %i, align 4
  %10 = load i32, ptr %i, align 4
  %call13 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %10)
  %call14 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, ptr noundef @.str.3)
  store i32 1, ptr %i, align 4
  %11 = load i32, ptr %i, align 4
  %call15 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %11)
  store i32 3, ptr %i, align 4
  %12 = load i32, ptr %i, align 4
  %call16 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %12)
  ret i32 0
}

declare i32 @gen_sw(...) #1

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
