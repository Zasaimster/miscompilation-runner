; 190731372062643944481230409079071877883
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/190731372062643944481230409079071877883_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/190731372062643944481230409079071877883.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@C = dso_local global x86_fp80 0xK4001A000000000000000, align 16
@U = dso_local global x86_fp80 0xK3FFF8000000000000000, align 16
@Y2 = dso_local global x86_fp80 0xK4002B000000000000000, align 16
@Y1 = dso_local global x86_fp80 0xK40038800000000000000, align 16
@X = dso_local global x86_fp80 0xK00000000000000000000, align 16
@Y = dso_local global x86_fp80 0xK00000000000000000000, align 16
@Z = dso_local global x86_fp80 0xK00000000000000000000, align 16
@T = dso_local global x86_fp80 0xK00000000000000000000, align 16
@R = dso_local global x86_fp80 0xK00000000000000000000, align 16
@S = dso_local global x86_fp80 0xK00000000000000000000, align 16

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %0 = load x86_fp80, ptr @C, align 16
  %1 = load x86_fp80, ptr @U, align 16
  %add = fadd x86_fp80 %0, %1
  %2 = load x86_fp80, ptr @Y2, align 16
  %mul = fmul x86_fp80 %add, %2
  store x86_fp80 %mul, ptr @X, align 16
  %3 = load x86_fp80, ptr @C, align 16
  %4 = load x86_fp80, ptr @U, align 16
  %sub = fsub x86_fp80 %3, %4
  %5 = load x86_fp80, ptr @U, align 16
  %sub1 = fsub x86_fp80 %sub, %5
  store x86_fp80 %sub1, ptr @Y, align 16
  %6 = load x86_fp80, ptr @C, align 16
  %7 = load x86_fp80, ptr @U, align 16
  %add2 = fadd x86_fp80 %6, %7
  %8 = load x86_fp80, ptr @U, align 16
  %add3 = fadd x86_fp80 %add2, %8
  store x86_fp80 %add3, ptr @Z, align 16
  %9 = load x86_fp80, ptr @C, align 16
  %10 = load x86_fp80, ptr @U, align 16
  %sub4 = fsub x86_fp80 %9, %10
  %11 = load x86_fp80, ptr @Y1, align 16
  %mul5 = fmul x86_fp80 %sub4, %11
  store x86_fp80 %mul5, ptr @T, align 16
  %12 = load x86_fp80, ptr @X, align 16
  %13 = load x86_fp80, ptr @Z, align 16
  %14 = load x86_fp80, ptr @U, align 16
  %add6 = fadd x86_fp80 %13, %14
  %sub7 = fsub x86_fp80 %12, %add6
  store x86_fp80 %sub7, ptr @X, align 16
  %15 = load x86_fp80, ptr @Y, align 16
  %16 = load x86_fp80, ptr @Y1, align 16
  %mul8 = fmul x86_fp80 %15, %16
  store x86_fp80 %mul8, ptr @R, align 16
  %17 = load x86_fp80, ptr @Z, align 16
  %18 = load x86_fp80, ptr @Y2, align 16
  %mul9 = fmul x86_fp80 %17, %18
  store x86_fp80 %mul9, ptr @S, align 16
  %19 = load x86_fp80, ptr @T, align 16
  %20 = load x86_fp80, ptr @Y, align 16
  %sub10 = fsub x86_fp80 %19, %20
  store x86_fp80 %sub10, ptr @T, align 16
  %21 = load x86_fp80, ptr @U, align 16
  %22 = load x86_fp80, ptr @Y, align 16
  %sub11 = fsub x86_fp80 %21, %22
  %23 = load x86_fp80, ptr @R, align 16
  %add12 = fadd x86_fp80 %sub11, %23
  store x86_fp80 %add12, ptr @Y, align 16
  %24 = load x86_fp80, ptr @S, align 16
  %25 = load x86_fp80, ptr @Z, align 16
  %26 = load x86_fp80, ptr @U, align 16
  %add13 = fadd x86_fp80 %25, %26
  %27 = load x86_fp80, ptr @U, align 16
  %add14 = fadd x86_fp80 %add13, %27
  %sub15 = fsub x86_fp80 %24, %add14
  store x86_fp80 %sub15, ptr @Z, align 16
  %28 = load x86_fp80, ptr @Y2, align 16
  %29 = load x86_fp80, ptr @U, align 16
  %add16 = fadd x86_fp80 %28, %29
  %30 = load x86_fp80, ptr @Y1, align 16
  %mul17 = fmul x86_fp80 %add16, %30
  store x86_fp80 %mul17, ptr @R, align 16
  %31 = load x86_fp80, ptr @Y2, align 16
  %32 = load x86_fp80, ptr @Y1, align 16
  %mul18 = fmul x86_fp80 %31, %32
  store x86_fp80 %mul18, ptr @Y1, align 16
  %33 = load x86_fp80, ptr @R, align 16
  %34 = load x86_fp80, ptr @Y2, align 16
  %sub19 = fsub x86_fp80 %33, %34
  store x86_fp80 %sub19, ptr @R, align 16
  %35 = load x86_fp80, ptr @Y1, align 16
  %sub20 = fsub x86_fp80 %35, 0xK3FFE8000000000000000
  store x86_fp80 %sub20, ptr @Y1, align 16
  store x86_fp80 0xK4003F000000000000000, ptr @Z, align 16
  call void @exit(i32 noundef 0) #2
  unreachable
}

; Function Attrs: noreturn
declare void @exit(i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 21.0.0git (https://github.com/llvm/llvm-project.git 6eb32a2fa0d16bea03f22dd2078f53da6d9352cd)"}
