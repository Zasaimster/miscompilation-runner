; 190122631679567464474012497928315616543
; ModuleID = '/mnt/ramtmp/optims/DCE.cpp/target/190122631679567464474012497928315616543_O0.ll'
source_filename = "/mnt/ramtmp/optims/DCE.cpp/target/190122631679567464474012497928315616543.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"%d, %d\0A\00", align 1

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
  %y = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 0, ptr %a, align 4
  store i32 34, ptr %b, align 4
  store i32 56, ptr %c, align 4
  store i32 78, ptr %d, align 4
  store i32 0, ptr %e, align 4
  store i32 1, ptr %f, align 4
  %0 = load i32, ptr %c, align 4
  %1 = load i32, ptr %d, align 4
  %add = add nsw i32 %0, %1
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %add)
  %2 = load i32, ptr %c, align 4
  %3 = load i32, ptr %d, align 4
  %add1 = add nsw i32 %2, %3
  store i32 %add1, ptr %y, align 4
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %add1)
  %4 = load i32, ptr %e, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %5 = load i32, ptr %e, align 4
  %tobool3 = icmp ne i32 %5, 0
  br i1 %tobool3, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.rhs
  %6 = load i32, ptr %f, align 4
  %tobool4 = icmp ne i32 %6, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %7 = phi i1 [ false, %lor.rhs ], [ %tobool4, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %entry
  %8 = phi i1 [ true, %entry ], [ %7, %land.end ]
  %lor.ext = zext i1 %8 to i32
  %call5 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %lor.ext)
  %9 = load i32, ptr %e, align 4
  %tobool6 = icmp ne i32 %9, 0
  br i1 %tobool6, label %lor.end12, label %lor.rhs7

lor.rhs7:                                         ; preds = %lor.end
  %10 = load i32, ptr %f, align 4
  %tobool8 = icmp ne i32 %10, 0
  br i1 %tobool8, label %land.rhs9, label %land.end11

land.rhs9:                                        ; preds = %lor.rhs7
  %11 = load i32, ptr %f, align 4
  %tobool10 = icmp ne i32 %11, 0
  br label %land.end11

land.end11:                                       ; preds = %land.rhs9, %lor.rhs7
  %12 = phi i1 [ false, %lor.rhs7 ], [ %tobool10, %land.rhs9 ]
  br label %lor.end12

lor.end12:                                        ; preds = %land.end11, %lor.end
  %13 = phi i1 [ true, %lor.end ], [ %12, %land.end11 ]
  %lor.ext13 = zext i1 %13 to i32
  %call14 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %lor.ext13)
  %14 = load i32, ptr %e, align 4
  %tobool15 = icmp ne i32 %14, 0
  br i1 %tobool15, label %land.lhs.true, label %lor.rhs17

land.lhs.true:                                    ; preds = %lor.end12
  %15 = load i32, ptr %e, align 4
  %tobool16 = icmp ne i32 %15, 0
  br i1 %tobool16, label %lor.end19, label %lor.rhs17

lor.rhs17:                                        ; preds = %land.lhs.true, %lor.end12
  %16 = load i32, ptr %f, align 4
  %tobool18 = icmp ne i32 %16, 0
  br label %lor.end19

lor.end19:                                        ; preds = %lor.rhs17, %land.lhs.true
  %17 = phi i1 [ true, %land.lhs.true ], [ %tobool18, %lor.rhs17 ]
  %lor.ext20 = zext i1 %17 to i32
  %call21 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %lor.ext20)
  %18 = load i32, ptr %e, align 4
  %tobool22 = icmp ne i32 %18, 0
  br i1 %tobool22, label %land.lhs.true23, label %lor.rhs25

land.lhs.true23:                                  ; preds = %lor.end19
  %19 = load i32, ptr %f, align 4
  %tobool24 = icmp ne i32 %19, 0
  br i1 %tobool24, label %lor.end27, label %lor.rhs25

