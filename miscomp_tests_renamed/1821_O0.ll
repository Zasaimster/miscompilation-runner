; 117559858714527881698144706248565601461
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/117559858714527881698144706248565601461.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/117559858714527881698144706248565601461.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"int: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"float: %f\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%d %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"%f %f\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @charfunc(i8 noundef signext %a) #0 {
entry:
  %a.addr = alloca i8, align 1
  store i8 %a, ptr %a.addr, align 1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @intfunc(i32 noundef %a) #0 {
entry:
  %a.addr = alloca i32, align 4
  store i32 %a, ptr %a.addr, align 4
  %0 = load i32, ptr %a.addr, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %0)
  ret void
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @floatfunc(float noundef %a) #0 {
entry:
  %a.addr = alloca float, align 4
  store float %a, ptr %a.addr, align 4
  %0 = load float, ptr %a.addr, align 4
  %conv = fpext float %0 to double
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.1, double noundef %conv)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %b = alloca i8, align 1
  %c = alloca i8, align 1
  %d = alloca i32, align 4
  %e = alloca i32, align 4
  %f = alloca float, align 4
  %g = alloca float, align 4
  store i32 0, ptr %retval, align 4
  call void @charfunc(i8 noundef signext 97)
  call void @charfunc(i8 noundef signext 98)
  call void @charfunc(i8 noundef signext 99)
  call void @intfunc(i32 noundef 97)
  call void @intfunc(i32 noundef 98)
  call void @intfunc(i32 noundef 99)
  call void @floatfunc(float noundef 9.700000e+01)
  call void @floatfunc(float noundef 9.800000e+01)
  call void @floatfunc(float noundef 9.900000e+01)
  store i8 97, ptr %b, align 1
  store i8 97, ptr %c, align 1
  %0 = load i8, ptr %b, align 1
  %conv = sext i8 %0 to i32
  %1 = load i8, ptr %c, align 1
  %conv1 = sext i8 %1 to i32
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %conv, i32 noundef %conv1)
  store i32 97, ptr %d, align 4
  store i32 97, ptr %e, align 4
  %2 = load i32, ptr %d, align 4
  %3 = load i32, ptr %e, align 4
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %2, i32 noundef %3)
  store float 9.700000e+01, ptr %f, align 4
  store float 9.700000e+01, ptr %g, align 4
  %4 = load float, ptr %f, align 4
  %conv3 = fpext float %4 to double
  %5 = load float, ptr %g, align 4
  %conv4 = fpext float %5 to double
  %call5 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, double noundef %conv3, double noundef %conv4)
  ret i32 0
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
