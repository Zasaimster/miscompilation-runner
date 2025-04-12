; 117193727194934244791409550933703562514
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/117193727194934244791409550933703562514.c'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/117193727194934244791409550933703562514.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [32 x i8] c"This function is never called.\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"%d, %d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  %e = alloca i32, align 4
  %f = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  store i32 %call, ptr %a, align 4
  store i32 34, ptr %b, align 4
  store i32 56, ptr %c, align 4
  store i32 78, ptr %d, align 4
  store i32 0, ptr %e, align 4
  store i32 1, ptr %f, align 4
  %0 = load i32, ptr %c, align 4
  %1 = load i32, ptr %d, align 4
  %add = add nsw i32 %0, %1
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %add)
  %2 = load i32, ptr %c, align 4
  %3 = load i32, ptr %d, align 4
  %add2 = add nsw i32 %2, %3
  store i32 %add2, ptr %y, align 4
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %add2)
  %4 = load i32, ptr %e, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %5 = load i32, ptr %e, align 4
  %tobool4 = icmp ne i32 %5, 0
  br i1 %tobool4, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.rhs
  %6 = load i32, ptr %f, align 4
  %tobool5 = icmp ne i32 %6, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %7 = phi i1 [ false, %lor.rhs ], [ %tobool5, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %entry
  %8 = phi i1 [ true, %entry ], [ %7, %land.end ]
  %lor.ext = zext i1 %8 to i32
  %call6 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %lor.ext)
  %9 = load i32, ptr %e, align 4
  %tobool7 = icmp ne i32 %9, 0
  br i1 %tobool7, label %lor.end13, label %lor.rhs8

lor.rhs8:                                         ; preds = %lor.end
  %10 = load i32, ptr %f, align 4
  %tobool9 = icmp ne i32 %10, 0
  br i1 %tobool9, label %land.rhs10, label %land.end12

land.rhs10:                                       ; preds = %lor.rhs8
  %11 = load i32, ptr %f, align 4
  %tobool11 = icmp ne i32 %11, 0
  br label %land.end12

land.end12:                                       ; preds = %land.rhs10, %lor.rhs8
  %12 = phi i1 [ false, %lor.rhs8 ], [ %tobool11, %land.rhs10 ]
  br label %lor.end13

lor.end13:                                        ; preds = %land.end12, %lor.end
  %13 = phi i1 [ true, %lor.end ], [ %12, %land.end12 ]
  %lor.ext14 = zext i1 %13 to i32
  %call15 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %lor.ext14)
  %14 = load i32, ptr %e, align 4
  %tobool16 = icmp ne i32 %14, 0
  br i1 %tobool16, label %land.lhs.true, label %lor.rhs18

land.lhs.true:                                    ; preds = %lor.end13
  %15 = load i32, ptr %e, align 4
  %tobool17 = icmp ne i32 %15, 0
  br i1 %tobool17, label %lor.end20, label %lor.rhs18

lor.rhs18:                                        ; preds = %land.lhs.true, %lor.end13
  %16 = load i32, ptr %f, align 4
  %tobool19 = icmp ne i32 %16, 0
  br label %lor.end20

lor.end20:                                        ; preds = %lor.rhs18, %land.lhs.true
  %17 = phi i1 [ true, %land.lhs.true ], [ %tobool19, %lor.rhs18 ]
  %lor.ext21 = zext i1 %17 to i32
  %call22 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %lor.ext21)
  %18 = load i32, ptr %e, align 4
  %tobool23 = icmp ne i32 %18, 0
  br i1 %tobool23, label %land.lhs.true24, label %lor.rhs26

land.lhs.true24:                                  ; preds = %lor.end20
  %19 = load i32, ptr %f, align 4
  %tobool25 = icmp ne i32 %19, 0
  br i1 %tobool25, label %lor.end28, label %lor.rhs26