lor.rhs25:                                        ; preds = %land.lhs.true23, %lor.end19
  %20 = load i32, ptr %f, align 4
  %tobool26 = icmp ne i32 %20, 0
  br label %lor.end27

lor.end27:                                        ; preds = %lor.rhs25, %land.lhs.true23
  %21 = phi i1 [ true, %land.lhs.true23 ], [ %tobool26, %lor.rhs25 ]
  %lor.ext28 = zext i1 %21 to i32
  %call29 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %lor.ext28)
  %22 = load i32, ptr %a, align 4
  %tobool30 = icmp ne i32 %22, 0
  br i1 %tobool30, label %land.rhs31, label %land.end33

land.rhs31:                                       ; preds = %lor.end27
  %23 = load i32, ptr %f, align 4
  %24 = load i32, ptr %f, align 4
  %or = or i32 %23, %24
  %tobool32 = icmp ne i32 %or, 0
  br label %land.end33

land.end33:                                       ; preds = %land.rhs31, %lor.end27
  %25 = phi i1 [ false, %lor.end27 ], [ %tobool32, %land.rhs31 ]
  %land.ext = zext i1 %25 to i32
  %call34 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %land.ext)
  %26 = load i32, ptr %a, align 4
  %27 = load i32, ptr %b, align 4
  %28 = load i32, ptr %c, align 4
  %29 = load i32, ptr %d, align 4
  %and = and i32 %28, %29
  %xor = xor i32 %27, %and
  %or35 = or i32 %26, %xor
  %call36 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %or35)
  %30 = load i32, ptr %a, align 4
  %31 = load i32, ptr %a, align 4
  %cmp = icmp eq i32 %30, %31
  %conv = zext i1 %cmp to i32
  %32 = load i32, ptr %a, align 4
  %33 = load i32, ptr %b, align 4
  %cmp37 = icmp eq i32 %32, %33
  %conv38 = zext i1 %cmp37 to i32
  %call39 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %conv, i32 noundef %conv38)
  %34 = load i32, ptr %a, align 4
  %35 = load i32, ptr %a, align 4
  %cmp40 = icmp ne i32 %34, %35
  %conv41 = zext i1 %cmp40 to i32
  %36 = load i32, ptr %a, align 4
  %37 = load i32, ptr %b, align 4
  %cmp42 = icmp ne i32 %36, %37
  %conv43 = zext i1 %cmp42 to i32
  %call44 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %conv41, i32 noundef %conv43)
  %38 = load i32, ptr %a, align 4
  %39 = load i32, ptr %b, align 4
  %cmp45 = icmp ne i32 %38, %39
  br i1 %cmp45, label %land.rhs47, label %land.end50

land.rhs47:                                       ; preds = %land.end33
  %40 = load i32, ptr %c, align 4
  %41 = load i32, ptr %d, align 4
  %cmp48 = icmp ne i32 %40, %41
  br label %land.end50

land.end50:                                       ; preds = %land.rhs47, %land.end33
  %42 = phi i1 [ false, %land.end33 ], [ %cmp48, %land.rhs47 ]
  %land.ext51 = zext i1 %42 to i32
  %call52 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %land.ext51)
  %43 = load i32, ptr %a, align 4
  %44 = load i32, ptr %b, align 4
  %45 = load i32, ptr %c, align 4
  %mul = mul nsw i32 %44, %45
  %46 = load i32, ptr %f, align 4
  %div = sdiv i32 %mul, %46
  %add53 = add nsw i32 %43, %div
  %call54 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %add53)
  %47 = load i32, ptr %a, align 4
  %48 = load i32, ptr %b, align 4
  %49 = load i32, ptr %c, align 4
  %mul55 = mul nsw i32 %48, %49
  %50 = load i32, ptr %f, align 4
  %div56 = sdiv i32 %mul55, %50
  %add57 = add nsw i32 %47, %div56
  %call58 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %add57)
  %call59 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef 64)
  %call60 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef 4)
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