lor.rhs26:                                        ; preds = %land.lhs.true24, %lor.end20
  %20 = load i32, ptr %f, align 4
  %tobool27 = icmp ne i32 %20, 0
  br label %lor.end28

lor.end28:                                        ; preds = %lor.rhs26, %land.lhs.true24
  %21 = phi i1 [ true, %land.lhs.true24 ], [ %tobool27, %lor.rhs26 ]
  %lor.ext29 = zext i1 %21 to i32
  %call30 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %lor.ext29)
  %22 = load i32, ptr %a, align 4
  %tobool31 = icmp ne i32 %22, 0
  br i1 %tobool31, label %land.rhs32, label %land.end34

land.rhs32:                                       ; preds = %lor.end28
  %23 = load i32, ptr %f, align 4
  %24 = load i32, ptr %f, align 4
  %or = or i32 %23, %24
  %tobool33 = icmp ne i32 %or, 0
  br label %land.end34

land.end34:                                       ; preds = %land.rhs32, %lor.end28
  %25 = phi i1 [ false, %lor.end28 ], [ %tobool33, %land.rhs32 ]
  %land.ext = zext i1 %25 to i32
  %call35 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %land.ext)
  %26 = load i32, ptr %a, align 4
  %27 = load i32, ptr %b, align 4
  %28 = load i32, ptr %c, align 4
  %29 = load i32, ptr %d, align 4
  %and = and i32 %28, %29
  %xor = xor i32 %27, %and
  %or36 = or i32 %26, %xor
  %call37 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %or36)
  %30 = load i32, ptr %a, align 4
  %31 = load i32, ptr %a, align 4
  %cmp = icmp eq i32 %30, %31
  %conv = zext i1 %cmp to i32
  %32 = load i32, ptr %a, align 4
  %33 = load i32, ptr %b, align 4
  %cmp38 = icmp eq i32 %32, %33
  %conv39 = zext i1 %cmp38 to i32
  %call40 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %conv, i32 noundef %conv39)
  %34 = load i32, ptr %a, align 4
  %35 = load i32, ptr %a, align 4
  %cmp41 = icmp ne i32 %34, %35
  %conv42 = zext i1 %cmp41 to i32
  %36 = load i32, ptr %a, align 4
  %37 = load i32, ptr %b, align 4
  %cmp43 = icmp ne i32 %36, %37
  %conv44 = zext i1 %cmp43 to i32
  %call45 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %conv42, i32 noundef %conv44)
  %38 = load i32, ptr %a, align 4
  %39 = load i32, ptr %b, align 4
  %cmp46 = icmp ne i32 %38, %39
  br i1 %cmp46, label %land.rhs48, label %land.end51

land.rhs48:                                       ; preds = %land.end34
  %40 = load i32, ptr %c, align 4
  %41 = load i32, ptr %d, align 4
  %cmp49 = icmp ne i32 %40, %41
  br label %land.end51

land.end51:                                       ; preds = %land.rhs48, %land.end34
  %42 = phi i1 [ false, %land.end34 ], [ %cmp49, %land.rhs48 ]
  %land.ext52 = zext i1 %42 to i32
  %call53 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %land.ext52)
  %43 = load i32, ptr %a, align 4
  %44 = load i32, ptr %b, align 4
  %45 = load i32, ptr %c, align 4
  %mul = mul nsw i32 %44, %45
  %46 = load i32, ptr %f, align 4
  %div = sdiv i32 %mul, %46
  %add54 = add nsw i32 %43, %div
  %call55 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %add54)
  %47 = load i32, ptr %a, align 4
  %48 = load i32, ptr %b, align 4
  %49 = load i32, ptr %c, align 4
  %mul56 = mul nsw i32 %48, %49
  %50 = load i32, ptr %f, align 4
  %div57 = sdiv i32 %mul56, %50
  %add58 = add nsw i32 %47, %div57
  %call59 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %add58)
  %call60 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef 64)
  %call61 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef 4)
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
